import 'package:flutter/material.dart';
import '../../../../core/size/size.dart';

class CircularProgressIndicatorWidget extends StatefulWidget {
  const CircularProgressIndicatorWidget({Key? key}) : super(key: key);

  @override
  _CircularProgressIndicatorWidgetState createState() =>
      _CircularProgressIndicatorWidgetState();
}

class _CircularProgressIndicatorWidgetState
    extends State<CircularProgressIndicatorWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: SizeHelper.getHeightSize(context) * 0.08,
        width: SizeHelper.getHeightSize(context) * 0.067,
        child: const CircularProgressIndicator(strokeWidth: 5),
      ),
    );
  }
}
