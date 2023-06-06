import 'package:flutter/material.dart';
import 'package:my_tel_birr/Constants/getSize.dart';

class Styles {
  static const largeBoldText = TextStyle(
    fontSize: 27,
    fontWeight: FontWeight.w900,
    color: Colors.blueAccent,
  );

  static const labelBoldBlackText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.black87,
  );

  static const buttonGrdient = LinearGradient(colors: <Color>[
    Color(0xff06186d),
    Color(0xff1d3aa3),
    Color(0xff203faa),
  ], tileMode: TileMode.mirror);

  static const blueContainerGrdient = LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: <Color>[
        Color(0xff06186d),
        Color(0xff4066d2),
        Color(0xff203faa),
      ],
      tileMode: TileMode.mirror);

  static const yellowishGrdient = LinearGradient(colors: <Color>[
    Color(0xffe8182e),
    Color(0xfff55460),
  ], tileMode: TileMode.mirror);

  static const blueGrdient = LinearGradient(colors: <Color>[
    Color(0xff1266e7),
    Color(0xff1f81e8),
    Color(0xff1266e7),
  ], tileMode: TileMode.mirror);

  static const defaultButtonGrdient = LinearGradient(
    colors: <Color>[
      Color(0xffffffff),
      Color(0xffffffff),
      Color(0xffffffff),
    ],
    tileMode: TileMode.mirror,
  );

  static const appGrdient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: <Color>[
      Color(0xffffffff),
      Color(0xffffffff),
      Color(0xffffffff),
      Color(0xffffffff),
      Color(0xffffffff),
      Color(0xffffffff),
      Color(0xffffffff),
      Color(0xffcce0d8),
      Color(0xffffffff),
      Color(0xffffffff),
      Color(0xffffffff),
      Color(0xffffffff),
      Color(0xffcec2c2),
    ],
    tileMode: TileMode.mirror,
  );

  static const blueWhiteBlueGrdient = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: <Color>[
      Color(0xff072079),
      Color(0xff405ae2),
      Color(0xff405ae2),
      Color(0xff1e33ce),
    ],
    tileMode: TileMode.mirror,
  );

  static const kBgColor = LinearGradient(
    colors: [
      Colors.indigo,
      Colors.red,
    ],
  );

  static final kInputDecoration = InputDecoration(
    filled: true,
    fillColor: const Color(0xfff5f1f0),
    isCollapsed: true,
    icon: null,
    hintText: 'Enter the value',
    hintStyle: const TextStyle(
      fontSize: 18,
      color: Colors.black87,
    ),
    contentPadding: EdgeInsets.symmetric(
      vertical: GetSize.getScreenHeightDevice(5),
      horizontal: GetSize.getScreenWidthDevice(15),
    ),
    border: const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(5.0),
      ),
    ),
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
      borderRadius: BorderRadius.all(
        Radius.circular(5.0),
      ),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.blueAccent, width: 1.5),
      borderRadius: BorderRadius.all(
        Radius.circular(5.0),
      ),
    ),

  );

  static const noticeLabel = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const kLinkText = TextStyle(
      color: Colors.indigoAccent, fontSize: 15, fontWeight: FontWeight.bold);

  static const copyRight = TextStyle(
    fontSize: 14,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.bold,
  );

  static const italicText = TextStyle(
    fontSize: 14,
    fontStyle: FontStyle.italic,
    color: Colors.white,
  );

  static const blueText = TextStyle(
      color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 14);

  static const boldTextCard = TextStyle(
    fontSize: 14,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w900,
    color: Colors.white,
  );

  static const buttonLabelStyle = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
}
