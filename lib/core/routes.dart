import '../pages/account_type/acount_type.dart';
import '../pages/input_number/input_number.dart';
import '../pages/otp_input/otp_input.dart';
import '../pages/select_language/select_language.dart';

final approute = {
  InputNumber.id: (context) => const InputNumber(),
  SelectLanguagePage.id: (context) => const SelectLanguagePage(),
  OtpInputPage.id: (context) => const OtpInputPage(),
  AcountType.id: (context) => const AcountType(),
};
