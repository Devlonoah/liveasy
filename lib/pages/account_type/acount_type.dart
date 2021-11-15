import 'package:flutter/material.dart';
import 'package:liveasy_assignment/constants/spacing.dart';
import 'package:liveasy_assignment/constants/style.dart';
import 'package:liveasy_assignment/constants/translation_constant.dart';
import 'package:liveasy_assignment/data/models/account_type_model.dart';
import 'package:liveasy_assignment/global_widget/button_widget.dart';
import 'package:liveasy_assignment/global_widget/header_with_subtitle.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:liveasy_assignment/extension/widget_extension.dart';

import 'package:liveasy_assignment/extension/string_extension.dart';

class AcountType extends StatelessWidget {
  static String id = "AcountType";
  const AcountType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AcountTypeBody(),
    );
  }
}

class AcountTypeBody extends StatelessWidget {
  const AcountTypeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        addVerticalSpace(112),
        HeaderWithSubtitle(
            title: TranslationConstant.pleaseselectyourprofile.t(context)!,
            subtitle: ''),
        addVerticalSpace(26),
        ListView.separated(
          itemCount: accountTypeList.length,
          shrinkWrap: true,
          separatorBuilder: (context, index) => addVerticalSpace(24),
          itemBuilder: (context, index) {
            final _accounType = accountTypeList[index];
            return choiceCard(
                title: TranslationConstant.customTranslate(_accounType.title)
                    .t(context)!,
                description: TranslationConstant.loremipsum,
                imageUrl: _accounType.imageUrl);
          },
        ),
        addVerticalSpace(24),
        ButtonWidget(
          label: TranslationConstant.continuex.t(context)!,
          onPress: () {},
        )
      ],
    ).addPadding().addScrollChildView();
  }

  Widget choiceCard(
      {required String imageUrl,
      required String title,
      required String description,
      final bool isSelected = false}) {
    return Material(
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.only(left: 16.w, top: 16.h, bottom: 16.h),
          decoration: BoxDecoration(border: Border.all(width: 1)),
          child: Row(
            children: [
              Container(
                height: 24.h,
                width: 24.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 1),
                ),
                alignment: Alignment.center,
                child: isSelected
                    ? Container(
                        width: 16.w,
                        height: 16.h,
                        decoration: const BoxDecoration(
                            color: Colors.black, shape: BoxShape.circle),
                      )
                    : const SizedBox.shrink(),
              ),
              addHorizontalSpace(16),
              Image.asset(imageUrl, height: 40.h, width: 40.w),
              addHorizontalSpace(16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: countryCodeTextStyle.copyWith(fontSize: 18.sp),
                    ),
                    addVerticalSpace(8),
                    Text(
                      description,
                      textAlign: TextAlign.left,

                      style: countryCodeTextStyle.copyWith(fontSize: 12.sp),
                      // maxLines: 3,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
