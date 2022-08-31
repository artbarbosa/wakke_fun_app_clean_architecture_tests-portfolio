import '../../mock_data/json_wakkefun.dart';
import 'http_client_service_interface.dart';

class HttpClientMock implements IHttpService {
  @override
  Future<dynamic> get(Object path,
      {Map<String, dynamic>? queryParameters}) async {
    if (path == 'jsonWakkeFun') {
      return jsonWakkeFunMock;
    }
    return [];
  }
}
