import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../localization/spacing.dart';
import '../localization/style.dart';

class HeaderWithSubtitle extends StatelessWidget {
  final String? title;
  final String? subtitle;

  const HeaderWithSubtitle(
      {Key? key, required this.title, required this.subtitle})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title!,
          textAlign: TextAlign.center,
          style: headerTextStyle,
          strutStyle: StrutStyle(height: 0.0.h),
        ),
        addVerticalSpace(8.h),
        subtitle != null
            ? Text(subtitle!,
                strutStyle: StrutStyle(height: 0.0.h),
                textAlign: TextAlign.center,
                style: subtitleTextStyle)
            : const SizedBox.shrink(),
      ],
    );
  }
}
