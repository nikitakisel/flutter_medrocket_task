import 'package:flutter/cupertino.dart';

class PushButtonWidget extends StatelessWidget {
  final double width;
  final double height;
  final Color buttonColor;
  final Color textColor;
  final FontWeight? fontWeight;
  final double? fontSize;
  final String text;
  final void Function() onTapFunction;

  const PushButtonWidget({
    super.key,
    required this.width,
    required this.height,
    required this.buttonColor,
    required this.textColor,
    this.fontWeight,
    this.fontSize,
    required this.text,
    required this.onTapFunction,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFunction,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: SizedBox(
          width: width,
          height: height,
          child: ColoredBox(
            color: buttonColor,
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontWeight: fontWeight,
                  fontSize: fontSize,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
