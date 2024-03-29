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
          final String id = state.pathParameters['id'].toString();
          return Details(id: id);
        }),
  ],
);
