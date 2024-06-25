import 'package:flutter/material.dart';
import 'package:linkedin_analyst/globals/style.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final bool outlined;
  final void Function()? onPressed;
  final Color bgColor;
  final Color frColor;

  const CustomElevatedButton({
    super.key,
    required this.text,
    this.onPressed,
    this.outlined = false,
    this.bgColor = ColorStyles.kPrimary,
    this.frColor = ColorStyles.kWhite,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          backgroundColor:
              WidgetStateProperty.all(outlined ? ColorStyles.kWhite : bgColor),
          padding: WidgetStateProperty.all(const EdgeInsets.all(12)),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                  side: BorderSide(color: bgColor)))),
      child: Text(
        text,
        style: globalTextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: outlined ? bgColor : frColor),
      ),
    );
  }
}

class CustomIconButton extends StatelessWidget {
  final bool outlined;
  final void Function()? onPressed;
  final Color bgColor;
  final Color frColor;
  final IconData icon;

  const CustomIconButton(
      {super.key,
      this.onPressed,
      this.outlined = false,
      this.bgColor = ColorStyles.kSecondary,
      this.frColor = ColorStyles.kWhite,
      this.icon = Icons.chat});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          backgroundColor:
              WidgetStateProperty.all(outlined ? ColorStyles.kWhite : bgColor),
          padding: WidgetStateProperty.all(const EdgeInsets.all(12)),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(color: bgColor)))),
      child: Icon(
        icon,
        color: outlined ? bgColor : frColor,
      ),
    );
  }
}
