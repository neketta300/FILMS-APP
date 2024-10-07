import 'package:flutter/material.dart';
import 'package:move_db/Theme/app_colors.dart';
import 'package:move_db/widgets/auth/auth_widgets.dart';
import 'package:move_db/widgets/main_screen/main_screen_widgets.dart';
import 'package:move_db/widgets/movie_details/movie_details_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              backgroundColor: AppColors.mainDarkBlue,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey),
          textSelectionTheme: const TextSelectionThemeData(
            cursorColor: Colors.black,
            selectionColor: AppColors.mainSelectionColors,
            selectionHandleColor: AppColors.mainLightBlue,
          ),
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
              backgroundColor: AppColors.mainDarkBlue,
              foregroundColor: Colors.white)),
      //home: const AuthWidgets(),

      routes: {
        '/': (context) => const AuthWidgets(),
        '/main_screen': (context) => const MainScreenWidgets(),
        '/main_screen/movie_details': (context) {
          final argumetns = ModalRoute.of(context)?.settings.arguments as int;
          if (argumetns is int) {
            return MovieDetailsWidget(
              movieId: argumetns,
            );
          } else {
            return const MovieDetailsWidget(
              movieId: 0,
            );
          }
        }
      },
      initialRoute: '/',
    );
  }
}
