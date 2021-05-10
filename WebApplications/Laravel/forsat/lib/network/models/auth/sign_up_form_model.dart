import 'package:forsat/network/classes/errors/common_error.dart';
import 'package:forsat/network/state/auth_state.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class SignUpFormModel {

  final AuthState _authState = Injector.get<AuthState>();

  String firstName;
  String lastName;
  String email;
  String password;
  String passwordConfirmation;

  void setEmail(String email) {
    // valid email
    if (!validateEmail(email)) throw CommonError(message: "Invalid email");
    this.email = email;
  }

  void setFirstName(String firstName) {
    // valid email
    if (!validateName(firstName)) throw CommonError(message: "Please fill in your first name");
    this.firstName = firstName;
  }

  void setLastName(String lastName) {
    // valid email
    if (!validateName(lastName)) throw CommonError(message: "Please fill in your last name");
    this.lastName = lastName;
  }

  void setPassword(String password) {
    // valid email
    if (!validatePassword(password)) throw CommonError(
        message: "Password length must be more than 6 characters"
    );
    this.password = password;
  }

  void confirmPassword(String validatedPassword) {
    // valid email
    if (this.password != validatedPassword) throw CommonError(
        message: "The passwords do not match"
    );
    this.passwordConfirmation = validatedPassword;
  }

  bool validateEmail(String email)
    => RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+.[a-zA-Z]+"
    ).hasMatch(email);

  bool validatePassword(String password) => password.length > 6;

  bool validateName(String name) => name.length > 2;

  bool validateData() {
    return this.firstName != null && this.lastName != null
        && this.email != null && this.password != null
        && validateEmail(email) && validatePassword(password)
        && this.passwordConfirmation != null
        && this.password == this.passwordConfirmation;
  }

  submitSignUp() async {
    await _authState.signUp(
      firstName: this.firstName,
      lastName: this.lastName,
      email: this.email,
      password: this.password,
      passwordConfirmation: this.passwordConfirmation
    );
  }
}