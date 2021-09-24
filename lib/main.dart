import 'package:flutter/material.dart';
import 'package:orderdigital/presentation/router/router.dart' as MyRouter;
import 'package:orderdigital/presentation/router/router_constants.dart';
import 'package:orderdigital/utils/constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OrderDigital',
      theme: ThemeData(
        primarySwatch: kColorPrimary,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: MyRouter.Router.onGenerateRoute,
      initialRoute: kRouteChooseRestaurant,
    );
  }
}
