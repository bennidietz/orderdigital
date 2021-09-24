import 'package:flutter/material.dart';

class PageNotFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seite nicht gefunden'),
      ),
      body: Center(
        child: Text('Diese Seite wurde nicht gefunden'),
      ),
    );
  }
}
