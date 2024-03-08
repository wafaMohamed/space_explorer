import 'package:flutter/material.dart';
import 'package:space_explorer/core/constant/theme.dart';

class Divider2 extends StatelessWidget {
  const Divider2({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: AppTheme.blackColor,
      thickness: 1,
      height: 1,
    );
  }
}
