import 'package:flutter/material.dart';

abstract class ColorResources {
  static const Color successColor = Color.fromARGB(255, 76, 175, 80);
  static const Color errorColor = Color.fromARGB(255, 244, 67, 54);
  static const Color warningColor = Color.fromARGB(255, 240, 156, 0);
  static const Color awardOrangeColor = Color(0xFFF4990E);

  static const Color transparent = Color.fromARGB(0, 0, 0, 0);

  static const Color blackColor = Color.fromRGBO(0, 0, 0, 1);
  static const Color blackColor2 = Color(0xFF111425);
  static const Color green2 = Color(0xFF59B337);
  static const Color whiteColor = Color.fromRGBO(255, 255, 255, 1);

  static const Color primaryTextColor = Color(0xff252525);
  static const Color secondaryTextColor = Color(0xff7C7C7B);

  static const Color borderColor = Color(0xffD0D0D0);
  static const Color btnDarkYellowBgColor = Color(0xffD7B169);
  static const Color btnBgColor = Color(0xff000000);

  static const Color primaryColor = Color(0xFFFFD900);
  static const Color secondaryColor = Color(0xFF004FB6);
  static const Color darkerBlue = Color(0xFF435AAC);
  static const Color purpleBlue = Color(0xFF5E70AF);
  static const Color accentColor = Color(0xFFFFF9D5);

  //app color
  static const Color lightGreyColor = Color(0xFFD0D0D0);
  static const Color greyIndicateColor = Color(0xFF5C596D);
  static const Color darkGreyColor = Color(0xFF333333);
  static const Color greyColor = Color(0xFF7C7C7B);
  static const Color textGreyColor = Color(0xFF808080);
  static const Color grey2Color = Color(0xFF5C596D);
  static const Color greyBorderColor = Color(0xFFB4B4B4);
  static const Color calanderGrey = Color(0xFFB4B4B4);

  // static const Color  = Color(0xFFCBCCCD33);

  //
  static const Color fitnessColor = Color(0xFFF8EFFE);
  static const Color nutritionColor = Color(0xFFFCEFCC);
  static const Color heartRateColor = Color(0xFFF6FFE2);
  static const Color mentalWellnessColor = Color(0xFFE2E9FF);
  static const Color financialWellnessColor = Color(0xFFFFE2EE);
  static const Color bannerBg = Color(0xFF694074);
  static const Color bannerBg2 = Color(0xFF370046);
  static const Color skyBlue = Color(0xFF9AC4FA);
  static const Color skyBlueLight = Color(0xFFD5ECFE);
  static const Color skyBlue_30 = Color(0x4D9AC4FA);
  static const Color walkathonBg = Color(0xFF39A9AD);
  static const Color oceanBlue = Color(0xFF3B98AC);
  static const Color shadowColor = Color(0xFF0A2F68);

  static const Color shadowColor2 = Color(0xffD0D0D0);
  static const Color lightBlue = Color(0xFF437CC1);
  static const Color textColor = Color(0xFF333333);
  static const Color darkGreyBorder = Color(0xFF525252);
  static const Color textColorBlack = Color(0xFF000000);
  static const Color lightestBlueColor = Color(0xFF2C72CD);
  static const Color blue2Color = Color(0xFF048BED);
  static const Color redTextColor = Color(0xff8D1218);
  static const Color sleepCard = Color(0xFFE8E8E8);
  static const Color sleepValue = Color(0xFF696969);
  static const Color waterIntakeCard = Color(0xFFD1F7F8);
  static const Color waterIntakeValue = Color(0xFF696969);
  static const Color activeHoursCard = Color(0xFFFFEACD);
  static const Color activeHoursValue = Color(0xFFE0B375);
  static const Color caloriesCard = Color(0xFFFBE3E6);
  static const Color caloriesValue = Color(0xFFEE404C);
  static const Color kmCard = Color(0xFFDFF8F6);
  static const Color kmValue = Color(0xFF00837B);
  static const Color purple = Color(0xFF9F5F91);
  static const Color yellow = Color(0xFFFFBF00);
  static const Color cyan = Color(0xFF0AA7CA);
  static const Color green = Color(0xFF2C7C3E);
  static const Color darkorange = Color(0xFFD96704);
  static const Color darkBlue = Color(0xFF1B4BAA);
  static const Color darkRed = Color(0xFFB40014);
  static const Color pink = Color(0xFFEE404C);
  static const Color darkGreen = Color(0xFF258B3E);
  static const Color lightBlueCard = Color(0xFFD3E1FD);
  static const Color lightPinkCard = Color(0xFFF9D8FF);
  static const Color lightGreenCard = Color(0xFFC5FFD1);
  static const Color sLightBlue = Color(0xFFF5F9FF);
  static const Color blueShadeColor = Color(0xFFE1EFFF);
  static const Color blueShade2Color = Color(0xFF9FCCFF);
  static const Color brownColor = Color(0xFFB99A6F);

  static const Color dassNormal = Color(0xffADDC91);
  static const Color dassMild = Color(0xff069E76);
  static const Color dassModerate = Color(0xffF88F55);
  static const Color dassSevere = Color(0xffEE404C);
  static const Color dassExtremelySevere = Color(0xffDE3335);

  //
  static const Color blackInShade = Color(0xff231F20);
  static const Color kclGrey = Color(0xff999999);
  static const Color breakfastContainer = Color(0xffF0F5FB);

  static const List<Color> walkathonGradient = [
    Color(0xffADD5F6),
    Color(0xff3076CF)
  ];

  static const List<Color> avivaGradient = [
    Color(0xffF0F5FB),
    Color(0xffF5ECAC)
  ];

  static const Color walkathonCardBg = Color(0x01ffffff);

  static MaterialColor getMaterialColor(Color color) {
    final Map<int, Color> shades = {
      50: const Color.fromRGBO(136, 14, 79, .1),
      100: const Color.fromRGBO(136, 14, 79, .2),
      200: const Color.fromRGBO(136, 14, 79, .3),
      300: const Color.fromRGBO(136, 14, 79, .4),
      400: const Color.fromRGBO(136, 14, 79, .5),
      500: const Color.fromRGBO(136, 14, 79, .6),
      600: const Color.fromRGBO(136, 14, 79, .7),
      700: const Color.fromRGBO(136, 14, 79, .8),
      800: const Color.fromRGBO(136, 14, 79, .9),
      900: const Color.fromRGBO(136, 14, 79, 1),
    };
    return MaterialColor(color.value, shades);
  }
}
