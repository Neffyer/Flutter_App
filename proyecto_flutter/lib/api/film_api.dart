import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:proyecto_flutter/models/film.dart';

Future<List<Film>> apiLoadUsers() async {
  final uri = Uri.parse("https://api.themoviedb.org/3/movie/11?api_key=ce3dded01779db04a7820eb05d6b3095");
  final response = await http.get(uri);
  final json = jsonDecode(response.body);
  final jsonUserList = json["results"];
  final List<Film> userList = [];
  for (final jsonUser in jsonUserList) {
    final user = Film.fromJson(jsonUser);
    userList.add(user);
  }
  return userList;
}
