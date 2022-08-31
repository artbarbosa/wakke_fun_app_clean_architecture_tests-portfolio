import '../entities/quiz_entity.dart';
import '../repositories/quiz_repository_interface.dart';

abstract class IGetQuizzesUseCase {
  Future<List<QuizEntity>> call();
}

class GetQuizzesUseCase implements IGetQuizzesUseCase {
  final IQuizRepository _repository;
  GetQuizzesUseCase(this._repository);
  @override
  Future<List<QuizEntity>> call() async {
    return await _repository.getQuizzes();
  }
}
