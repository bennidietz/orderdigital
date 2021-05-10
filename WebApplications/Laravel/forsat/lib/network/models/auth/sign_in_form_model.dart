import 'package:forsat/network/classes/errors/common_error.dart';
import 'package:forsat/network/state/auth_state.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class SignInFormModel {

  final AuthState _authState = Injector.get<AuthState>();

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

  bool validateEmail(String email)
    => RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+.[a-zA-Z]+"
    ).hasMatch(email);

  bool validatePassword(String password) => password.length > 6;

  bool validateData()
    => this.email != null && this.password != null
        && validateEmail(email) && validatePassword(password);

  Future<void> signInUser() async {
    return await _authState.signIn(email: this.email, password: this.password);
    //10.0.2.2
    //0.0.0.0
    //192.168.2.133
  }
}