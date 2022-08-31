import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wakke_fun_app/app/core/quiz/domain/errors/quiz_errors.dart';
import 'package:wakke_fun_app/app/core/quiz/external/datasources/quiz_datasourcer.dart';
import 'package:wakke_fun_app/app/core/shared/failures/failures.dart';

import '../../../../../mocks/mock.dart';

void main() {
  late HttpServiceMock httpClient;
  late QuizDataSource datasource;

  setUpAll(() {
    httpClient = HttpServiceMock();
    datasource = QuizDataSource(httpClient: httpClient);
  });

  group('QuizDataSourceImp - getQuizzes', () {
    test('Should return List<Map>', () async {
      when(() => httpClient.get(any()))
          .thenAnswer((_) async => listJsonQuizMock);

      final result = await datasource.getQuizzes('jsonWakkeFun');

      expect(result, isA<List<Map>>());
      expect(result.first['_id'], 'demo-quiz-001');
    });

    test('Should Throw NoInternetConnection', () async {
      when(() => httpClient.get('jsonWakkeFun'))
          .thenThrow(NoInternetConnection());

      expect(() async => await datasource.getQuizzes('jsonWakkeFun'),
          throwsA(isA<QuizDatasourceInternetConnection>()));
    });

    test('Should Throw QuizRepositoryError', () async {
      when(() => httpClient.get('jsonWakkeFun')).thenThrow(Exception());

      expect(() async => await datasource.getQuizzes('jsonWakkeFun'),
          throwsA(isA<QuizDatasourceError>()));
    });
  });
}
