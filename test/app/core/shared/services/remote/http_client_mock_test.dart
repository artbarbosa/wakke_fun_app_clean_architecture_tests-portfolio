import 'package:flutter_test/flutter_test.dart';
import 'package:wakke_fun_app/app/core/shared/services/remote/http_client_mock.dart';

void main() {
  late HttpClientMock httpClient;

  setUpAll(() {
    httpClient = HttpClientMock();
  });
  group('HttpClientMock - get', () {
    test('Should return List', () async {
      final result = await httpClient.get('jsonWakkeFun');

      expect(result, isA<List<Map<String, dynamic>>>());
    });

    test('Should return List empty', () async {
      final List result = await httpClient.get('');

      expect(result.isEmpty, true);
    });
  });
}
