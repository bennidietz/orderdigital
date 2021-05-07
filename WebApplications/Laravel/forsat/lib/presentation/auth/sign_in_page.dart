import 'package:flutter/material.dart';
import 'package:forsat/res/images.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        brightness: Brightness.light, // for iOS: to make the symbols visible
        automaticallyImplyLeading: false,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView( // Scrollable
          children: [
            Container(
              height: 150,
              child: Center(
                child: Image.asset(MyImages.logo_solid),
              ),
            ),
            buildSizedBox(30),
            TextFormField(
              decoration: InputDecoration(
                hintText: "My email",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                prefixIcon: Icon(Icons.email)
              ),
            ),
            buildSizedBox(20),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "My passwort",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  prefixIcon: Icon(Icons.lock)
              ),
            ),
            buildSizedBox(35),
            MaterialButton(
              shape: StadiumBorder(),
              height: 60,
              color: Theme.of(context).primaryColor,
              child: Center(child: Text(
                "Sign In",
                style: TextStyle(fontSize: 18, color: Colors.white),
              )),
              onPressed: () {}
            ),
            buildSizedBox(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an accoount?"),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Sign up",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  SizedBox buildSizedBox(double height) {
    return SizedBox(height: height,);
  }
}
