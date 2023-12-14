import 'package:flutter/material.dart';
import 'package:moviedb_app/models/popular_movie_model.dart';
import 'package:moviedb_app/service/now_showing_service.dart';

class NowShowingProvider extends ChangeNotifier {
  List<PopularMovieModel> _nowShowingMovie = [];
  NowShowingService nowShowingService = NowShowingService();

  List<PopularMovieModel> get nowShowingMovie => _nowShowingMovie;

  set nowShowingMovie(List<PopularMovieModel> nowShowingMovie) {
    _nowShowingMovie = nowShowingMovie;
  }

  Future<void> getMovieShowing() async {
    try {
      var nowShowingMovie = await nowShowingService.getMovieShowing();
      _nowShowingMovie = nowShowingMovie;
    
      // print(_nowShowingMovie[0].originalTitle);
      notifyListeners();
    } catch (e) {
      print('gagal get now playing movie');
    }
  }
}
