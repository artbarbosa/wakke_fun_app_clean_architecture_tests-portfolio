import 'package:wakke_fun_app/app/core/quiz/domain/entities/quiz_entity.dart';

import 'user_author_border_model.dart';
import 'user_author_icon_model.dart';

class QuizModel extends QuizEntity {
  final int gamesExecutedQty;
  final int commentsQty;
  final double avarageGrade;
  final double avarageCorrects;
  final double averagePercentageCorrect;
  final double mediumDuration;
  final double evaluationGrade;
  final String coverImage;
  final String linkVideo;
  final String numeroNic;
  final String? userAuthorImageProfile;
  final UserAuthorIconModel? userAuthorIconModel;
  final UserAuthorBorderModel? userAuthorBorderModel;

  QuizModel({
    required super.id,
    required super.isPrivate,
    required super.activeStatus,
    required super.finished,
    required super.challengeId,
    required super.title,
    required super.description,
    required super.userAuthorId,
    required super.userAuthorName,
    required super.userAuthorNickname,
    required super.dateCreation,
    required super.canBeDeleted,
    required this.gamesExecutedQty,
    required this.commentsQty,
    required this.avarageGrade,
    required this.avarageCorrects,
    required this.averagePercentageCorrect,
    required this.mediumDuration,
    required this.evaluationGrade,
    required this.coverImage,
    required this.linkVideo,
    required this.numeroNic,
    this.userAuthorImageProfile,
    this.userAuthorIconModel,
    this.userAuthorBorderModel,
  });
}
