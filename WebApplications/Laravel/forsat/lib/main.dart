import 'package:flutter/material.dart';
import 'package:forsat/presentation/opportunities/opportunities_page.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: OpportunitiesPage(),
    );
  }
}