class Film {
  String filmName;
  String overview;
  String genres;

  Film.fromJson(Map<String, dynamic> json)
      : filmName = json["name"]["original_title"],
        overview = json["narrative"]["overview"],
        genres = json["genres"]["name"];
}
