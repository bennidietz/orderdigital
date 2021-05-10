import 'package:flutter/material.dart';
import 'package:forsat/network/reposities/auth_repository.dart';
import 'package:forsat/network/state/auth_state.dart';
import 'package:forsat/network/storage/local_storage.dart';
import 'package:forsat/network/storage/storage_keys.dart';
import 'package:forsat/res/colors.dart';
import 'package:forsat/router/router.dart' as my_router;
import 'package:forsat/router/router_constants.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // ensure the app is initialized
  LocalStorage.initializeSharedPreferences();
  runApp(Forsat());
}

class Forsat extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Injector(
        inject: [
          Inject<AuthState>(() => AuthState(AuthReposityImpl()))
        ],
        builder: (context) {
          return MaterialApp(
            title: 'Forsat',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: MyColors.primaryColor,
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            onGenerateRoute: my_router.Router.onGenerateRoute,
            initialRoute:
              LocalStorage.getItem(TOKEN) != null ? homeRoute : signInRoute,
          );
        }
    );
  }
}