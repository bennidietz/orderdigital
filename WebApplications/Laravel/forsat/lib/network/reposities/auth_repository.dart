import 'package:flutter/foundation.dart';

abstract class AuthRepository {

  Future signIn({
    @required String email,
    @required String password
  });

}

class AuthReposityImpl implements AuthRepository {
  @override
  Future signIn({String email, String password}) {
    // TODO: implement signIn
    throw UnimplementedError();
  }

}