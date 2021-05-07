import 'package:forsat/network/classes/common_error.dart';

class SignUpFormModel {

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

  bool validateEmail(String email) {
    return RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+.[a-zA-Z]+"
    ).hasMatch(email);
  }

  bool validatePassword(String password) {
    return password.length > 6;
  }

  bool validateName(String name) {
    return name.length > 2;
  }

  bool validateData() {
    return this.email != null && this.password != null
        && validateEmail(email) && validatePassword(password);
  }
}