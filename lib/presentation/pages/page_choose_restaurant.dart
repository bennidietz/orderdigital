import 'package:flutter/material.dart';
import 'package:orderdigital/presentation/router/router_constants.dart';

class PageChooseRestaurant extends StatelessWidget {
  const PageChooseRestaurant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OrderDigital'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(
                    context,
                    kRouteRestaurantDashboard,
                  ),
                  child: const Text(
                    'Restaurant A',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
