import 'dart:convert';
import 'package:moviedb_app/models/popular_movie_model.dart';
import 'package:http/http.dart' as http;

class NowShowingService {
  String ApiKey = 'fa5c5e6660eeea81aa868f4089388592';
  String base_url = 'https://api.themoviedb.org/3/movie';

  Future<List<PopularMovieModel>> getMovieShowing() async {
    var url = Uri.parse('$base_url/now_playing?api_key=$ApiKey');
    var headers = {'content-type': 'application/json'};
    var response = await http.get(url, headers: headers);
    print(response.statusCode);

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body)['results'];
      List<PopularMovieModel> popularMovie = [];
      for (var items in data) {
        popularMovie.add(PopularMovieModel.fromJson(items));
      }
      print('=====service now showing movie====');
      print(popularMovie);
      // var popularmovie = data.map((data) => PopularMovieModel.fromJson(data)).toList();
      // print(popularmovie);
      return popularMovie;
    } else {
      throw Exception('Gagal get service Movie');
    }
  }
}
