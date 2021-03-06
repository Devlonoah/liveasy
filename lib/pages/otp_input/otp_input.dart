import 'package:flutter/material.dart';
import '../../global_widget/button_widget.dart';
import '../../global_widget/header_with_subtitle.dart';
import '../../localization/colors.dart';
import '../../localization/spacing.dart';
import '../../localization/style.dart';
import '../../localization/translation_constant.dart';
import '../account_type/acount_type.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../extension/widget_extension.dart';
import '../../extension/string_extension.dart';

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
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            addVerticalSpace(112),
            HeaderWithSubtitle(
              title: TranslationConstant.verifyphone.t(context)!,
              subtitle:
                  "${TranslationConstant.codeissentto.t(context)} 94508485",
            ),
            addVerticalSpace(24),
            otpinput(context),
            addVerticalSpace(16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(TranslationConstant.didntrecievethecode.t(context)!,
                    style: subtitleTextStyle),
                Text(
                  TranslationConstant.requestagain.t(context)!,
                  style:
                      subtitleTextStyle.copyWith(fontWeight: FontWeight.w500),
                )
              ],
            ),
            addVerticalSpace(24),
            ButtonWidget(
                label: TranslationConstant.verifyandcontinue.t(context)!,
                onPress: () => _navigateToAcountTypePage(context))
          ],
        ).addPadding(),
      ),
    ).addScrollChildView();
  }

  SizedBox otpinput(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: PinCodeTextField(
        pinTheme: PinTheme(
          activeFillColor: Pallete.lightBlue,
          inactiveFillColor: Pallete.mainBlack,
          selectedFillColor: Pallete.slimBlue,
          disabledColor: Colors.red,
          inactiveColor: Colors.red,
          selectedColor: Colors.red,
          activeColor: Colors.red,
          errorBorderColor: Colors.red,
          fieldHeight: 48.h,
          fieldWidth: 48.w,
        ),
        enableActiveFill: true,
        appContext: context,
        length: 5,
        textStyle: headerTextStyle,
        keyboardType: TextInputType.number,
        onChanged: (x) {},
      ),
    );
  }

  _navigateToAcountTypePage(BuildContext context) {
    Navigator.pushNamed(context, AcountType.id);
  }
}
