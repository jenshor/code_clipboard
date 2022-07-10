# code_clipboard

This package provides a simple Code Clipboard for Flutter to show and copy code snippets.

## Usage

```dart
CodeClipboard(
  code: 'Line 1\nLine 2',
)
```

## Options

| Parameter         | Type           | Mandatory | Description |
| ----------------- | -------------- | --------- | ----------- |
| `code`            | `String`       | ✅        | The code displayed in the clipboard. |
| `radius`          | `BorderRadius` | ➖        | The radius of the clipboard card. |
| `foregroundColor` | `Color`        | ➖        | The color of the code text. Will be ignored if `textStyle` is set. |
| `backgroundColor` | `Color`        | ➖        | The background color of the clipboard. |
| `textStyle`       | `TextStyle`    | ➖        | The `TextStyle` of the displayed text/code. `foregroundColor` is ignored if this parameter is set. |
| `iconColor`       | `Color`        | ➖        | The color of the copy icon. Does not apply to `copyIcon`. |
| `copyIcon`        | `Widget`       | ➖        | Option to customize the icon to your icon theme. Defaults to `Icon(Icons.copy)`. |