import 'package:flutter/material.dart';

import '../utils/color.dart';

class Search extends StatelessWidget {
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;

  const Search({
    Key? key,
    this.controller,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: MyColors.gray5,
          border: Border.all(color: Colors.black, width: 2)),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: "   Pesquisar",
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black, width: 2.0),
            borderRadius: BorderRadius.circular(13.0),
          ),
        ),
        onChanged: onChanged,
      ),
    );
  }
}
