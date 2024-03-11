import 'package:flutter/material.dart';
import 'package:ielts_speaking/data/color/color.dart';
import 'package:ielts_speaking/view/home/bookmarks.dart';
import 'package:go_router/go_router.dart';
import 'package:ielts_speaking/view/home/home.dart';
import 'package:ielts_speaking/view/home/part1.dart';
import 'package:ielts_speaking/view/home/part2.dart';
import 'package:ielts_speaking/view/home/part3.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const Home();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'part1',
          builder: (BuildContext context, GoRouterState state) {
            return const part1();
          },
        ),
        GoRoute(
          path: 'part2',
          builder: (BuildContext context, GoRouterState state) {
            return const part2();
          },
        ),
        GoRoute(
          path: 'part3',
          builder: (BuildContext context, GoRouterState state) {
            return const part3();
          },
        ),
        GoRoute(
          path: 'bookmarks',
          builder: (BuildContext context, GoRouterState state) {
            return const bookmarks();
          },
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: AppColors.appbarTheme),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}





