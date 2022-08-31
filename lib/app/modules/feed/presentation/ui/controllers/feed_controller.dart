import 'package:flutter/material.dart';

import '../../../../../core/quiz/domain/usecases/get_quizzes_usecase.dart';
import '../../../../../core/quiz/infra/models/quiz_model.dart';
import '../states/feed_states.dart';

class FeedController extends ValueNotifier<FeedState> {
  final IGetQuizzesUseCase _getAllProductsUseCase;

  FeedController(
    this._getAllProductsUseCase,
  ) : super(FeedLoadingState());

  List<QuizModel> _listQuizzes = [];

  Future<void> _getQuizzes() async {
    _listQuizzes = await _getAllProductsUseCase.call() as List<QuizModel>;
    notifyListeners();
  }

  Future<void> fetchProducts() async {
    value = FeedLoadingState();
    try {
      await _getQuizzes();
      value = FeedLoadedState(listQuizzes: _listQuizzes);
    } catch (e) {
      value = FeedErrorState(errorMessage: e.toString());
    }
  }
}
