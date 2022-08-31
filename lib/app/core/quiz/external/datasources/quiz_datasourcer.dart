import '../../../shared/failures/failures.dart';
import '../../../shared/services/remote/http_client_service_interface.dart';
import '../../domain/errors/quiz_errors.dart';
import '../../infra/datasources/quiz_datasourcer_intereface.dart';

class QuizDataSource implements IQuizDataSource {
  final IHttpService httpClient;
  QuizDataSource({
    required this.httpClient,
  });

  @override
  Future<List<Map>> getQuizzes(String path) async {
    try {
      final response = await httpClient.get(path);
      final list = response;
      return list as List<Map>;
    } on NoInternetConnection catch (e) {
      throw QuizDatasourceInternetConnection();
    } catch (e, stackTrace) {
      throw QuizDatasourceError(
          label: e.toString(),
          exception: e,
          errorMessage: 'QuizDataSourceError - getQuizzes',
          stackTrace: stackTrace);
    }
  }
}
