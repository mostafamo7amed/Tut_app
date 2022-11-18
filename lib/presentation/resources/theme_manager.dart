import 'package:clean_code/presentation/resources/color_manager.dart';
import 'package:clean_code/presentation/resources/font_manager.dart';
import 'package:clean_code/presentation/resources/styles_manager.dart';
import 'package:clean_code/presentation/resources/value_manager.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // application color
    primaryColor: ColorManager.primary,
    primaryColorDark: ColorManager.darkPrimary,
    primaryColorLight: ColorManager.lightPrimary,
    disabledColor: ColorManager.gray1,
    splashColor: ColorManager.lightPrimary,

    cardTheme: CardTheme(
      color: ColorManager.white,
      elevation: AppSize.s4,
      shadowColor: ColorManager.gray,
    ),

    appBarTheme: AppBarTheme(
      shadowColor: ColorManager.lightPrimary,
      color: ColorManager.primary,
      centerTitle: true,
      elevation: AppSize.s4,
      titleTextStyle: getRegularStyle(
          color: ColorManager.white, fontSize: FontSizeManager.s16),
    ),

    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.lightPrimary,
      disabledColor: ColorManager.gray1,
      textTheme: ButtonTextTheme.normal,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s10),
        ),
        backgroundColor: ColorManager.primary,
        textStyle: getRegularStyle(
            color: ColorManager.white, fontSize: FontSizeManager.s16),
      ),
    ),

    textTheme: TextTheme(
      headline1: getSemiBoldStyle(
          color: ColorManager.darkGray, fontSize: FontSizeManager.s16),
      subtitle1: getMediumStyle(
          color: ColorManager.lightGray, fontSize: FontSizeManager.s12),
      bodyText1: getRegularStyle(color: ColorManager.gray),
      caption: getRegularStyle(
        color: ColorManager.gray1,
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(AppPadding.p4),
      hintStyle: getRegularStyle(
          color: ColorManager.gray, fontSize: FontSizeManager.s14),
      labelStyle: getRegularStyle(
          color: ColorManager.gray, fontSize: FontSizeManager.s14),
      errorStyle: getRegularStyle(color: ColorManager.error),
      //
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.gray, width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.error, width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
    ),
  );
}
