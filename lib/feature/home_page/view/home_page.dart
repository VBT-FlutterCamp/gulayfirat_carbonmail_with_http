import 'package:carbon_email/feature/home_page/model/post_model.dart';
import 'package:carbon_email/feature/home_page/services/post_service.dart';
import 'package:carbon_email/feature/home_page/view/widget/circular_progress_indicator_widget.dart';
import 'package:carbon_email/feature/home_page/view/widget/sliver_appbar_widget.dart';
import 'package:carbon_email/feature/home_page/view/widget/sliver_box_adaptor_widget.dart';
import 'package:carbon_email/feature/home_page/view/widget/sliver_list_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PostService _postService = PostService();
  List<PostModel>? _postModel;
  bool isLoading = false;
  Future<void>? getData() async {
    _postModel = await _postService.getPost();
    setState(() {
      isLoading = !isLoading;
    });
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: CustomScrollView(
              slivers: [
                const SliverAppBarWidget(),
                const SliverBoxAdaptorWidget(),
                SliverListWidget(postModel: _postModel)
              ],
            ),
          )
        : const CircularProgressIndicatorWidget();
  }
}
