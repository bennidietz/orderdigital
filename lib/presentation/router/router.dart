import 'package:flutter/material.dart';
import 'package:orderdigital/presentation/pages/dashboard_subpage/page_category_details.dart';
import 'package:orderdigital/presentation/pages/page_choose_restaurant.dart';
import 'package:orderdigital/presentation/pages/page_not_found.dart';
import 'package:orderdigital/presentation/pages/page_restaurant_dashboard.dart';
import 'package:orderdigital/presentation/router/router_constants.dart';

class Router {
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case kRouteChooseRestaurant:
        return MaterialPageRoute(builder: (_) => const PageChooseRestaurant());
      case kRouteRestaurantDashboard:
        return MaterialPageRoute(
            builder: (_) => const PageRestaurantDashboard());
      case kRouteCategoryDetails:
        return MaterialPageRoute(
            settings: routeSettings, builder: (_) => PageCategoryDetails());
      default:
        return MaterialPageRoute(builder: (_) => PageNotFound());
    }
  }
}
