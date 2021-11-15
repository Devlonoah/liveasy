import 'package:flutter/material.dart';
import 'package:liveasy_assignment/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget wavyNBottomCurveContainer() {
  return Stack(
    children: [
      ClipPath(
        clipper: WavyBezierCurves2(),
        child: Container(
          height: 112.89.h,
          width: double.infinity,
          color: Pallete.lightBlue,
        ),
      ),
      ClipPath(
        clipper: WavyBezierCurves(),
        child: Container(
          height: 112.89.h,
          width: double.infinity,
          color: Pallete.darkPurple.withOpacity(0.5),
        ),
      ),
    ],
  );
}

class WavyBezierCurves2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    final cp1 = Offset((size.width * 0.3), size.height * 0.0);
    final ep1 = Offset(size.width * 0.55, size.height * 0.55);
    final cp2 = Offset(size.width * 0.75, size.height * 0.9);
    final ep2 = Offset(size.width, size.height * 0.5);

    path
      ..moveTo(0, size.height)
      ..lineTo(0, size.height * 0.2)
      ..quadraticBezierTo(cp1.dx, cp1.dy, ep1.dx, ep1.dy)
      ..quadraticBezierTo(cp2.dx, cp2.dy, ep2.dx, ep2.dy)
      ..lineTo(size.width, size.height)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

class WavyBezierCurves extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    final ep1 = Offset(size.width * 0.45, size.height * 0.55);
    final cp1 = Offset(size.width * 0.15, size.height * 0.9);

    final ep2 = Offset(size.width, size.height * 0.5);
    final cp2 = Offset(size.width * 0.75, size.height * 0.15);
    path
      ..moveTo(0, size.height)
      ..lineTo(0, 0)
      ..quadraticBezierTo(cp1.dx, cp1.dy, ep1.dx, ep1.dy)
      ..quadraticBezierTo(cp2.dx, cp2.dy, ep2.dx, ep2.dy)
      ..lineTo(size.width, size.height)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
