import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../models/post.dart';

class PostBody extends StatelessWidget {
  final Post post;
  const PostBody({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, left: 5),
      child: Text(
        post.description,
        textAlign: TextAlign.left,
      ),
    );
  }
}
