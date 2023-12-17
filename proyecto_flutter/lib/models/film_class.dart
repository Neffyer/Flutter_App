class Film {
String title, synopsis;
  // String email;
  // String city;
  // String avatarUrl;


  Film.fromJson(Map<String, dynamic> json)
      : title = json["attributes"]["slug"],
        synopsis = json["attributes"]["synopsis"];
        // email = json["email"],
        // city = json["location"]["city"],
        // avatarUrl = json["picture"]["large"];

}
