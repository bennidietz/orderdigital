import 'package:forsat/network/classes/common_error.dart';
import 'package:forsat/network/classes/common_error.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class SignInFormModel {

  //final AuthState _authState = Injector.get<AuthState>();

  String email;
  String password;

  void setEmail(String email) {
    // valid email
    if (!validateEmail(email)) throw CommonError(message: "Invalid email");
    this.email = email;
  }

  void setPassword(String password) {
    // valid email
    if (!validatePassword(password)) throw CommonError(
        message: "Password length must be more than 6 characters"
    );
    this.password = password;
  }

  bool validateEmail(String email) {
    return RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+.[a-zA-Z]+"
    ).hasMatch(email);
  }

  bool validatePassword(String password) {
    return password.length > 6;
  }

  bool validateData() {
    return this.email != null && this.password != null
        && validateEmail(email) && validatePassword(password);
  }

  signInUser() {
    // authenticate
  }
}