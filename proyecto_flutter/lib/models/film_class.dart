class Film {
String title, synopsis;
String status;
String poster;

  Film.fromJson(Map<String, dynamic> json)
      : title = json["attributes"]["titles"]["en_jp"],
        synopsis = json["attributes"]["synopsis"],
        status = json["attributes"]["status"],
        poster = json["attributes"]["posterImage"]["tiny"];

}
