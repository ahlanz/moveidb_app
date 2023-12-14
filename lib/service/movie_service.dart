import 'dart:convert';
import 'package:moviedb_app/models/popular_movie_model.dart';
import 'package:http/http.dart' as http;

class MoviePopularService {
  String apiKey = 'fa5c5e6660eeea81aa868f4089388592';
  String baseUrl = 'https://api.themoviedb.org/3/movie';

  Future<List<PopularMovieModel>> getMoviePopular() async {
    var url = Uri.parse('$baseUrl/popular?api_key=$apiKey');
    var headers = {'content-type': 'application/json'};
    var response = await http.get(url, headers: headers);

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body)['results'];
      List<PopularMovieModel> popularMovie = [];
      for (var items in data) {
        popularMovie.add(PopularMovieModel.fromJson(items));
      }
      print('=====service====');

      // var popularmovie = data.map((data) => PopularMovieModel.fromJson(data)).toList();
      // print(popularmovie);
      return popularMovie;
    } else {
      throw Exception('Gagal get service Movie');
    }
  }
}
