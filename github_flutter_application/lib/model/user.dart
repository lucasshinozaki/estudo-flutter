import 'dart:html';

class User {
  String name;
  String login;
  String avatarUri;
  String url;
  String bio;
  String company;
  String location;
  String email;

  User.fromJson(Map<String, dynamic> json)
      : this.name = json['name'],
        this.login = json['login'],
        this.avatarUri = json['avatar_uri'],
        this.url = json['url'],
        this.bio = json['bio'],
        this.company = json['company'],
        this.location = json['location'],
        this.email = json['email'];
}
