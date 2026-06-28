import 'package:flutter/cupertino.dart';
import 'package:pastport/core/extensions/helper_extension.dart';
import 'package:pastport/core/utils/app_styles.dart';
import 'package:pastport/scenario_builder/presentation/widgets/era_details_screen_widgets/list_view_item.dart';

class ScenarioSelectionItem extends StatelessWidget {
  const ScenarioSelectionItem({super.key, required this.onTap, required this.image, required this.title});

  final String image;
  final String title;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          ListViewItem(
            image: image,
            width: context.width * .4,
            height: context.width * .4,
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(
              title,
              style: Styles.styleRegular10(context).copyWith(fontSize: 10),
            ),
          ),
        ],
      ),
    );
  }
}
