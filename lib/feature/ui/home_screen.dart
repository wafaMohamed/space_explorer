import 'package:flutter/material.dart';
import 'package:space_explorer/core/constant/app_asset.dart';
import 'package:space_explorer/core/constant/theme.dart';
import 'package:space_explorer/core/core_widgets/custom_button.dart';
import 'package:space_explorer/core/core_widgets/custom_text.dart';

import '../../core/constant/sized_box.dart';
import '../../core/core_widgets/custom_gradient_scaffold.dart';
import 'menu_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomGradientScaffold(
        image: AppAsset.menuIcon,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox2.vertical50,
              // Title
              RichText(
                text: TextSpan(
                  style: AppTheme.openSansFont40.copyWith(
                    color: AppTheme.whiteColor,
                  ),
                  children: [
                    const TextSpan(
                      text: "Let’s Explore the ",
                    ),
                    TextSpan(
                        text: 'Solar System ',
                        style: AppTheme.openSansFont40.copyWith(
                            color: AppTheme.yellowColor, fontSize: 50)),
                    const TextSpan(
                      text: 'with ',
                    ),
                    TextSpan(
                      text: 'Explorer',
                      style: AppTheme.openSansFont40
                          .copyWith(color: AppTheme.yellowColor, fontSize: 40),
                    )
                  ],
                ),
              ),
              SizedBox2.vertical20,
              Image.asset(AppAsset.splashImage),
              // Lottie.asset(AppAsset.animation3),
              SizedBox2.vertical20,
              // button
              CustomButton(
                style: ButtonStyle(
                  // padding
                  padding: MaterialStateProperty.all(const EdgeInsets.symmetric(
                      horizontal: 100, vertical: 12)),
                  // text style
                  textStyle: MaterialStateProperty.all(
                    AppTheme.openSansFont22,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MenuScreen(),
                    ),
                  );
                },
                child: Row(
                  children: [
                    const CustomText(
                      text: "Let's Go",
                    ),
                    SizedBox2.horizontal10,
                    Image.asset(AppAsset.rocket)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
