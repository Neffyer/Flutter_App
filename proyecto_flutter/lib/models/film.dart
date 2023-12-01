class Film {
  String firstName, lastName;
  String email;
  String city;
  String avatarUrl;


  Film.fromJson(Map<String, dynamic> json)
      : firstName = json["name"]["first"],
        lastName = json["name"]["last"],
        email = json["email"],
        city = json["location"]["city"],
        avatarUrl = json["picture"]["large"];
}
