import 'package:flutter/material.dart';
import '../../../../core/size/size.dart';
import '../../../../pruduct/companents/colors/app_colors.dart';
import '../../../../pruduct/widgets/build_text_style_widget.dart';
import '../../model/post_model.dart';

class SliverListWidget extends StatefulWidget {
  final List<PostModel>? postModel;
  const SliverListWidget({Key? key, required this.postModel}) : super(key: key);

  @override
  _SliverListWidgetState createState() => _SliverListWidgetState();
}

class _SliverListWidgetState extends State<SliverListWidget> {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 7),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColor.primaryLightColor),
            child: ListTile(
              title: BuildTextStyleWidget(
                  text: widget.postModel?[index].name ?? ''),
              subtitle: BuildTextStyleWidget(
                  text: widget.postModel?[index].email ?? ''),
              trailing: Container(
                height: SizeHelper.getHeightSize(context) * 0.08,
                width: SizeHelper.getHeightSize(context) * 0.067,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColor.deleteIconBackgroundColor),
                child:
                    const Icon(Icons.delete, color: AppColor.deleteIconColor),
              ),
            ),
          ),
        );
      }, childCount: widget.postModel?.length ?? 0),
    );
  }
}
