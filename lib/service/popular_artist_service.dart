import 'dart:convert';

import 'package:moviedb_app/models/cast_artis_popular_model.dart';
import 'package:http/http.dart' as http;

class ArtisService {
  String apiKey = 'fa5c5e6660eeea81aa868f4089388592';
  String baseUrl = 'https://api.themoviedb.org/3';

  Future<List<ArtisModel>> getArtis() async {
    var url = Uri.parse('$baseUrl/person/popular?api_key=$apiKey');
    var headers = {'content-type': 'application/json'};
    var response = await http.get(url, headers: headers);
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body)['results'];
      List<ArtisModel> artisMovie = [];
      for (var items in data) {
        artisMovie.add(ArtisModel.fromJson(items));
      }
      print('=====service Artist ====');

      // var artisMovie = data.map((data) => ArtisModel.fromJson(data)).toList();
      // print(artisMovie);
      return artisMovie;
    } else {
      throw Exception('Gagal get service Movie');
    }
  }
}
