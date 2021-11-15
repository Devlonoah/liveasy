import 'package:flutter/material.dart';
import 'package:liveasy_assignment/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key, this.onPress, required this.label})
      : super(key: key);

  final void Function()? onPress;

  final String label;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          shape: const BeveledRectangleBorder(),
          backgroundColor: Pallete.darkPurple,
          minimumSize: Size(216.w, 48.h)),
      onPressed: onPress,
      child: Text(
        label,
        textHeightBehavior: TextHeightBehavior(
            applyHeightToFirstAscent: false, applyHeightToLastDescent: false),
        style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
            color: Colors.white,
            height: 20.h),
        // strutStyle: StrutStyle(height: 20.h),
      ),
    );
  }
}
