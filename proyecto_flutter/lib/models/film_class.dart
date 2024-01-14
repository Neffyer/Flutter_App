class Film {
String title;
String synopsis;
String status;
String poster;
String bigImage;

  Film.fromJson(Map<String, dynamic> json)
      : title = json["attributes"]["titles"]["en_jp"],
        synopsis = json["attributes"]["synopsis"],
        status = json["attributes"]["status"],
        poster = json["attributes"]["posterImage"]["tiny"],
        bigImage = json["attributes"]["posterImage"]["large"];

}
