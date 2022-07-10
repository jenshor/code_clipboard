// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// WidgetbookGenerator
// **************************************************************************

import 'dart:core';
import 'package:clipboard/clipboard.dart';
import 'package:code_clipboard_widgetbook/app.dart';
import 'package:code_clipboard_widgetbook/components.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:widgetbook/widgetbook.dart';

void main() {
  runApp(HotReload());
}

class HotReload extends StatelessWidget {
  const HotReload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      appInfo: AppInfo(
        name: 'CodeClipboard',
      ),
      themes: [
        WidgetbookTheme(
          name: 'Light',
          data: lightTheme(),
        ),
        WidgetbookTheme(
          name: 'Dark',
          data: darkTheme(),
        ),
      ],
      categories: [
        WidgetbookCategory(
          name: 'use cases',
          folders: [],
          widgets: [
            WidgetbookComponent(
              name: 'CodeClipboard',
              useCases: [
                WidgetbookUseCase(
                  name: 'Default',
                  builder: (context) => buildCodeClipboard(context),
                ),
                WidgetbookUseCase(
                  name: 'Multiline',
                  builder: (context) => buildCodeClipboardMultiline(context),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
