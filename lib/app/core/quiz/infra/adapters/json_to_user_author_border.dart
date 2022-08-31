import '../models/user_author_border_model.dart';

class JsonToUserAuthorBorder {
  static UserAuthorBorderModel fromJson(dynamic json) {
    return UserAuthorBorderModel(
      id: json['id'],
      color1: json['color1'],
      color2: json['color2'],
    );
  }
}
