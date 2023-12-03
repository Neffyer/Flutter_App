class Film {
  String filmName;
  String overview;


  Film.fromJson(Map<String, dynamic> json)
      : filmName = json["name"]["original_title"],
        overview = json["narrative"]["overview"];
}
