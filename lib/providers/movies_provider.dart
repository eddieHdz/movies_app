import 'package:flutter/material.dart';
import 'package:movies_app/models/models.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MoviesProvider extends ChangeNotifier {
  String _apiKey = '2f4e3a729f6dec6dc5564e0cde1ba442';
  String _baseUrl = 'api.themoviedb.org';
  String _language = 'es-ES';

  MoviesProvider() {
    print('Movies provider inicializado');
    this.getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
    var url = Uri.https(_baseUrl, '3/movie/now_playing',
        {'api_key': _apiKey, 'languague': _language, 'page': '1'});

    // Await the http get response, then decode the json-formatted response.
    final response = await http.get(url);
    final nowPlayingResponse = NowPlayingResponse.fromJson(response.body);
    print(nowPlayingResponse.results[1].title);
  }
}
