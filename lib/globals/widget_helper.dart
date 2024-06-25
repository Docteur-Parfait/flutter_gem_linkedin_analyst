import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:linkedin_analyst/globals/custom_elevated_button.dart';
import 'package:linkedin_analyst/globals/style.dart';
import 'package:lottie/lottie.dart';

class WidgetHelper {
  static Widget customCircularLoading({String? status}) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset("assets/lotties/loading.json", width: Get.width * 0.8),
          const Gap(10),
          Text(
            status ?? "Loading...",
            style: globalTextStyle(color: ColorStyles.kPrimary, fontSize: 25),
          )
        ],
      ),
    );
  }

  static InputDecoration customDecorationMethod(
      {String label = "",
      bool labelIsText = true,
      Widget? widgetLabel,
      Widget? prefixIcon,
      Widget? suffixIcon,
      String? hintText,
      BoxConstraints? prefixIconConstraints}) {
    return InputDecoration(
        filled: true,
        hintText: hintText,
        prefixIconConstraints: prefixIconConstraints,
        contentPadding: const EdgeInsets.symmetric(vertical: 3, horizontal: 12),
        label: labelIsText
            ? Text(
                label,
                style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: ColorStyles.kBlack),
              )
            : widgetLabel,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        fillColor: ColorStyles.kPrimary.withOpacity(0.2),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide(
                width: 0, color: ColorStyles.kPrimary.withOpacity(0))),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide(
                width: 3, color: ColorStyles.kPrimary.withOpacity(1))),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide(
                width: 3, color: ColorStyles.kPrimary.withOpacity(1))),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide:
                BorderSide(width: 2, color: ColorStyles.kRed.withOpacity(1))));
  }

  static Widget errorElementComponent(
      {void Function()? onPressed,
      String status = "Loading error!",
      double size = 100}) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/error.png", width: size),
          const Gap(15),
          Text(
            status,
            style: globalTextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: ColorStyles.kRed),
          ),
          const Gap(20),
          CustomElevatedButton(text: "Try again", onPressed: onPressed),
        ],
      ),
    );
  }
}
