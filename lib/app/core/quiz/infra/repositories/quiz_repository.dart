import 'package:wakke_fun_app/app/core/quiz/infra/adapters/json_to_quiz.dart';

import '../../../shared/failures/failures.dart';
import '../../domain/entities/quiz_entity.dart';
import '../../domain/errors/quiz_errors.dart';
import '../../domain/repositories/quiz_repository_interface.dart';
import '../datasources/quiz_datasourcer_intereface.dart';

class QuizRepository implements IQuizRepository {
  final IQuizDataSource datasource;

  QuizRepository({
    required this.datasource,
  });

  @override
  Future<List<QuizEntity>> getQuizzes() async {
    try {
      final list = await datasource.getQuizzes('jsonWakkeFun');
      return list.map((e) => JsonToQuiz.fromJson(e)).toList();
    } on NoInternetConnection catch (e) {
      rethrow;
    } catch (e, stackTrace) {
      throw QuizRepositoryError(
          label: e.toString(),
          exception: e,
          errorMessage: 'QuizRepositoryErro - QuizRepository',
          stackTrace: stackTrace);
    }
  }
}
