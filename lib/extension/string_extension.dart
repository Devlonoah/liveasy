import 'package:flutter/material.dart';
import 'package:liveasy_assignment/app_localization.dart';

extension StringTranslation on String {
  String? t(BuildContext context) =>
      AppLocalizations.of(context)?.translate(this) ?? "";
}
