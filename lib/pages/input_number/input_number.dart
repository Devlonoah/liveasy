import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liveasy_assignment/global_widget/button_widget.dart';
import 'package:liveasy_assignment/global_widget/header_with_subtitle.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:liveasy_assignment/extension/widget_extension.dart';
import 'package:liveasy_assignment/localization/colors.dart';
import 'package:liveasy_assignment/localization/spacing.dart';
import 'package:liveasy_assignment/localization/style.dart';
import 'package:liveasy_assignment/localization/translation_constant.dart';
import 'package:liveasy_assignment/pages/otp_input/otp_input.dart';
import 'package:liveasy_assignment/extension/string_extension.dart';

class InputNumber extends StatelessWidget {
  static String id = "inputnumber";

  const InputNumber({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: InputBody());
  }
}

class InputBody extends StatelessWidget {
  const InputBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          addVerticalSpace(88),
          HeaderWithSubtitle(
            title: TranslationConstant.pleaseenteryournumber.t(context),
            subtitle: TranslationConstant.youllrecieve4digitcode.t(context)!,
          ),
          addVerticalSpace(20),
          mobileNumberInput(context),
          addVerticalSpace(24),
          ButtonWidget(
            label: TranslationConstant.continuex.t(context)!,
            onPress: () => navigatetoOtpInputPage(context),
          ),
        ],
      ),
    ).addPadding().addScrollChildView();
  }

  Widget mobileNumberInput(BuildContext context) {
    return Container(
      height: 48.h,
      width: double.infinity,
      decoration: BoxDecoration(border: Border.all(width: 1.sp)),
      child: Row(
        children: [
          CountryListPick(
            pickerBuilder: (context, countryCode) {
              return Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  addHorizontalSpace(10),
                  Image.asset(
                    countryCode!.flagUri!,
                    package: 'country_list_pick',
                    height: 24.w,
                    width: 24.w,
                    fit: BoxFit.cover,
                  ),
                  addHorizontalSpace(10),
                  Text(
                    countryCode.dialCode!.toString(),
                    style: countryCodeTextStyle,
                  ),
                ],
              );
            },
            onChanged: (x) => print(x),
          ),
          Container(
            color: Pallete.darkPurple.withOpacity(0.5),
            height: 15.h,
            width: 2.w,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 0),
              child: TextField(
                decoration: InputDecoration.collapsed(
                    hintText:
                        TranslationConstant.mobilenumberhinttext.t(context),
                    hintStyle: otpHintTextStyle),
              ).addPadding(),
            ),
          )
        ],
      ),
    );
  }
}

navigatetoOtpInputPage(BuildContext context) =>
    Navigator.pushNamed(context, OtpInputPage.id);
