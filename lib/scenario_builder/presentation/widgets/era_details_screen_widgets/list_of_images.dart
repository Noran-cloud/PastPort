import 'package:flutter/cupertino.dart';
import 'package:pastport/core/extensions/helper_extension.dart';
import 'package:pastport/scenario_builder/presentation/widgets/era_details_screen_widgets/list_view_item.dart';

class ListOfImages extends StatelessWidget {
  const ListOfImages({super.key, required this.details_1, required this.details_2, required this.details_3, required this.details_4});

  final String details_1;
  final String details_2;
  final String details_3;
  final String details_4;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * .35,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        children: [
          ListViewItem(image: details_1, width: context.width * .5, height: context.height * .35,),
          SizedBox(width: 8.0,),
          ListViewItem(image: details_2, width: context.width * .5, height: context.height * .35,),
          SizedBox(width: 8.0,),
          ListViewItem(image: details_3, width: context.width * .5, height: context.height * .35,),
          SizedBox(width: 8.0,),
          ListViewItem(image: details_4, width: context.width * .5, height: context.height * .35,),
          SizedBox(width: 8.0,),
        ],
      ),
    );
  }
}
