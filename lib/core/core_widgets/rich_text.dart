import 'package:flutter/material.dart';

class Text {
  static var text = RichText(
    text: const TextSpan(
      // Note: Styles for TextSpans must be explicitly defined.
      // Child text spans will inherit styles from parent
      style: TextStyle(
        fontSize: 14.0,
        color: Colors.black,
      ),
      children: <TextSpan>[
        TextSpan(text: 'Hello'),
        TextSpan(text: 'World', style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    ),
  );
}
