import 'package:flutter_test/flutter_test.dart';
import 'package:wakke_fun_app/app/core/quiz/infra/adapters/json_to_user_author_border.dart';
import 'package:wakke_fun_app/app/core/quiz/infra/models/user_author_border_model.dart';

import '../../../../../mocks/mock.dart';

void main() {
  test('Shold convert Map to UserAuthorBorderModel', () {
    final quiz = JsonToUserAuthorBorder.fromJson(userAuthorBorderJsonMock);

    expect(quiz, isA<UserAuthorBorderModel>());
    expect(quiz.id, 'demo-id-002');
  });
}
