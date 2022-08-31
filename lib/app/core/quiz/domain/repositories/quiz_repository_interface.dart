import '../entities/quiz_entity.dart';

abstract class IQuizRepository {
  Future<List<QuizEntity>> getQuizzes();
}
