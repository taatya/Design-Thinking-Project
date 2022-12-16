import 'package:clean_community/models/post.dart';
import 'package:clean_community/tabs/home/components/post_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

const blue = const Color(0xff01154D);

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  List<Post> posts = [];

  @override
  void initState() {
    posts = TestData.getTestPosts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: blue,
      child: ListView.separated(
        padding: const EdgeInsets.all(12),
        itemCount: posts.length,
        itemBuilder: (BuildContext context, int index) {
          return PostWidget(post: posts[index]);
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
