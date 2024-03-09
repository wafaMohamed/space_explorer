import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:space_explorer/core/constant/theme.dart';

class ReadMeTextWidget extends StatelessWidget {
  const ReadMeTextWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ReadMoreText(
        text,
        trimLines: 5,
        colorClickableText: AppTheme.pinkColor,
        trimMode: TrimMode.Line,
        trimCollapsedText: 'Show More',
        trimExpandedText: 'Show Less',
        moreStyle: AppTheme.nunitoFont15.copyWith(color: AppTheme.pinkColor),
        lessStyle: AppTheme.nunitoFont15.copyWith(color: AppTheme.pinkColor),
        style:
            AppTheme.nunitoFont18Regular.copyWith(color: AppTheme.whiteColor),
      ),
    );
  }
}
