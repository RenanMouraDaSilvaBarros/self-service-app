import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const DIVIDER = SizedBox(height: 42, width: 42);
const DIVIDER_MEDIUM =  SizedBox(height: 16, width: 16);
const DIVIDER_SMALL = SizedBox(height: 10, width: 10);

final styleText = GoogleFonts.roboto(fontSize: 18);
final styleTextSmall = GoogleFonts.roboto(fontSize: 14);
final styleDashboard = GoogleFonts.roboto(fontSize: 18, color: Colors.white);
const  fontDashboarSize = 30.0;
const  fontSizeTitleDashboar = 30.0;

const userColor = Color(0xff2d3436);
const bookColor = Color(0xff0984e3);
const editoraColor = Color(0xff8e44ad);
const rentColor = Color(0xff00b894);

const editingColor = Color(0xffd63031);
const buttonEditingColor = Color(0xffd63031);

const AVAILABLE = Icon(
  Icons.check_circle_outline,
  color: Colors.green,
  size: 5,
);
const UNAVAILABLE = Icon(
  Icons.do_not_disturb_sharp,
  color: Colors.red,
  size: 5,
);

Widget EXPANDED = Container(
  height: 200,
);

BoxDecoration DECORATION = const BoxDecoration(
    color: Colors.black,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(40.0),
      topRight: Radius.circular(40.0),
    ));
