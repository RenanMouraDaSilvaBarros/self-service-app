import 'package:flutter/material.dart';

class Tag2 extends StatelessWidget {
  Color color;
  List<Widget>? children;

  Tag2({
    Key? key,
    required this.color,
    this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.all(Radius.circular(15)),
      elevation: 3,
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children ?? []),
      ),
    );
  }
}
