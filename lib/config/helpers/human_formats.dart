import 'package:intl/intl.dart';

class HumanFormats {
  static String number({double formattedNumber = 0}){
    
    return NumberFormat.compactCurrency(decimalDigits: 0, symbol: '', locale: 'en').format(formattedNumber);
  }
}