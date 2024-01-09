import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:proyecto_flutter/models/film_class.dart';

Future<List<Film>> apiLoadFilm() async {
  final uri = Uri.parse("https://kitsu.io/api/edge/anime/");
  final response = await http.get(uri);
  final json = jsonDecode(response.body);
  final jsonFilmList = json["data"];
  print(json);
  final List<Film> filmList = [];
  for (final jsonFilm in jsonFilmList) {
    final film = Film.fromJson(jsonFilm);
    filmList.add(film);
  }
  return filmList;
}

Future<List<Film>> apiLoadPhoto() async {
  final uri = Uri.parse("https://kitsu.io/api/edge/anime/");
  final response = await http.get(uri);
  final json = jsonDecode(response.body);
  final jsonFilmList = json["data"];
  final List<Film> filmList = [];
  for (final poster in jsonFilmList) {
    final filmposter = Film.fromJson(poster);
    filmList.add(filmposter);
  }
  return filmList;
}



