import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// A simple Code Clipboard for Flutter to show and copy code snippets.
class CodeClipboard extends StatelessWidget {
  /// Creates a new instance of [CodeClipboard].
  const CodeClipboard({
    super.key,
    required this.code,
    this.foregroundColor,
    this.backgroundColor,
    this.textStyle,
    this.iconColor,
    this.radius,
    this.copyIcon,
  });

  /// The code displayed in the [CodeClipboard].
  final String code;

  /// The radius of the [CodeClipboard] card.
  final BorderRadius? radius;

  /// The color of the code text.
  ///
  /// Will be ignored if [textStyle] is set.
  final Color? foregroundColor;

  /// The background color of the [CodeClipboard].
  final Color? backgroundColor;

  /// The [TextStyle] of the displayed code.
  ///
  /// Ignores [foregroundColor].
  final TextStyle? textStyle;

  /// The color of the icon.
  ///
  /// Only applies to the default icon.
  /// If you want to color the custom [copyIcon] use the `color` property of the
  /// [Icon] widget.
  final Color? iconColor;

  /// The icon to copy the source code.
  ///
  /// Defaults to [Icons.copy].
  final Widget? copyIcon;

  @override
  Widget build(BuildContext context) {
    final usedCopyIcon = copyIcon ??
        Icon(
          Icons.copy,
          color: iconColor,
        );
    return DecoratedBox(
      decoration: BoxDecoration(
        color: backgroundColor ?? Theme.of(context).cardTheme.color,
        borderRadius: radius ??
            const BorderRadius.all(
              Radius.circular(8),
            ),
      ),
      child: Stack(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: SelectableText(
                  code,
                  style: textStyle?.copyWith() ??
                      GoogleFonts.robotoMono(
                        color: foregroundColor,
                      ),
                ),
              ),
            ],
          ),
          Positioned(
            right: 4,
            top: 4,
            child: InkWell(
              radius: 4,
              borderRadius: BorderRadius.circular(4),
              onTap: () async {
                await FlutterClipboard.copy(code);
              },
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: usedCopyIcon,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
