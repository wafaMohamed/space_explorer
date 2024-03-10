import 'package:flutter/material.dart';
import 'package:space_explorer/core/constant/app_asset.dart';

import '../../core/constant/sized_box.dart';
import '../../core/core_widgets/custom_gradient_scaffold.dart';
import 'details_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      AppAsset.mars,
      AppAsset.mercury,
      AppAsset.earth,
      AppAsset.jupiter,
      AppAsset.venus,
      AppAsset.mars,
      AppAsset.mars,
      AppAsset.mercury,
      AppAsset.mars,
      AppAsset.mercury,
      AppAsset.earth,
      AppAsset.jupiter,
      AppAsset.venus,
      AppAsset.mars,
      AppAsset.earth,
      AppAsset.jupiter,
      AppAsset.venus,
      AppAsset.mars,
      AppAsset.mercury,
      AppAsset.earth,
      AppAsset.jupiter,
      AppAsset.venus,
      AppAsset.mars,
      AppAsset.mars,
    ];

    return SafeArea(
      child: CustomGradientScaffold(
        image: AppAsset.menuIcon,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox2.vertical20,
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 10,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  children: List.generate(
                    growable: true,
                    list.length,
                    (index) => InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailsScreen(
                                      image: list[index],
                                    )));
                      },
                      child: Image.asset(
                        list[index],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
