import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wakke_fun_app/app/core/quiz/domain/entities/quiz_entity.dart';
import 'package:wakke_fun_app/app/core/quiz/domain/repositories/quiz_repository_interface.dart';
import 'package:wakke_fun_app/app/core/quiz/domain/usecases/get_quizzes_usecase.dart';

import '../../../../../mocks/mock.dart';

class IQuizRepositoryMock extends Mock implements IQuizRepository {}

void main() {
  late IQuizRepositoryMock repository;
  late GetQuizzesUseCase usecase;

  setUpAll(() {
    repository = IQuizRepositoryMock();
    usecase = GetQuizzesUseCase(repository);
  });

  test('Should return List QuizEntity', () async {
    when(() => repository.getQuizzes())
        .thenAnswer((_) async => listQuizEntityMock);

    final result = await usecase.call();

    expect(result, isA<List<QuizEntity>>());
    expect(result.first.id, "id");
  });
}
