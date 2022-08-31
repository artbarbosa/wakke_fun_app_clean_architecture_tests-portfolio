import 'package:wakke_fun_app/app/core/quiz/infra/models/quiz_model.dart';

abstract class FeedState {}

class FeedLoadingState implements FeedState {}

class FeedLoadedState implements FeedState {
  List<QuizModel> listQuizzes;

  FeedLoadedState({
    required this.listQuizzes,
  });
}

class FeedErrorState implements FeedState {
  final String errorMessage;

  FeedErrorState({required this.errorMessage});
}
