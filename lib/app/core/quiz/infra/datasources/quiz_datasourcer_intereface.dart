abstract class IQuizDataSource {
  Future<List<Map>> getQuizzes(String path);
}
