import 'package:flutter/material.dart';
import 'package:liveasy_assignment/localization/size.dart';

extension WidgetManipulator on Widget {
  Widget addPadding() => Padding(
      padding: EdgeInsets.symmetric(horizontal: defaultPadding), child: this);
}

extension WidgetScroll on Widget {
  Widget addScrollChildView() => SingleChildScrollView(child: this);
}
