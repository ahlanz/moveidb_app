import 'package:flutter/material.dart';
import 'package:moviedb_app/provider/artist_popular_provider.dart';
import 'package:moviedb_app/provider/now_showing_provider.dart';
import 'package:moviedb_app/provider/popular_movie_provider.dart';
import 'package:moviedb_app/screens/auth_page/login_page.dart';
import 'package:moviedb_app/screens/detail_movie_page.dart/detail_movei_page.dart';
import 'package:moviedb_app/screens/home/main_home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PopularMovieProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => NowShowingProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ArtisProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => LoginPage(),
          '/home': (context) => MainHomePage(),
          '/detail-movie': (context) => DetailMoviePage(),
        },
      ),
    );
  }
}
