
import 'package:flutter/foundation.dart';
import 'package:forsat/network/forsat_api.dart';

abstract class AuthRepository {

  Future signIn({
    @required String email,
    @required String password
  });

}

class AuthReposityImpl implements AuthRepository {
  @override
  Future signIn({String email, String password}) async {
    var response = await ForsatAPI.dio
        .post("/api/auth/login",
        data: {"email": email, "password": password});
    print(response);
  }

}