import 'dart:convert';
import 'package:moviedb_app/models/popular_movie_model.dart';
import 'package:http/http.dart' as http;

class NowShowingService {
  String apiKey = 'fa5c5e6660eeea81aa868f4089388592';
  String baseUrl = 'https://api.themoviedb.org/3/movie';

  Future<List<PopularMovieModel>> getMovieShowing() async {
    var url = Uri.parse('$baseUrl/now_playing?api_key=$apiKey');
    var headers = {'content-type': 'application/json'};
    var response = await http.get(url, headers: headers);

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body)['results'];
      List<PopularMovieModel> popularMovie = [];

      for (var items in data) {
        try {
          var movieModel = PopularMovieModel.fromJson(items);
          popularMovie.add(movieModel);
        } catch (e) {
          print('Error creating PopularMovieModel from JSON: $e');
        }
      }
      // var popularmovie = data.map((data) => PopularMovieModel.fromJson(data)).toList();
      // print(popularmovie);
      return popularMovie;
    } else {
      throw Exception('Gagal get service Movie');
    }
  }
}
