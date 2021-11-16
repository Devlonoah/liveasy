import 'package:country_list_pick/country_list_pick.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:liveasy_assignment/data/repository/user_repository.dart';
import 'package:liveasy_assignment/extension/widget_extension.dart';
import 'package:liveasy_assignment/global_widget/button_widget.dart';
import 'package:liveasy_assignment/global_widget/header_with_subtitle.dart';
import 'package:liveasy_assignment/localization/colors.dart';
import 'package:liveasy_assignment/localization/spacing.dart';
import 'package:liveasy_assignment/localization/style.dart';
import 'package:liveasy_assignment/localization/translation_constant.dart';

import 'package:liveasy_assignment/pages/input_number/bloc/input_bloc/input_bloc.dart';
import 'package:liveasy_assignment/pages/otp_input/otp_input.dart';
import 'package:liveasy_assignment/extension/string_extension.dart';
import 'package:loading_overlay/loading_overlay.dart';

class InputNumber extends StatelessWidget {
  static String id = "inputnumber";

  const InputNumber({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
      lazy: false,
      create: (context) => InputBloc((FirebaseAuth.instance)),
      child: const InputBody(),
    ));
  }
}

class InputBody extends StatefulWidget {
  const InputBody({Key? key}) : super(key: key);

  @override
  State<InputBody> createState() => _InputBodyState();
}

class _InputBodyState extends State<InputBody> {
  TextEditingController _mobileTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<InputBloc, InputState>(
      listener: (context, state) {
        if (state.otpSent) {
          _navigatetoOtpInputPage(context, state.otp);
        }
      },
      child: BlocBuilder<InputBloc, InputState>(
        builder: (context, state) {
          return SizedBox(
            height: MediaQuery.of(context).size.height,
            child: LoadingOverlay(
              opacity: 0.4,
              isLoading: state.isSubmitting,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  addVerticalSpace(88),
                  HeaderWithSubtitle(
                    title: TranslationConstant.pleaseenteryournumber.t(context),
                    subtitle:
                        TranslationConstant.youllrecieve4digitcode.t(context)!,
                  ),
                  addVerticalSpace(20),
                  MobileNumberInput(
                    controller: _mobileTextController,
                  ),
                  addVerticalSpace(24),
                  ButtonWidget(
                      label: TranslationConstant.continuex.t(context)!,
                      onPress: () => BlocProvider.of<InputBloc>(context).add(
                          ContinueButtonPressed(_mobileTextController.text))),
                ],
              ),
            ),
          );
        },
      ),
    ).addPadding().addScrollChildView();
  }
}

class MobileNumberInput extends StatelessWidget {
  const MobileNumberInput({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      width: double.infinity,
      decoration: BoxDecoration(border: Border.all(width: 1.sp)),
      child: Row(
        children: [
          CountryListPick(
            initialSelection: 'select country',
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
            onChanged: (x) => context
                .read<InputBloc>()
                .add(InputChanged(x!.dialCode!, controller.text)),
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
                controller: controller,
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

_navigatetoOtpInputPage(BuildContext context, String otp) =>
    Navigator.pushNamed(context, OtpInputPage.id, arguments: otp);
