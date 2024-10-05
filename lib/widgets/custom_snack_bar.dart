import 'package:flutter/material.dart';

void customSnackBar({
  required BuildContext context,
  required String text,
  Color? color,
  Duration? duration,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
      backgroundColor: color ?? ThemeData().snackBarTheme.backgroundColor,
      duration: duration ?? const Duration(milliseconds: 4000),
    ),
  );
}
