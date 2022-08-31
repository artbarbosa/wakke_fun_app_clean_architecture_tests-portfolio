import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wakke_fun_app/app/core/quiz/domain/entities/quiz_entity.dart';
import 'package:wakke_fun_app/app/core/quiz/domain/errors/quiz_errors.dart';
import 'package:wakke_fun_app/app/core/quiz/infra/repositories/quiz_repository.dart';
import 'package:wakke_fun_app/app/core/shared/failures/failures.dart';

import '../../../../../mocks/mock.dart';

void main() {
  late IQuizDataSourceMock datasoucer;
  late QuizRepository repository;

  setUpAll(() {
    datasoucer = IQuizDataSourceMock();
    repository = QuizRepository(datasource: datasoucer);
  });

  group('Quiz Repository - getQuizzes', () {
    test('Should return List QuizEntity', () async {
      when(() => datasoucer.getQuizzes('jsonWakkeFun'))
          .thenAnswer((_) async => listJsonQuizMock);

      final result = await repository.getQuizzes();

      expect(result, isA<List<QuizEntity>>());
      expect(result.length, 20);
    });

    test('Should Throw NoInternetConnection', () async {
      when(() => datasoucer.getQuizzes('jsonWakkeFun'))
          .thenThrow(NoInternetConnection());

      expect(() async => await repository.getQuizzes(),
          throwsA(isA<NoInternetConnection>()));
    });

    test('Should Throw QuizRepositoryError', () async {
      when(() => datasoucer.getQuizzes('jsonWakkeFun')).thenThrow(Exception());

      expect(() async => await repository.getQuizzes(),
          throwsA(isA<QuizRepositoryError>()));
    });
  });
}
