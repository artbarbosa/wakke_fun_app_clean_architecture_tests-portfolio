import 'package:flutter_test/flutter_test.dart';
import 'package:wakke_fun_app/app/core/quiz/infra/adapters/json_to_user_author_icon.dart';
import 'package:wakke_fun_app/app/core/quiz/infra/models/user_author_icon_model.dart';

import '../../../../../mocks/mock.dart';

void main() {
  test('Shold convert Map to UserAuthorIconModel', () {
    final quiz = JsonToUserAuthorIcon.fromJson(userAuthorIconJsonMock);

    expect(quiz, isA<UserAuthorIconModel>());
    expect(quiz.id, 'demo-id-003');
  });
}
