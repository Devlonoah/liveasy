import 'package:flutter/material.dart';
import '../localization/app_localization.dart';

extension StringTranslation on String {
  String? t(BuildContext context) =>
      AppLocalizations.of(context)?.translate(this) ?? "";
}
