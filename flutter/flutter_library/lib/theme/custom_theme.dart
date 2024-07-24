import 'package:flutter/material.dart';
import 'package:flutter_library/theme/colors.dart';

// ColorScheme 요소 참고
// https://api.flutter.dev/flutter/material/ColorScheme-class.html

// 사용법 (TextStyle 등-)
// color: Theme.of(context).colorScheme.tertiary

class CustomTheme {
  static ThemeData darkTheme = ThemeData(
      fontFamily: 'Pretendard',
      appBarTheme: const AppBarTheme(
        backgroundColor: DarkColors.button1,
      ),
      colorScheme: const ColorScheme(
        // 공식문서 required + 필요한 요소들
        // 'on[요소]' = 해당 [요소] 위 텍스트/아이콘 색상 -- 1차적으로 버튼 색상 기준으로 맞췄음
        brightness: Brightness.dark,
        //
        primary: DarkColors.primary, // 메인 yellow
        onPrimary: DarkColors.button1, // 메인 yellow 위 글씨 컬러
        //
        secondary: DarkColors
            .button1, // 보조 색상. 우린 보조 색상은 따로 없는데, disabled 버튼 색이 많이 지정돼있으니까 그걸로 지정했음
        onSecondary: Colors.white,
        //
        tertiary: DarkColors
            .bluePass, // 마찬가지로 보조 색상은 따로 없지만 acconts 구간에서 자주 쓰이는 색상이라서 지정함
        onTertiary: DarkColors.textTitle1,
        tertiaryContainer: DarkColors.accept1, // 중복 확인 완료에서만 쓰임 - 버튼이랑 같이 묶었음
        //
        error: DarkColors.redDanger, // Error 상징색
        onErrorContainer: DarkColors.redDanger2, // Error 버튼 배경색
        onError: Colors.white,
        //
        surface: Colors.black, // 플러터가 'background' 대신 이거 쓰랍니다
        surfaceContainerLow: DarkColors
            .backgroundMain, // 모달, 기본 박스 등 검정 배경 위에 바로 올려지는 첫 Container 배경색
        surfaceContainer: DarkColors.backgroundBlock3,
        surfaceContainerHigh: DarkColors.backgroundBlock2,
        onSurface: DarkColors.textTitle1, // 모달 위 글씨는 살짝 옅어진 TextTitle 지정했었음
      ));

  static ThemeData lightTheme = ThemeData(
      fontFamily: 'Pretendard',
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        //
        primary: LightColors.primary, // 메인 yellow
        onPrimary: LightColors.button1, // 메인 yellow 위 글씨 컬러
        //
        secondary: LightColors
            .button1, // 보조 색상. 우린 보조 색상은 따로 없는데, disabled 버튼 색이 많이 지정돼있으니까 그걸로 지정했음
        onSecondary: Colors.white,
        //
        tertiary: LightColors
            .bluePass, // 마찬가지로 보조 색상은 따로 없지만 acconts 구간에서 자주 쓰이는 색상이라서 지정함
        onTertiary: LightColors.textTitle1,
        tertiaryContainer: LightColors.accept1, // 중복 확인 완료에서만 쓰임 - 버튼이랑 같이 묶었음
        //
        error: LightColors.redDanger, // Error 상징색
        onErrorContainer: LightColors.redDanger2, // Error 버튼 배경색
        onError: Colors.white,
        //
        surface: Colors.white, // 플러터가 'background' 대신 이거 쓰랍니다
        surfaceContainerLow: LightColors
            .backgroundMain, // 모달, 기본 박스 등 검정 배경 위에 바로 올려지는 첫 Container 배경색
        surfaceContainer: LightColors.backgroundBlock3,
        surfaceContainerHigh: LightColors.backgroundBlock2,
        onSurface: LightColors.textTitle1, //
      ));
}
