import 'package:flutter/material.dart';

import '../../../models/post.dart';

class PostMediaWidget extends StatelessWidget {
  final Post post;
  const PostMediaWidget({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(80),
                    child: Image.network(
                      post.imageUrls[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
            itemCount: post.imageUrls.length));
  }
}
