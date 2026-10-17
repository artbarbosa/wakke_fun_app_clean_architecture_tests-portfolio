import 'dart:convert';
import '../lib/app/core/shared/mock_data/json_wakkefun.dart';

void main() {
  if (jsonWakkeFunMock.length < 20) {
    throw StateError('The feed requires at least twenty records.');
  }
  final encoded = jsonEncode(jsonWakkeFunMock);
  for (final forbidden in ['token=', 'firebasestorage.googleapis.com', 'wakke-system-storage', 'AIza']) {
    if (encoded.contains(forbidden)) throw StateError('Captured data remains: $forbidden');
  }
  for (final quiz in jsonWakkeFunMock) {
    if (!(quiz['_id'] as String).startsWith('demo-quiz-') ||
        !(quiz['usuario_autor_nome'] as String).startsWith('Demo Author ') ||
        !(quiz['titulo'] as String).startsWith('Demo quiz ')) {
      throw StateError('Expected a synthetic quiz and author.');
    }
    if (quiz['privado'] is! bool || quiz['media_nota'] is! num) {
      throw StateError('Fixture types changed.');
    }
  }
  print('PASS: twenty synthetic quiz records; no captured download tokens.');
}
