import 'package:moviedb_app/models/cast_artis_popular_model.dart';
import 'package:moviedb_app/service/popular_artist_service.dart';
import 'package:flutter/material.dart';

class ArtisProvider extends ChangeNotifier {
  List<ArtisModel> _artistPopular = [];
  ArtisService artisService = ArtisService();

  List<ArtisModel> get artisPopular => _artistPopular;

  set artisPopular(List<ArtisModel> artisPopular) {
    _artistPopular = artisPopular;
  }

  Future<void> getArtisPopular() async {
    try {
      var artisPopular = await artisService.getArtis();
      _artistPopular = artisPopular;
      print('Provider artis popular');
      print(artisPopular);
      notifyListeners();
    } catch (e) {
      print('gagal get artis popular provider');
    }
  }
}
