import 'package:flutter/material.dart';

const bgColor = Color(0xFFD0DDD7);

// cards, appBars, navBars,
// everything directly on the background
// will use this.
const fgWhite = Colors.white70;

// for buttons and interactive objects
final btnWhite = Colors.white.withOpacity(0.9);

final mainBtnTheme = ElevatedButton.styleFrom(
  elevation: 2,
  minimumSize: const Size(200, 50),
  backgroundColor: btnWhite,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(25),
  )
);

final btnWhiteTheme = ElevatedButton.styleFrom(
  elevation: 2,
  backgroundColor: btnWhite,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(5),
  )
);
final btnGreenTheme = ElevatedButton.styleFrom(
  elevation: 2,
  backgroundColor: const Color(0xFF77CD70),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(5),
  )
);
final btnRedTheme = ElevatedButton.styleFrom(
  elevation: 2,
  backgroundColor: const Color(0xFFDD8080),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(5),
  )
);
final txtBtnTheme = TextButton.styleFrom(
  padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
);

const generalShadow = BoxShadow(
  color: Color(0x3F000000),
  blurRadius: 4,
  offset: Offset(0, 0),
  spreadRadius: 0,
);

const mainGradient = LinearGradient(
  begin: Alignment(0.71, -0.71),
  end: Alignment(-0.71, 0.71),
  colors: [Color(0xFFB2D3C2), Color(0xFFEBEBEB)],
);

const bodyLarge = TextStyle(
  color: Colors.black,
  fontSize: 32,
  fontFamily: 'Quicksand',
  fontWeight: FontWeight.w900,
);
const bodyMedium = TextStyle(
  color: Colors.black,
  fontSize: 20,
  fontFamily: 'Quicksand',
  fontWeight: FontWeight.w600,
);
const bodySmall = TextStyle(
  color: Colors.black,
  fontSize: 16,
  fontFamily: 'Quicksand',
  fontWeight: FontWeight.w500,
);
const bodySmallRed = TextStyle(
  color: Color(0xFFDD3030),
  fontSize: 16,
  fontFamily: 'Quicksand',
  fontWeight: FontWeight.w500,
);