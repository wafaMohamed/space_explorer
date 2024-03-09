import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:space_explorer/core/constant/app_asset.dart';

import '../../core/core_widgets/custom_gradient_scaffold.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        child: CustomGradientScaffold(
          image: AppAsset.menuIcon,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Expanded(
                  child: ReadMoreText(
                    'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                    trimLines: 2,
                    preDataText: "AMANDA",
                    preDataTextStyle: TextStyle(fontWeight: FontWeight.w500),
                    style: TextStyle(color: Colors.black),
                    colorClickableText: Colors.pink,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: '...Show more',
                    trimExpandedText: ' show less',
                  ),
                ),
                // Expanded(
                //   child: ReadMeTextWidget(
                //     text:
                //         "Earth, third planet from the Sun and the fifth largest planet in the solar system in terms of size and mass. Its single most outstanding feature is that its near-surface environments are the only places in the universe known to harbour life. It is  It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)",
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
