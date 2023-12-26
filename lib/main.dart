import 'package:flutter/material.dart';
import 'package:moviedb_app/provider/artist_popular_provider.dart';
import 'package:moviedb_app/provider/now_showing_provider.dart';
import 'package:moviedb_app/provider/popular_movie_provider.dart';
import 'package:moviedb_app/screens/auth_page/login_page.dart';
import 'package:moviedb_app/screens/auth_page/register_page.dart';
import 'package:moviedb_app/screens/auth_page/splash_page.dart';
import 'package:moviedb_app/screens/home/main_home.dart';
import 'package:moviedb_app/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PopularMovieProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => NowShowingProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ArtisProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).themeData,
      routes: {
        '/': (context) => SplashPage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/home': (context) => MainHomePage(),
      },
    );
  }
}
