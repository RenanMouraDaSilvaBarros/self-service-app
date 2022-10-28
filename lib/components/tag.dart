import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tag extends StatelessWidget {
   String title;
   Color color;
   Widget? child;

   Tag({
    Key? key,
    required this.title,
    required this.color, this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      elevation: 3,
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.roboto(fontSize: 12, color: Colors.white),
            ),
            child ?? Container()
          ],
        ),
      ),
    );
  }
}
