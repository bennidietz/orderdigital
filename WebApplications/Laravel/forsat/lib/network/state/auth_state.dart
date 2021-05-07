import 'package:flutter/foundation.dart';
import 'package:forsat/network/reposities/auth_repository.dart';

class AuthState {
  final AuthRepository _authRepository;

  AuthState(this._authRepository) : assert(_authRepository != null);

  Future signIn({
    @required String email,
    @required String password
  }) async => await _authRepository.signIn(email: email, password: password);

}