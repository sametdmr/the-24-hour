// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const LoginView(),
      );
    },
    SignUpRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SignUpView(),
      );
    },
    DummyLoggedInRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const DummyLoggedInView(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          LoginRoute.name,
          path: '/',
        ),
        RouteConfig(
          SignUpRoute.name,
          path: '/sign-up-view',
        ),
        RouteConfig(
          DummyLoggedInRoute.name,
          path: '/dummy-logged-in-view',
        ),
      ];
}

/// generated route for
/// [LoginView]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [SignUpView]
class SignUpRoute extends PageRouteInfo<void> {
  const SignUpRoute()
      : super(
          SignUpRoute.name,
          path: '/sign-up-view',
        );

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [DummyLoggedInView]
class DummyLoggedInRoute extends PageRouteInfo<void> {
  const DummyLoggedInRoute()
      : super(
          DummyLoggedInRoute.name,
          path: '/dummy-logged-in-view',
        );

  static const String name = 'DummyLoggedInRoute';
}
