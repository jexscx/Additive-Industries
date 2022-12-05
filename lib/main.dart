import 'package:additive_industries/pages/main_page.dart';
import 'package:additive_industries/theme/theme_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = getTheme(context);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      home: new MainPage(),
    );
  }

  ThemeData getTheme(BuildContext context) {
    return ThemeData(
      fontFamily: "FrankNew",
      primaryColor: ThemeColors.darkBlue,
      accentColor: ThemeColors.amber,
      scaffoldBackgroundColor: ThemeColors.offWhite,
      unselectedWidgetColor: ThemeColors.darkBlue,
    );
  }
}
