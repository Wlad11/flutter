import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:lesson/resources/resources.dart';
//import 'package:test/test.dart';

void main() {
  test('app_images assets test', () {
    expect(File(AppImages.film).existsSync(), true);
  });
}
