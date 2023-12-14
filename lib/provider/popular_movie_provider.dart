import 'package:flutter/material.dart';
import 'package:moviedb_app/models/popular_movie_model.dart';
import 'package:moviedb_app/service/movie_service.dart';

class PopularMovieProvider extends ChangeNotifier {
  List<PopularMovieModel> _popularMovie = [];
  MoviePopularService moviePopularService = MoviePopularService();

  List<PopularMovieModel> get popularMovie => _popularMovie;

  set popularMovie(List<PopularMovieModel> popularMovie) {
    _popularMovie = popularMovie;
  }

  Future<void> getMoviePopular() async {
    try {
      var popularMovie = await moviePopularService.getMoviePopular();
      _popularMovie = popularMovie;
      
      notifyListeners();
    } catch (e) {
      print('gagal get Popular movie');
    }
  }

}
