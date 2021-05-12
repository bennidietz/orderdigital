import 'package:flutter/material.dart';
import 'package:forsat/network/reposities/auth_repository.dart';
import 'package:forsat/network/reposities/opportunity_repository.dart';
import 'package:forsat/network/state/auth_state.dart';
import 'package:forsat/network/state/opportunity_state.dart';
import 'package:forsat/network/storage/local_storage.dart';
import 'package:forsat/network/storage/storage_keys.dart';
import 'package:forsat/res/colors.dart';
import 'package:forsat/router/router.dart' as my_router;
import 'package:forsat/router/router_constants.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // ensure the app is initialized
  await LocalStorage.initializeSharedPreferences();
  runApp(Forsat());
}

class Forsat extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Injector(
        inject: [
          // lazy instantialtion -> instantiated once used for the first time
          Inject<AuthState>(() => AuthState(AuthReposityImpl())),
          Inject<OpportunityState>(() => OpportunityState(OpportunityRepositoryImpl())),
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