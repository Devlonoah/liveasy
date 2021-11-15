import 'package:flutter/cupertino.dart';
import 'package:liveasy_assignment/constants/spacing.dart';
import 'package:liveasy_assignment/constants/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        ),
        addVerticalSpace(8.h),
        subtitle != null
            ? Text(subtitle!,
                textAlign: TextAlign.center, style: subtitleTextStyle)
            : const SizedBox.shrink(),
        addVerticalSpace(24),
      ],
    );
  }
}
