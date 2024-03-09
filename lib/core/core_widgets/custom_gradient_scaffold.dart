import 'package:flutter/material.dart';
import 'package:space_explorer/core/constant/theme.dart';
import 'package:space_explorer/core/core_widgets/custom_text.dart';

class CustomGradientScaffold extends StatelessWidget {
  final Widget body;
  final String image;
  const CustomGradientScaffold({
    required this.body,
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: CustomText(
            text: 'Explorer',
            style: AppTheme.nunitoFont24.copyWith(color: AppTheme.yellowColor)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Image.asset(image),
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppTheme.purple1Color,
              AppTheme.purple3Color,
              AppTheme.purple3Color,
            ],
          ),
        ),
        child: body,
      ),
    );
  }
}
