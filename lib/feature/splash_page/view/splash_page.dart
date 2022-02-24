import 'package:carbon_email/core/navigation_services/navigation_service.dart';
import 'package:carbon_email/core/size/size.dart';
import 'package:carbon_email/pruduct/companents/colors/app_colors.dart';
import 'package:carbon_email/pruduct/companents/text/app_text_strings.dart';
import 'package:carbon_email/pruduct/widgets/build_text_style_widget.dart';
import 'package:carbon_email/pruduct/widgets/button_widgets/build_elevated_button.dart';
import 'package:flutter/material.dart';

import '../../../pruduct/widgets/build_bottom_nav_bar.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: SizeHelper.getHeightSize(context),
        width: SizeHelper.getWidthSize(context),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/splash.png"),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 130),
              child: BuildTextStyleWidget(
                  text: AppTextString.splashTitleText,
                  fontSize: 36,
                  textAlign: TextAlign.center,
                  color: AppColor.splashTextColor,
                  fontWeight: FontWeight.w500),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15),
              child: BuildTextStyleWidget(
                text: AppTextString.splashSubtitleText,
                fontSize: 16,
                color: AppColor.splashTextColor,
              ),
            ),
            const BuildTextStyleWidget(
                text: AppTextString.splashBoldSubtitleText,
                color: AppColor.splashTextColor,
                fontSize: 16,
                fontWeight: FontWeight.bold),
            Padding(
              padding: const EdgeInsets.only(top: 400),
              child: BuildElevatedButtonWidget(
                onPressed: () =>
                    nextScreenCloseOthers(const BuildBottomNavBar(), context),
                height: SizeHelper.getHeightSize(context) * 0.075,
                width: SizeHelper.getWidthSize(context) * 0.5,
                primaryColor: AppColor.primaryLightColor,
                radius: 15,
                child: const BuildTextStyleWidget(
                  text: AppTextString.getStartedText,
                  fontSize: 18,
                  color: AppColor.splashTextColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
