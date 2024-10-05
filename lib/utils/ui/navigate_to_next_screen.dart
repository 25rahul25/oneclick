import 'package:flutter/material.dart';

navigateToNextScreen({
  required BuildContext context,
  required Widget nextScreen,
}) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => nextScreen,
    ),
  );
}
