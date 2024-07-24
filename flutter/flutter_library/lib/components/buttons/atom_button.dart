import 'package:flutter/material.dart';

// --------------------------------------
//     Custom Button의 기본이 되는 버튼
// --------------------------------------

// 어플리케이션을 만들 때, 재사용성을 높이는 것이 중요합니다.
// 또한, 중구난방으로 버튼이 사용되는 것은 좋지 않으니 다음과 같이 사이즈를 고정시켜 관리합니다.
enum Width { xs, s, m, l, xl }

enum Height { xs, s, m, l, xl }

enum Shape { circle, rectangle }

// 필요한 값들을 required 로 처리하고, final로 정의합니다.
// 이후 width/height를 연산하는 과정을 진행합니다.
class AtomButton extends StatelessWidget {
  const AtomButton({
    super.key,
    required this.width,
    required this.height,
    required this.shape,
    required this.child,
    required this.backgroundColor,
    required this.borderColor,
    required this.foregroundColor,
    required this.fontSize,
    required this.onPressed,
  });

  final Width width;
  final Height height;
  final Shape shape;
  final Widget child;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color foregroundColor;
  final double fontSize;
  final VoidCallback onPressed;

  // 아래는 높이와 너비를 연산하는 과정입니다.
  double get horizontal {
    switch (width) {
      case Width.xs:
        return 0.4;
      case Width.s:
        return 0.5;
      case Width.m:
        return 0.6;
      case Width.l:
        return 0.7;
      case Width.xl:
        return 0.8;
    }
  }

  double get vertical {
    switch (height) {
      case Height.xs:
        return 0.02;
      case Height.s:
        return 0.04;
      case Height.m:
        return 0.08;
      case Height.l:
        return 0.16;
      case Height.xl:
        return 0.2;
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    print(size.width);
    print(size.height);
    return SizedBox(
      width: horizontal * size.width,
      height: vertical * size.height,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor ?? Colors.transparent,
            foregroundColor: foregroundColor,
            textStyle: TextStyle(fontSize: fontSize),
            padding:
                EdgeInsets.all(0), // padding 0을 통해 버튼 내부 컨텐츠가 빠져 나가는 경우를 방지합니다.
            side: borderColor == null
                ? null
                : BorderSide(width: 1, color: borderColor!),
            shape: shape == Shape.circle
                ? null
                : RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
          ),
          onPressed: onPressed,
          child: child),
    );
  }
}
