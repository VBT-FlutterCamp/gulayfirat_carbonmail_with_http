import 'package:flutter/material.dart';
import '../../../../pruduct/companents/colors/app_colors.dart';
import '../../../../pruduct/companents/text/app_text_strings.dart';
import '../../../../pruduct/widgets/build_text_style_widget.dart';

class SliverAppBarWidget extends StatefulWidget {
  const SliverAppBarWidget({Key? key}) : super(key: key);

  @override
  _SliverAppBarWidgetState createState() => _SliverAppBarWidgetState();
}

class _SliverAppBarWidgetState extends State<SliverAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      backgroundColor: AppColor.backgroundColor,
      expandedHeight: 200,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.only(left: 10),
        title: BuildTextStyleWidget(
            text: AppTextString.sliverAppBarText, fontSize: 30),
      ),
    );
  }
}
