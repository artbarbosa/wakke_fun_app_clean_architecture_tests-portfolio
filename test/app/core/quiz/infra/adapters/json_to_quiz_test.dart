import 'package:flutter_test/flutter_test.dart';
import 'package:wakke_fun_app/app/core/quiz/domain/entities/quiz_entity.dart';
import 'package:wakke_fun_app/app/core/quiz/infra/adapters/json_to_quiz.dart';
import 'package:wakke_fun_app/app/core/quiz/infra/models/quiz_model.dart';

import '../../../../../mocks/mock.dart';

void main() {
  test('Shold convert Map to QuizEntity', () {
    final quiz = JsonToQuiz.fromJson(jsonQuizMock);

    expect(quiz, isA<QuizModel>());
    expect(quiz, isA<QuizEntity>());
    expect(quiz.id, 'demo-quiz-001');
  });
}
