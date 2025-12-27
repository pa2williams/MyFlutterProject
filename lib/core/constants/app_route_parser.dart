import 'package:flutter/material.dart';
import 'app_routes.dart';

class AppRouteParser extends RouteInformationParser<RouteSettings> {
  @override
  Future<RouteSettings> parseRouteInformation(
    RouteInformation routeInformation,
  ) async {
    // ignore: deprecated_member_use
    final uri = Uri.parse(routeInformation.location);

    if (uri.pathSegments.isEmpty) {
      return const RouteSettings(name: AppRoutes.home);
    }

    switch (uri.pathSegments.first) {
      case 'settings':
        return const RouteSettings(name: AppRoutes.settings);
      case 'profile':
        return const RouteSettings(name: AppRoutes.profile);
      case 'diary':
        return const RouteSettings(name: AppRoutes.diary);
      case 'financemenu':
        return const RouteSettings(name: AppRoutes.financemenu);
      default:
        return const RouteSettings(name: AppRoutes.home);
    }
  }

  @override
  RouteInformation? restoreRouteInformation(RouteSettings configuration) {
    return RouteInformation(location: configuration.name);
  }
}
