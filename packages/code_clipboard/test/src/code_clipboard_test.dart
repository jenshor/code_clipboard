// ignore_for_file: prefer_const_constructors
import 'package:code_clipboard/code_clipboard.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CodeClipboard', () {
    test('can be instantiated', () {
      expect(CodeClipboard(), isNotNull);
    });
  });
}
