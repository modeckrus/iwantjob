import 'package:flutter/material.dart';

import 'color_extention.dart';


class MyDartTheme {
  static ThemeData darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: HexColor.fromHex('#1D252C'),
    hoverColor: HexColor.fromHex('#008B94'),
    appBarTheme: AppBarTheme(
        brightness: Brightness.dark,
        //  color: HexColor.fromHex('#008B94')),
        color: HexColor.fromHex('#181e24')),
    bottomAppBarColor: HexColor.fromHex('#181e24'),
    bottomAppBarTheme: BottomAppBarTheme(color: HexColor.fromHex('#181e24')),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: HexColor.fromHex('#181e24')),
    canvasColor: HexColor.fromHex('#181e24'),
    dialogBackgroundColor: HexColor.fromHex('#181e24'),
    textTheme: ThemeData.dark().textTheme.copyWith(
      headline1: TextStyle(
        color: Colors.white,
        fontSize: 30
      ),
      headline2: TextStyle(
        color: Colors.white,
        fontSize: 27
      ),
      headline3: TextStyle(
        color: Colors.white,
        fontSize: 24
      ),
      headline4: TextStyle(
        color: Colors.white,
        fontSize: 21
      ),
      headline5: TextStyle(
        color: Colors.white,
        fontSize: 18
      ),
    )
  );
}


const codeTheme = {
  'root':
      TextStyle(backgroundColor: Color(0x1D252C), color: Colors.white),
  'keyword': TextStyle(color: Color(0xff93c763), fontWeight: FontWeight.bold),
  'selector-tag':
      TextStyle(color: Color(0xff93c763), fontWeight: FontWeight.bold),
  'literal': TextStyle(color: Color(0xff93c763), fontWeight: FontWeight.bold),
  'selector-id': TextStyle(color: Color(0xff93c763)),
  'number': TextStyle(color: Color(0xffffcd22)),
  'attribute': TextStyle(color: Color(0xff668bb0)),
  'code': TextStyle(color: Color(0xffffffff)),
  'section': TextStyle(color: Color(0xffffffff), fontWeight: FontWeight.bold),
  'regexp': TextStyle(color: Color(0xffd39745)),
  'link': TextStyle(color: Color(0xffd39745)),
  'meta': TextStyle(color: Color(0xff557182)),
  'tag': TextStyle(color: Color(0xff8cbbad)),
  'name': TextStyle(color: Color(0xff8cbbad), fontWeight: FontWeight.bold),
  'bullet': TextStyle(color: Color(0xff8cbbad)),
  'subst': TextStyle(color: Color(0xff8cbbad)),
  'emphasis': TextStyle(color: Color(0xff8cbbad)),
  'type': TextStyle(color: Color(0xff8cbbad), fontWeight: FontWeight.bold),
  'built_in': TextStyle(color: Color(0xff8cbbad)),
  'selector-attr': TextStyle(color: Color(0xff8cbbad)),
  'selector-pseudo': TextStyle(color: Color(0xff8cbbad)),
  'addition': TextStyle(color: Color(0xff8cbbad)),
  'variable': TextStyle(color: Color(0xff8cbbad)),
  'template-tag': TextStyle(color: Color(0xff8cbbad)),
  'template-variable': TextStyle(color: Color(0xff8cbbad)),
  'string': TextStyle(color: Color(0xffec7600)),
  'symbol': TextStyle(color: Color(0xffec7600)),
  'comment': TextStyle(color: Color(0xff818e96)),
  'quote': TextStyle(color: Color(0xff818e96)),
  'deletion': TextStyle(color: Color(0xff818e96)),
  'selector-class': TextStyle(color: Color(0xffA082BD)),
  'doctag': TextStyle(fontWeight: FontWeight.bold),
  'title': TextStyle(fontWeight: FontWeight.bold),
  'strong': TextStyle(fontWeight: FontWeight.bold),
};