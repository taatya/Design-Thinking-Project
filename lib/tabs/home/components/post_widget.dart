import 'package:clean_community/models/post.dart';
import 'package:clean_community/tabs/home/components/post_body.dart';
import 'package:clean_community/tabs/home/components/post_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'post_media.dart';

const accent = const Color(0xff023997);

class PostWidget extends StatefulWidget {
  final Post post;
  const PostWidget({super.key, required this.post});

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: accent,
        borderRadius: const BorderRadius.all(Radius.circular(30.0)),
      ),
      padding: EdgeInsets.only(top: 10, left: 20, right: 20),
      child: Column(children: [
        PostHeader(post: widget.post),
        PostBody(post: widget.post),
        PostMediaWidget(post: widget.post),
      ]),
    );
  }
}
