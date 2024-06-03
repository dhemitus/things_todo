import 'package:flutter_test/flutter_test.dart';
import 'package:things_todo/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('EditTodoViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
