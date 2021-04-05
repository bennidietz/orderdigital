package com.gls.ownchatapp

import android.content.Intent
import android.net.Uri
import android.os.Bundle
import android.text.Editable
import android.text.InputFilter
import android.text.TextWatcher
import android.util.Log
import android.view.Menu
import android.view.MenuInflater
import android.widget.*
import androidx.appcompat.app.AppCompatActivity
import com.firebase.ui.auth.AuthUI
import com.google.android.gms.tasks.Task
import com.google.firebase.FirebaseApp
import com.google.firebase.auth.FirebaseAuth
import com.google.firebase.database.*
import com.google.firebase.remoteconfig.FirebaseRemoteConfig
import com.google.firebase.remoteconfig.FirebaseRemoteConfigSettings
import com.google.firebase.storage.FirebaseStorage
import com.google.firebase.storage.StorageReference
import kotlinx.android.synthetic.main.activity_main.*
import java.util.*


class MainActivity : AppCompatActivity() {

    lateinit var firebaseDatabase: FirebaseDatabase
    lateinit var messageDatabaseReference: DatabaseReference
    private var childEventListener: ChildEventListener? = null
    lateinit var firebaceRemoteConfig: FirebaseRemoteConfig

    lateinit var mMessageAdapter: MessageAdapter
    lateinit var mUsername: String
    lateinit var firebaseAuth: FirebaseAuth
    private var authStateListener: FirebaseAuth.AuthStateListener? = null
    lateinit var firebaseStorage: FirebaseStorage
    lateinit var chatStorageReference: StorageReference

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        mUsername = ANONYMOUS
        FirebaseApp.initializeApp(this)
        firebaseAuth = FirebaseAuth.getInstance()
        firebaseDatabase = FirebaseDatabase.getInstance()
        firebaseStorage = FirebaseStorage.getInstance()
        firebaceRemoteConfig = FirebaseRemoteConfig.getInstance()
        messageDatabaseReference = firebaseDatabase.reference.child("messages")
        chatStorageReference = firebaseStorage.reference.child("chat_photos")

        // Initialize message ListView and its adapter
        val friendlyMessages: List<FriendlyMessage> = ArrayList<FriendlyMessage>()
        mMessageAdapter = MessageAdapter(this, R.layout.item_message, friendlyMessages)
        messageListView.adapter = mMessageAdapter

        // Initialize progress bar
        progressBar.visibility = ProgressBar.INVISIBLE

        // ImagePickerButton shows an image picker to upload a image for a message
        photoPickerButton.setOnClickListener {
            val intent = Intent(Intent.ACTION_GET_CONTENT)
            intent.type = "image/jpeg"
            intent.putExtra(Intent.EXTRA_LOCAL_ONLY, true)
            startActivityForResult(
                Intent.createChooser(intent, "Complete action using"),
                RC_PHOTO_PICKER
            )
        }


        // Enable Send button when there's text to send
        messageEditText.addTextChangedListener(object : TextWatcher {
            override fun beforeTextChanged(charSequence: CharSequence, i: Int, i1: Int, i2: Int) {}
            override fun onTextChanged(charSequence: CharSequence, i: Int, i1: Int, i2: Int) {
                sendButton.isEnabled = charSequence.toString().trim { it <= ' ' }.isNotEmpty()
            }

            override fun afterTextChanged(editable: Editable) {}
        })
        messageEditText.filters = arrayOf<InputFilter>(
            InputFilter.LengthFilter(
                DEFAULT_MSG_LENGTH_LIMIT
            )
        )

        // Send button sends a message and clears the EditText
        sendButton.setOnClickListener {
            val friendlyMessages = FriendlyMessage(messageEditText.text.toString(), mUsername, null)
            messageDatabaseReference.push().setValue(friendlyMessages)
            // Clear input box
            messageEditText.setText("")
        }

        logoutBtn.setOnClickListener {
            AuthUI.getInstance().signOut(this)
        }

        authStateListener = FirebaseAuth.AuthStateListener {
            // onAuthStateChanged here...
            val user = it.currentUser
            if (user != null) {
                // user is signed in
                onSignedInInitialize(user.displayName)
                Toast.makeText(this, getString(R.string.signed_in_message), Toast.LENGTH_SHORT).show()
            } else {
                // user is signed out
                onSignedOutCleanup()
                startActivityForResult(
                    AuthUI.getInstance()
                        .createSignInIntentBuilder()
                        .setIsSmartLockEnabled(false) // remember user's creadentials or not
                        .setAvailableProviders(
                            listOf(
                                AuthUI.IdpConfig.GoogleBuilder().build(),
                                AuthUI.IdpConfig.EmailBuilder().build(),
                                //AnonymousBuilder().build()
                            )
                        )
                        .build(),
                    RC_SIGN_IN
                )
            }
        }

        val configSettings = FirebaseRemoteConfigSettings.Builder().build()
        firebaceRemoteConfig.setConfigSettingsAsync(configSettings)
        val defaultConfigMap = mapOf(
            FRIENDLY_MSG_LENGTH_KEY to DEFAULT_MSG_LENGTH_LIMIT
        )
        firebaceRemoteConfig.setDefaultsAsync(defaultConfigMap)
        fetchConfig()
    }

    private fun fetchConfig() {
        val catcheExpiration = 3600L
        firebaceRemoteConfig.fetch(catcheExpiration)
        .addOnSuccessListener {
            firebaceRemoteConfig.fetchAndActivate()
            applyRetrievedLengthLimit()
        }.addOnFailureListener {
            Log.w(TAG, "Error fetching config", it)
            applyRetrievedLengthLimit()
        }
    }

    private fun applyRetrievedLengthLimit() {
        val freindly_msg_length = firebaceRemoteConfig.getLong(FRIENDLY_MSG_LENGTH_KEY)
        messageEditText.filters = arrayOf( InputFilter.LengthFilter(freindly_msg_length.toInt()) )
        Log.d(TAG, "$FRIENDLY_MSG_LENGTH_KEY = $freindly_msg_length")
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        super.onActivityResult(requestCode, resultCode, data)
        if (requestCode == RC_SIGN_IN) {
            if (resultCode == RESULT_OK) {
                Toast.makeText(this, "Signed in!", Toast.LENGTH_SHORT).show()
            } else if (resultCode == RESULT_CANCELED) {
                Toast.makeText(this, "Sign in canceled!", Toast.LENGTH_SHORT).show()
                finish()
            }
        } else if (requestCode == RC_PHOTO_PICKER && resultCode == RESULT_OK) {
            data?.data?.let { selectedImageUri ->
                selectedImageUri.lastPathSegment?.let {
                    val photoRef = chatStorageReference.child(it)
                    photoRef.putFile(selectedImageUri).addOnSuccessListener { taskSnapshot ->
                        val result: Task<Uri>? = taskSnapshot.metadata?.reference?.downloadUrl
                        result?.addOnSuccessListener { uri ->
                            //UploadTask.TaskSnapshot
                            val friendlyMessage = FriendlyMessage(null, mUsername, uri.toString())
                            messageDatabaseReference.push().setValue(friendlyMessage)
                        }
                    }
                }
            }
        }
    }

    private fun onSignedInInitialize(userName: String?) {
        userName?.let { mUsername = userName }
        attachDatabaseReadListener()
    }

    private fun attachDatabaseReadListener() {
        if (childEventListener == null) {
            childEventListener = object: ChildEventListener {
                override fun onChildAdded(snapshot: DataSnapshot, previousChildName: String?) {
                    val friendlyMessage = snapshot.getValue(FriendlyMessage::class.java)
                    mMessageAdapter.add(friendlyMessage)
                }
                override fun onChildChanged(snapshot: DataSnapshot, previousChildName: String?) {}
                override fun onChildRemoved(snapshot: DataSnapshot) {}
                override fun onChildMoved(snapshot: DataSnapshot, previousChildName: String?) {}
                override fun onCancelled(error: DatabaseError) {}
            }
            messageDatabaseReference.addChildEventListener(childEventListener!!)
        }
    }

    private fun detachDatabaseReadListener() {
        childEventListener?.let {
            messageDatabaseReference.removeEventListener(it)
            childEventListener = null
        }
    }

    private fun onSignedOutCleanup() {
        mUsername = ANONYMOUS
        mMessageAdapter.clear()
        detachDatabaseReadListener()
    }

    override fun onResume() {
        super.onResume()
        firebaseAuth.addAuthStateListener(authStateListener)
    }

    override fun onPause() {
        super.onPause()
        if (authStateListener != null) {
            firebaseAuth.removeAuthStateListener(authStateListener)
        }
        detachDatabaseReadListener()
        mMessageAdapter.clear()
    }

    override fun onCreateOptionsMenu(menu: Menu?): Boolean {
        val inflater: MenuInflater = menuInflater
        inflater.inflate(R.menu.main_menu, menu)
        return true
    }

    companion object {
        private const val TAG = "MainActivity"
        const val ANONYMOUS = "anonymous"
        const val DEFAULT_MSG_LENGTH_LIMIT = 1000
        const val FRIENDLY_MSG_LENGTH_KEY = "friendly_msg_length"
        const val RC_SIGN_IN = 1
        const val RC_PHOTO_PICKER = 2
    }
}