import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xFF54AD43);
  static const Color textColor = Colors.white;
  static const Color mzdColor = Color(0xFF1B2D3D);
  static const Color lightbackgroundColor = Color(0xFFE0E0E4);
  static const Color backgroundColor = Color(0xFF676769);
  static const Color redColor = Color(0xFF995962);

  static const Color greenColor = Color(0xFF78C6BB);
  static const Color green1Color = Color(0xFF74C1C6);
  static const Color green2Color = Color(0xFF6ECAB0);
  static const Color femeninoxColor = Color(0xFFDCA69C);
  static const Color femenino2Color = Color(0xFFB79593);
  static const Color unisex1Color = Color(0xFFBEC6FF);
  static const Color unisex2Color = Color(0xFFA6A3C6);

  static final ThemeData unisexTheme = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(
      //color: primary,
      elevation: 0,
    ),
    primaryColor: unisex2Color,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: unisex2Color,

    cursorColor: Colors.orange,

    //primaryIconTheme: IconThemeData(color: Colors.black),
    //TextButton Theme
    textButtonTheme:
        TextButtonThemeData(style: TextButton.styleFrom(primary: textColor)),
    //FloatingActionButton
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5,
    ),
    //ElevatedButtons
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: const Color(0xFF54AD43),
        shape: const StadiumBorder(),
        elevation: 0,
      ),
    ),
  );
  static final ThemeData blueTheme = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(
      //color: primary,
      elevation: 0,
    ),
    primaryColor: mzdColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: mzdColor,

    cursorColor: Colors.orange,

    //primaryIconTheme: IconThemeData(color: Colors.black),
    //TextButton Theme
    textButtonTheme:
        TextButtonThemeData(style: TextButton.styleFrom(primary: textColor)),
    //FloatingActionButton
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5,
    ),
    //ElevatedButtons
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: const Color(0xFF54AD43),
        shape: const StadiumBorder(),
        elevation: 0,
      ),
    ),
  );
  static final ThemeData mzdLightTheme = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(
      color: textColor,
      elevation: 0,
    ),
    primaryColor: mzdColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: lightbackgroundColor,

    cursorColor: Colors.orange,

    primaryIconTheme: IconThemeData(color: Colors.black),
    //TextButton Theme
    textButtonTheme:
        TextButtonThemeData(style: TextButton.styleFrom(primary: textColor)),
    // FloatingActionButton
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5,
    ),
    // ElevatedButtons
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: const Color(0xFF54AD43),
        shape: const StadiumBorder(),
        elevation: 0,
      ),
    ),
  );
  static final ThemeData cinzaTheme = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(
      color: textColor,
      elevation: 0,
    ),
    primaryColor: mzdColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: backgroundColor,

    cursorColor: Colors.orange,

    primaryIconTheme: IconThemeData(color: Colors.black),
    //TextButton Theme
    textButtonTheme:
        TextButtonThemeData(style: TextButton.styleFrom(primary: textColor)),
    // FloatingActionButton
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5,
    ),
    // ElevatedButtons
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: const Color(0xFF54AD43),
        shape: const StadiumBorder(),
        elevation: 0,
      ),
    ),
  );
  static final ThemeData purpleTheme = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(
      //color: primary,
      elevation: 0,
    ),
    primaryColor: Colors.purple,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: Colors.purple,
    cursorColor: Colors.orange,
// TextButton Theme
    textButtonTheme:
        TextButtonThemeData(style: TextButton.styleFrom(primary: textColor)),
    // FloatingActionButton
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5,
    ),
    // ElevatedButtons
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: const Color(0xFF54AD43),
        shape: const StadiumBorder(),
        elevation: 0,
      ),
    ),
  );
  static final ThemeData blackTheme = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(
      //color: primary,
      elevation: 0,
    ),
    primaryColor: Colors.black,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: Colors.black,
    cursorColor: Colors.orange,
// TextButton Theme
    textButtonTheme:
        TextButtonThemeData(style: TextButton.styleFrom(primary: textColor)),
    // FloatingActionButton
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5,
    ),
    // ElevatedButtons
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: const Color(0xFF54AD43),
        shape: const StadiumBorder(),
        elevation: 0,
      ),
    ),
  );
  static final ThemeData redTheme = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(
      //color: primary,
      elevation: 0,
    ),
    primaryColor: redColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: redColor,
    cursorColor: Colors.orange,
// TextButton Theme
    textButtonTheme:
        TextButtonThemeData(style: TextButton.styleFrom(primary: textColor)),
    // FloatingActionButton
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5,
    ),
    // ElevatedButtons
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: const Color(0xFF54AD43),
        shape: const StadiumBorder(),
        elevation: 0,
      ),
    ),
  );
  static final ThemeData greenTheme = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(
      //color: primary,
      elevation: 0,
    ),
    primaryColor: green2Color,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: green2Color,
    cursorColor: Colors.orange,
// TextButton Theme
    textButtonTheme:
        TextButtonThemeData(style: TextButton.styleFrom(primary: textColor)),
    // FloatingActionButton
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5,
    ),
    // ElevatedButtons
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: const Color(0xFF54AD43),
        shape: const StadiumBorder(),
        elevation: 0,
      ),
    ),
  );

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    //textTheme: const TextTheme(headline: TextStyle(color: Colors.black)),
    primaryColor: Colors.indigo,

    //AppBar theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),
// TextButton Theme
    textButtonTheme:
        TextButtonThemeData(style: TextButton.styleFrom(primary: textColor)),
// ScaffoldBackgroundColor
    //scaffoldBackgroundColor: const Color(0xFF222428),

    // FloatingActionButton

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5,
    ),

    // ElevatedButtons

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: const Color(0xFF54AD43),
        shape: const StadiumBorder(),
        elevation: 0,
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    //cor primária
    primaryColor: Colors.indigo,

    //AppBar theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),
// TextButton Theme
    textButtonTheme:
        TextButtonThemeData(style: TextButton.styleFrom(primary: textColor)),
// ScaffoldBackgroundColor
    scaffoldBackgroundColor: const Color(0xFF000000),

    // FloatingActionButton

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5,
    ),

    // ElevatedButtons

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: const Color(0xFF3D3F42),
        shape: const StadiumBorder(),
        elevation: 0,
      ),
    ),
  );
  /* static final ThemeData mzdLightTheme = ThemeData.light().copyWith(
    //cor primária
    primaryColor: Colors.indigo,

    //AppBar theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),
// TextButton Theme
    textButtonTheme:
        TextButtonThemeData(style: TextButton.styleFrom(primary: textColor)),
// ScaffoldBackgroundColor
    scaffoldBackgroundColor: const Color(0xFFE0E0E4),

    // FloatingActionButton

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5,
    ),

    // ElevatedButtons

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: const Color(0xFF54AD43),
        shape: const StadiumBorder(),
        elevation: 0,
      ),
    ),
  ); */

  static final ThemeData mzdDarkTheme = ThemeData.dark().copyWith(
    //cor primária
    primaryColor: Colors.indigo,

    //AppBar theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),
// TextButton Theme
    textButtonTheme:
        TextButtonThemeData(style: TextButton.styleFrom(primary: textColor)),
    //ScaffoldBackgroundColor
    scaffoldBackgroundColor: const Color.fromRGBO(62, 66, 107, 0.7),

    // FloatingActionButton

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5,
    ),

    // ElevatedButtons

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: const Color(0xFF54AD43),
        shape: const StadiumBorder(),
        elevation: 0,
      ),
    ),
  );
}
