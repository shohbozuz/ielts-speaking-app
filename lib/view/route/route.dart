import 'package:flutter/material.dart';
import 'package:ielts_speaking/main.dart';
import 'package:ielts_speaking/view/home/bookmarks.dart';
import 'package:ielts_speaking/view/home/home.dart';
import 'package:ielts_speaking/view/home/part1/part1.dart';
import 'package:ielts_speaking/view/home/part2/part2.dart';
import 'package:ielts_speaking/view/home/part3/part3.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ielts_speaking/data/bloc/part1/part1_bloc.dart';
import 'package:ielts_speaking/data/bloc/part2/part2_bloc.dart';
import 'package:ielts_speaking/data/bloc/part3/part3_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';


class RouteGenerator {
  static final RouteGenerator _generator = RouteGenerator._init();

  static RouteGenerator get router => _generator;

  RouteGenerator._init();
    
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) {
            return FutureBuilder<SharedPreferences>(
              future: SharedPreferences.getInstance(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final String? accessToken =
                      snapshot.data!.getString('accessToken');
                  if (accessToken != null) {
                    return const Home();
                  }
                }
                return LoginPage();
              },
            );
          },
        );
      case '/part1':
        return navigate(
          BlocProvider(
            create: (context) => Part1Bloc(),
            child: const part1(),
          ),
        ); // Assuming LoginPage is defined elsewhere
      case '/part2':
        return navigate(
          BlocProvider(
            create: (context) => Part2Bloc(),
            child: const part2(),
          ),
        );
      case '/part3':
        return navigate(
          BlocProvider(
            create: (context) => Part3Bloc(),
            child: const part3(),
          ),
        );
      case '/bookmarks':
        return navigate(
            const bookmarks()
        ); // Assuming RegisterPage is defined elsewhere
      default:
        return null;
    }
  }

  Route navigate(Widget widget) {
    return MaterialPageRoute(builder: (context) => widget);
  }
}
