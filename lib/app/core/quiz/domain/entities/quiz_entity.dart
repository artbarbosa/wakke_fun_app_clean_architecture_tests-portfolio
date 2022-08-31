class QuizEntity {
  final String id;
  final bool isPrivate;
  final bool activeStatus;
  final bool finished;
  final String challengeId;
  final String title;
  final String description;
  final String userAuthorId;
  final String userAuthorName;
  final String userAuthorNickname;
  final String dateCreation;
  final bool canBeDeleted;

  QuizEntity({
    required this.id,
    required this.isPrivate,
    required this.activeStatus,
    required this.finished,
    required this.challengeId,
    required this.title,
    required this.description,
    required this.userAuthorId,
    required this.userAuthorName,
    required this.userAuthorNickname,
    required this.dateCreation,
    required this.canBeDeleted,
  });
}
