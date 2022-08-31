import '../../../shared/failures/failures.dart';

abstract class QuizError implements Failure {}

class QuizInvalid extends QuizError {}

class QuizDatasourceInternetConnection implements NoInternetConnection {}

class QuizDatasourceError extends Failure {
  QuizDatasourceError({
    StackTrace? stackTrace,
    required String label,
    required dynamic exception,
    required String errorMessage,
  }) : super(
          stackTrace: stackTrace,
          errorMessage: errorMessage,
        );
}

class QuizRepositoryError extends Failure {
  QuizRepositoryError({
    StackTrace? stackTrace,
    required String label,
    required dynamic exception,
    required String errorMessage,
  }) : super(
          stackTrace: stackTrace,
          errorMessage: errorMessage,
        );
}
