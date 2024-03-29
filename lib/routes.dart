import 'package:deeplink_flutter/blue.dart';
import 'package:deeplink_flutter/main.dart';
import 'package:deeplink_flutter/red.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
        path: '/',
        builder: (context, state) {
          return const Home();
        }),
    GoRoute(
        path: '/red',
        builder: (context, state) {
          return const RedClass();
        }),
    GoRoute(
        path: '/blue',
        builder: (context, state) {
          return const BlueClass();
        }),
    GoRoute(
        path: '/details/:id',
        name: "details",
        builder: (context, state) {
          return Details(id: state.pathParameters['id'] as int);
        }),
  ],
);
