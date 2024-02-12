import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_baza/assets/constants/route_names/catalog.dart';
import 'package:i_baza/features/category/presentation/pages/category_screen.dart';

class CatalogRoute {
  static Route? onGenerateRoute(RouteSettings settings) {
    final String routeName = settings.name ?? '';


    switch (routeName) {
      case '/':
        return CupertinoPageRoute(builder: (context) => CategoryScreen());
      case CatalogRouteNames.catalog:
        return CupertinoPageRoute(builder: (context) => Scaffold());
      default:
  }
}
}

