import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:liveasy_assignment/bloc/cubit/locale_cubit.dart';
import 'package:liveasy_assignment/constants/language.dart';
import 'package:liveasy_assignment/constants/spacing.dart';
import 'package:liveasy_assignment/constants/style.dart';
import 'package:liveasy_assignment/constants/translation_constant.dart';
import 'package:liveasy_assignment/extension/string_extension.dart';
import 'package:liveasy_assignment/global_widget/button_widget.dart';
import 'package:liveasy_assignment/global_widget/header_with_subtitle.dart';
import 'package:liveasy_assignment/global_widget/wavy_bottom_curves_container.dart';
import 'package:liveasy_assignment/pages/input_number/input_number.dart';

class SelectLanguagePage extends StatelessWidget {
  static String id = 'selectlanguagepage';
  const SelectLanguagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            addVerticalSpace(216),
            HeaderWithSubtitle(
              title: TranslationConstant.selectLanguage.t(context),
              subtitle: TranslationConstant.changelanguageanytime.t(context)!,
            ),
            addVerticalSpace(24),
            BlocBuilder<LocaleCubit, LocaleState>(
              builder: (context, state) {
                return DropDownWidget(
                    value: state.locale.languageCode,
                    onTap: (x) => BlocProvider.of<LocaleCubit>(context)
                        .changeLanguage(x!));
              },
            ),
            addVerticalSpace(24),
            ButtonWidget(
              label: TranslationConstant.next.t(context)!,
              onPress: () => _navigateToInputNumberPage(context),
            ),
            const Spacer(),
            wavyNBottomCurveContainer(),
          ],
        ),
      ),
    );
  }

  // Container dropDownWidget(
  //     {String? label, void Function(String?)? onTap, required String value}) {
  //   return Container(
  //     height: 48.h,
  //     width: 216.w,
  //     padding: EdgeInsets.symmetric(horizontal: 8.w),
  //     decoration: BoxDecoration(border: Border.all(width: 1.sp)),
  //     child: DropdownButton<String>(
  //         isExpanded: true,
  //         hint: Text(TranslationConstant.selectLanguage.t(context)!,)
  //         underline: const SizedBox.shrink(),
  //         style: dropDownTextStyle,
  //         onChanged: onTap,
  //         value: value,
  //         items: languageList
  //             .map((e) => DropdownMenuItem(child: Text(e.value), value: e.code))
  //             .toList()),
  //   );
  // }

  void _navigateToInputNumberPage(BuildContext context) =>
      Navigator.pushNamed(context, InputNumber.id);
}

class DropDownWidget extends StatelessWidget {
  const DropDownWidget({
    Key? key,
    required this.onTap,
    required this.value,
  }) : super(key: key);

  final void Function(String?)? onTap;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      width: 216.w,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      decoration: BoxDecoration(border: Border.all(width: 1.sp)),
      child: DropdownButton<String>(
          isExpanded: true,
          hint: Text(
            TranslationConstant.selectLanguage.t(context)!,
          ),
          underline: const SizedBox.shrink(),
          style: dropDownTextStyle,
          onChanged: onTap,
          value: value,
          items: languageList
              .map((e) => DropdownMenuItem(child: Text(e.value), value: e.code))
              .toList()),
    );
  }
}
