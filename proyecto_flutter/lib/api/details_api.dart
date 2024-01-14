import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:proyecto_flutter/models/details_class.dart';

Future<List<Details>> apiLoadDetails() async {
  final uri = Uri.parse("https://kitsu.io/api/edge/anime/");
  final response = await http.get(uri);
  final json = jsonDecode(response.body);
  final jsonDetailsList = json["data"];
  print(json);
  final List<Details> detailsList = [];
  for (final jsonDetails in jsonDetailsList) {
    final details = Details.fromJson(jsonDetails);
    detailsList.add(details);
  }
  return detailsList;
}
