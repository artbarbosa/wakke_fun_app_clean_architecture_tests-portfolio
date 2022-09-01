import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wakke_fun_app/app/core/quiz/domain/usecases/get_quizzes_usecase.dart';
import 'package:wakke_fun_app/app/modules/feed/presentation/ui/controllers/feed_controller.dart';
import 'package:wakke_fun_app/app/modules/feed/presentation/ui/states/feed_states.dart';

import '../../../../../../mocks/mock.dart';

class GetQuizzesUseCaseMock extends Mock implements IGetQuizzesUseCase {}

void main() {
  late FeedController controller;
  late GetQuizzesUseCaseMock usecase;

  setUpAll(() {
    usecase = GetQuizzesUseCaseMock();
    controller = FeedController(usecase);
  });

  group('FeedController - fetchQuizzes', () {
    test('Should get and change value ProductLoadedState', () async {
      when(() => usecase.call()).thenAnswer((_) async => listQuizzesModelMock);

      await controller.fetchQuizzes();

      expect(controller.value, isA<FeedLoadedState>());
    });

    test('Should get and change value FeedErrorState', () async {
      when(() => usecase.call()).thenThrow(Exception());

      await controller.fetchQuizzes();

      expect(controller.value, isA<FeedErrorState>());
    });
  });
}
