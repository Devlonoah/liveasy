import 'package:flutter/material.dart';
import 'package:liveasy_assignment/constants/spacing.dart';
import 'package:liveasy_assignment/constants/style.dart';
import 'package:liveasy_assignment/constants/translation_constant.dart';
import 'package:liveasy_assignment/global_widget/button_widget.dart';
import 'package:liveasy_assignment/global_widget/header_with_subtitle.dart';
import 'package:liveasy_assignment/pages/account_type/acount_type.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:liveasy_assignment/extension/widget_extension.dart';
import 'package:liveasy_assignment/extension/string_extension.dart';

class OtpInputPage extends StatelessWidget {
  static String id = "OtpInputPage";
  const OtpInputPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OtpInputPageBody(),
    );
  }
}

class OtpInputPageBody extends StatelessWidget {
  const OtpInputPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          addVerticalSpace(112),
          HeaderWithSubtitle(
            title: TranslationConstant.verifyphone.t(context)!,
            subtitle: "${TranslationConstant.codeissentto} 94508485",
          ),
          otpinput(context),
          addVerticalSpace(16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(TranslationConstant.didntrecievethecode.t(context)!,
                  style: subtitleTextStyle),
              Text(
                TranslationConstant.requestagain.t(context)!,
                style: subtitleTextStyle.copyWith(fontWeight: FontWeight.w500),
              )
            ],
          ),
          addVerticalSpace(24),
          ButtonWidget(
              label: TranslationConstant.verifyandcontinue.t(context)!,
              onPress: () => _navigateToAcountTypePage(context))
        ],
      ).addPadding(),
    ).addScrollChildView();
  }

  SizedBox otpinput(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: PinCodeTextField(
        enableActiveFill: true,
        appContext: context,
        length: 5,
        onChanged: (x) {},
      ),
    );
  }

  _navigateToAcountTypePage(BuildContext context) {
    Navigator.pushNamed(context, AcountType.id);
  }
}
