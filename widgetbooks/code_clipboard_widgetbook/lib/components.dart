import 'package:code_clipboard/code_clipboard.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Default', type: CodeClipboard)
Widget buildCodeClipboard(BuildContext context) {
  return const CodeClipboard(
    code: 'Test',
    backgroundColor: Colors.black12,
  );
}

@WidgetbookUseCase(name: 'Multiline', type: CodeClipboard)
Widget buildCodeClipboardMultiline(BuildContext context) {
  return const CodeClipboard(
    code: 'Line 1\nLine 2',
    backgroundColor: Colors.black12,
  );
}
