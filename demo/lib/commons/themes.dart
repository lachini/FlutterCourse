import 'package:demo/extensions/colour.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

ThemeData primaryTheme = ThemeData(
  brightness: Brightness.light,
  visualDensity: VisualDensity(vertical: 0.5, horizontal: 0.5),
  primarySwatch: MaterialColor(
    16498733, //colour in integer(decimal) format #fbc02d
    <int, Color>{
      50: HexColor.fromHex('#fde096'),
      100: HexColor.fromHex('#fdd981'),
      200: HexColor.fromHex('#fcd36c'),
      300: HexColor.fromHex('#fccd57'),
      400: HexColor.fromHex('#fbc642'),
      500: HexColor.fromHex('#fbc02d'),
      600: HexColor.fromHex('#e2ad29'),
      700: HexColor.fromHex('#c99a24'),
      800: HexColor.fromHex('#b0861f'),
      900: HexColor.fromHex('#97731b'),
    },
  ),
  primaryColor: HexColor.fromHex('#fbc02d'),
  fontFamily: 'Lato',
  appBarTheme: AppBarTheme(
      backgroundColor: HexColor.fromHex("#fbc02d"),
      textTheme: TextTheme(
        headline4: TextStyle(
          fontFamily: 'Lato',
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      )
      //app bar theme
      ),
  buttonTheme: ButtonThemeData(
      //button themes
      ),
  toggleButtonsTheme: ToggleButtonsThemeData(
      //toggle button theme
      ),
  buttonColor: Color(0xff936F3E),
  secondaryHeaderColor: Colors.grey,
  //textSelectionColor: Color(0xffB5BFD3),
  //cursorColor: Color(0xff936F3E),
  //textSelectionHandleColor: Color(0xff936F3E),
  backgroundColor: Color(0xff457BE0),
  dialogBackgroundColor: Colors.white,
  indicatorColor: Color(0xff457BE0),
  hintColor: Colors.grey,
  errorColor: Colors.red,
  toggleableActiveColor: Color(0xff6D42CE),
  // textTheme: TextTheme(
  //     //text themes that contrast with card and canvas
  //     ),
  // primaryTextTheme: TextTheme(
  //     //text theme that contrast with primary color
  //     ),
  // accentTextTheme: TextTheme(
  //     //text theme that contrast with accent Color
  //     ),
  // inputDecorationTheme: InputDecorationTheme(
  //     // default values for InputDecorator, TextField, and TextFormField
  //     ),
  // iconTheme: IconThemeData(
  //     //icon themes that contrast with card and canvas
  //     ),
  // primaryIconTheme: IconThemeData(
  //     //icon themes that contrast primary color
  //     ),
  // accentIconTheme: IconThemeData(
  //     //icon themes that contrast accent color
  //     ),
  // sliderTheme: SliderThemeData(
  //     // slider themes
  //     ),
  // tabBarTheme: TabBarTheme(
  //     // tab bat theme
  //     ),
  // tooltipTheme: TooltipThemeData(
  //     // tool tip theme
  //     ),
  // cardTheme: CardTheme(
  //     // card theme
  //     ),
  // chipTheme: ChipThemeData(
  //     backgroundColor: Color(0xff936F3E),
  //     disabledColor: Color(0xaaF5E0C3),
  //     shape: StadiumBorder(),
  //     brightness: Brightness.light,
  //     labelPadding: EdgeInsets.all(8),
  //     labelStyle: TextStyle(),
  //     padding: EdgeInsets.all(8),
  //     secondaryLabelStyle: TextStyle(),
  //     secondarySelectedColor: Colors.white38,
  //     selectedColor: Colors.white
  //     // chip theme
  //     ),
  // platform: TargetPlatform.android,
  // materialTapTargetSize: MaterialTapTargetSize.padded,
  // applyElevationOverlayColor: true,
  // pageTransitionsTheme: PageTransitionsTheme(
  //     //page transition theme
  //     ),
  // bottomAppBarTheme: BottomAppBarTheme(
  //     // bottom app bar theme
  //     ),
  // colorScheme: ColorScheme(
  //     primary: Color(0xffEDD5B3),
  //     primaryVariant: Color(0x1aF5E0C3),
  //     secondary: Color(0xffC9A87C),
  //     secondaryVariant: Color(0xaaC9A87C),
  //     brightness: Brightness.light,
  //     background: Color(0xffB5BFD3),
  //     error: Colors.red,
  //     onBackground: Color(0xffB5BFD3),
  //     onError: Colors.red,
  //     onPrimary: Color(0xffEDD5B3),
  //     onSecondary: Color(0xffC9A87C),
  //     onSurface: Color(0xff457BE0),
  //     surface: Color(0xff457BE0)),
  // snackBarTheme: SnackBarThemeData(
  //     // snack bar theme
  //     ),
  // dialogTheme: DialogTheme(
  //     // dialog theme
  //     ),
  // floatingActionButtonTheme: FloatingActionButtonThemeData(
  //     // floating action button theme
  //     ),
  // navigationRailTheme: NavigationRailThemeData(
  //     // navigation rail theme
  //     ),
  // typography: Typography.material2018(),
  // cupertinoOverrideTheme: CupertinoThemeData(
  //     //cupertino theme
  //     ),
  // bottomSheetTheme: BottomSheetThemeData(
  //     //bottom sheet theme
  //     ),
  // popupMenuTheme: PopupMenuThemeData(
  //     //pop menu theme
  //     ),
  // bannerTheme: MaterialBannerThemeData(
  //     // material banner theme
  //     ),
  // dividerTheme: DividerThemeData(
  //     //divider, vertical divider theme
  //     ),
  // buttonBarTheme: ButtonBarThemeData(
  //     // button bar theme
  //     ),
  //splashFactory: InkSplash.splashFactory
);

// ThemeData darkTheme = ThemeData(
//   brightness: Brightness.dark,
//   visualDensity: VisualDensity(vertical: 0.5, horizontal: 0.5),
//   primarySwatch: MaterialColor(
//     0xFFF5E0C3,
//     <int, Color>{
//       50: Color(0x1a5D4524),
//       100: Color(0xa15D4524),
//       200: Color(0xaa5D4524),
//       300: Color(0xaf5D4524),
//       400: Color(0x1a483112),
//       500: Color(0xa1483112),
//       600: Color(0xaa483112),
//       700: Color(0xff483112),
//       800: Color(0xaf2F1E06),
//       900: Color(0xff2F1E06)
//     },
//   ),
// );
