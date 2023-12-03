import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:proyecto_flutter/models/film_class.dart';

Future<List<Film>> apiLoadFilm() async {
  final uri = Uri.parse("https://api.themoviedb.org/3/movie/11?api_key=ce3dded01779db04a7820eb05d6b3095");
  final response = await http.get(uri);
  final json = jsonDecode(response.body);
  final jsonFilmList = json["results"];
  final List<Film> filmList = [];
  for (final jsonFilm in jsonFilmList) {
    final film = Film.fromJson(jsonFilm);
    filmList.add(film);
  }
  return filmList;
}
