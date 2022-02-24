import 'package:carbon_email/core/size/size.dart';
import 'package:carbon_email/pruduct/companents/colors/app_colors.dart';
import 'package:flutter/material.dart';
import '../../../../pruduct/companents/text/app_text_strings.dart';
import '../../../../pruduct/widgets/build_text_style_widget.dart';

class SliverBoxAdaptorWidget extends StatefulWidget {
  const SliverBoxAdaptorWidget({Key? key}) : super(key: key);

  @override
  _SliverBoxAdaptorWidgetState createState() => _SliverBoxAdaptorWidgetState();
}

class _SliverBoxAdaptorWidgetState extends State<SliverBoxAdaptorWidget> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const BuildTextStyleWidget(
                text: AppTextString.subscripText,
                fontSize: 18,
                color: AppColor.lightTextColor),
            Container(
              height: SizeHelper.getHeightSize(context) * 0.047,
              width: SizeHelper.getWidthSize(context) * 0.32,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xff34495E)),
              child: const Center(
                child: BuildTextStyleWidget(
                    text: AppTextString.cleanedText,
                    color: AppColor.lightTextColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
