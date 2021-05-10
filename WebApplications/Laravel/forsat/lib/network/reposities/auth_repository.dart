
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:forsat/network/classes/errors/common_error.dart';
import 'package:forsat/network/forsat_api.dart';
import 'package:forsat/network/storage/local_storage.dart';
import 'package:forsat/network/storage/storage_keys.dart';

abstract class AuthRepository {

  Future signIn({
    @required String email,
    @required String password
  });

  Future signUp({
    @required String firstName,
    @required String lastName,
    @required String email,
    @required String password,
    @required String passwordConfirmation,
  });

}

class AuthReposityImpl implements AuthRepository {
  @override
  Future signIn({String email, String password}) async {
    try {
      var response = await ForsatAPI.dio
          .post("/api/auth/login",
          data: {"email": email, "password": password});
      String accessToken = response.data['accessToken'];
      String expiresAt = response.data['expiresAt'];
      await LocalStorage.setItem(TOKEN, accessToken);
      await LocalStorage.setItem(TOKEN_EXPIRATION, expiresAt);
      return;
    } on DioError catch (e) {
      showNetworkError(e);
    }
  }

  @override
  Future signUp({
    String firstName,
    String lastName,
    String email,
    String password,
    String passwordConfirmation
  }) async {
    try {
      var response = await ForsatAPI.dio
          .post("/api/auth/register",
          data: {
            "first_name": firstName,
            "last_name": lastName,
            "email": email,
            "password": password,
            "password_confirmation": passwordConfirmation,
          },
      );
      print(response);
    } on DioError catch (e) {
      print(e.response);
    }
  }

}