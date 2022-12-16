import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewPostTab extends StatefulWidget {
  const NewPostTab({super.key});

  @override
  State<NewPostTab> createState() => _NewPostTabState();
}

class _NewPostTabState extends State<NewPostTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
    );
  }
}
