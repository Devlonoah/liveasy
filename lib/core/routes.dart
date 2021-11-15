import 'package:liveasy_assignment/pages/account_type/acount_type.dart';
import 'package:liveasy_assignment/pages/input_number/input_number.dart';
import 'package:liveasy_assignment/pages/otp_input/otp_input.dart';
import 'package:liveasy_assignment/pages/select_language/select_language.dart';

final approute = {
  InputNumber.id: (context) => const InputNumber(),
  SelectLanguagePage.id: (context) => const SelectLanguagePage(),
  OtpInputPage.id: (context) => const OtpInputPage(),
  AcountType.id: (context) => const AcountType(),
};
