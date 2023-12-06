class Film {
  String filmName;
  String overview;
  String genres;
  String avgVotes;
  String company;
  String date;

  Film.fromJson(Map<String, dynamic> json)
      : filmName = json["title"],
        overview = json["overview"],
        genres = json["genres"]["name"],
        avgVotes = json["vote_average"],
        company = json["production_companies"],
        date = json["release_date"];
}
