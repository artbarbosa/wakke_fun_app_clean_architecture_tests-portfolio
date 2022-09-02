import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:wakke_fun_app/app/core/quiz/domain/repositories/quiz_repository_interface.dart';
import 'package:wakke_fun_app/app/core/quiz/domain/usecases/get_quizzes_usecase.dart';
import 'package:wakke_fun_app/app/core/quiz/external/datasources/quiz_datasourcer.dart';
import 'package:wakke_fun_app/app/core/quiz/infra/datasources/quiz_datasourcer_intereface.dart';
import 'package:wakke_fun_app/app/core/quiz/infra/repositories/quiz_repository.dart';
import 'package:wakke_fun_app/app/core/shared/inject/inject.dart';
import 'package:wakke_fun_app/app/core/shared/services/remote/http_client_mock.dart';
import 'package:wakke_fun_app/app/core/shared/services/remote/http_client_service_interface.dart';
import 'package:wakke_fun_app/app/core/shared/ui/controllers/custom_bottom_navigation_bar_controller.dart';
import 'package:wakke_fun_app/app/modules/feed/presentation/ui/controllers/feed_controller.dart';
import 'package:wakke_fun_app/app/modules/splash/presentation/ui/controllers/splash_controller.dart';

void main() {
  setUpAll(() async {
    await Inject.initialize();
  });
  test('Should return Instance HttpClientMock', () async {
    final result = GetIt.I<IHttpService>();

    expect(result, isA<IHttpService>());
    expect(result, isA<HttpClientMock>());
  });

  test('Should return Instance IQuizRepository', () async {
    final result = GetIt.I<IQuizRepository>();

    expect(result, isA<IQuizRepository>());
    expect(result, isA<QuizRepository>());
  });

  test('Should return Instance IQuizDataSource', () async {
    final result = GetIt.I<IQuizDataSource>();

    expect(result, isA<IQuizDataSource>());
    expect(result, isA<QuizDataSource>());
  });

  test('Should return Instance IGetQuizzesUseCase', () async {
    final result = GetIt.I<IGetQuizzesUseCase>();

    expect(result, isA<IGetQuizzesUseCase>());
    expect(result, isA<GetQuizzesUseCase>());
  });
  test('Should return Instance FeedController', () async {
    final result = GetIt.I<FeedController>();

    expect(result, isA<FeedController>());
  });

  test('Should return Instance SplashController', () async {
    final result = GetIt.I<SplashController>();

    expect(result, isA<SplashController>());
  });

  test('Should return Instance CustomBottomNavigationBarController', () async {
    final result = GetIt.I<CustomBottomNavigationBarController>();

    expect(result, isA<CustomBottomNavigationBarController>());
  });
}
