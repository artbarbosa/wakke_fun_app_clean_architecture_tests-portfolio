import '../models/user_author_icon_model.dart';

class JsonToUserAuthorIcon {
  static UserAuthorIconModel fromJson(dynamic json) {
    return UserAuthorIconModel(
      id: json['id'],
      url: json['url'],
      xpAmount: json['xp_amount'],
    );
  }
}
