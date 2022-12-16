import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../models/post.dart';

class PostHeader extends StatelessWidget {
  final Post post;
  const PostHeader({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          child: SizedBox.fromSize(
            size: Size.fromRadius(30),
            child: Image.network(
              post.user.profileUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              post.user.userName,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(post.location.address)
          ],
        )
      ],
    );
  }
}
