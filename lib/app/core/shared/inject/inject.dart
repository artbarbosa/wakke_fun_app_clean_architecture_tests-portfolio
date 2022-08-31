import 'package:get_it/get_it.dart';

import '../../../modules/feed/presentation/ui/controllers/feed_controller.dart';
import '../../quiz/domain/repositories/quiz_repository_interface.dart';
import '../../quiz/domain/usecases/get_quizzes_usecase.dart';
import '../../quiz/external/datasources/quiz_datasourcer.dart';
import '../../quiz/infra/datasources/quiz_datasourcer_intereface.dart';
import '../../quiz/infra/repositories/quiz_repository.dart';
import '../services/remote/http_client_mock.dart';
import '../services/remote/http_client_service_interface.dart';
import '../ui/controllers/custom_bottom_navigation_bar_controller.dart';

class Inject {
  static initialize() {
    final getIt = GetIt.I;

    getIt.registerLazySingleton<IHttpService>(() => HttpClientMock());

    getIt.registerLazySingleton<IQuizRepository>(
        () => QuizRepository(datasource: getIt()));

    getIt.registerLazySingleton<IQuizDataSource>(
        () => QuizDataSource(httpClient: getIt()));

    getIt.registerFactory<IGetQuizzesUseCase>(
      () => GetQuizzesUseCase(getIt()),
    );

    getIt.registerFactory<FeedController>(
      () => FeedController(getIt()),
    );

    // getIt.registerFactory<SplashController>(
    //   () => SplashController(),
    // );

    getIt.registerLazySingleton<CustomBottomNavigationBarController>(
      () => CustomBottomNavigationBarController(2),
    );
  }
}
