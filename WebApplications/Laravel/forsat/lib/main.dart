import 'package:flutter/material.dart';
import 'package:forsat/presentation/opportunities/opportunities_page.dart';
import 'package:forsat/res/colors.dart';
import 'package:forsat/router/router.dart' as my_router;
import 'package:forsat/router/router_constants.dart';

void main() {
  runApp(Forsat());
}

class Forsat extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Forsat',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: MyColors.primaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: my_router.Router.onGenerateRoute,
      initialRoute: signInRoute,
      home: OpportunitiesPage(),
    );
  }
}