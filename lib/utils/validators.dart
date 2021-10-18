
import 'package:pyli_business_mobile/utils/helper.dart';
import 'package:intl/intl.dart';

class Validators {
  // var currencyFormat = new NumberFormat("#,##0.00", "en_US");

  static String? isEmailStr(String? email,
      {String error = "Enter a valid email address"}) {
    return isEmail(email)! ? null : error;
  }

  static bool? isEmail(String? email) {

    if(email != null){

      String p = "[a-zA-Z0-9\+\.\_\%\-\+]{1,256}" +
          "\\@" +
          "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}" +
          "(" +
          "\\." +
          "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25}" +
          ")+";
      return new RegExp(p).hasMatch(email);

    }
    return null;

  }

  static String? validateOTP(String value) {
    if (value.length != 6) {
      return 'OTP code should be 6 letters';
    }
    return null;
  }

  static String? validatePhoneNumber(String value) {
    if (!value.startsWith("234")){
      return 'Note e.g 2348xxxxx';
    }
    if (value.length < 10) {
      return 'Invalid phone number';
    }
    return null;
  }

  static String? validateIsEmpty(String? value) {
    if (value != null) {
      if (value.length < 1) {
        return 'Required !!!';
      }
      return null;
    }
  }

  static String? validateIsEmptyWithLengthAndNumber(String? value) {
    if (value != null) {

      if(!Helper.isDigit(value)){

        if (value.length < 1) {
          return 'Required !!!';
        }else if(value.length < 3){
          return 'Invalid';
        }

      }else{

        return 'Remove Digits!!';

      }

      // return null;
    }
  }

  static String? validateLoginPassword(String? value) {
    if (value != null) {
      if (value.length < 6) {
        return 'Please enter a valid password';
      }
      return null;
    }
  }

  static String? validatePassword(String? value) {
    Pattern pattern =
        r"^(?=.*[A-Za-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{6,}$";

    RegExp regex = new RegExp(pattern.toString());
    print(value);
    if (value != null) {
      if (value.isEmpty) {
        return 'Please enter password';
      } else {
        if (!regex.hasMatch(value))
          return 'Include Minimum of six characters,\nAt least one uppercase, one lowercase, \none number and one special character';
        else
          return null;
      }
    } else {
      return null;
    }
  }

  static formatCurrency(int currency) {
    return NumberFormat("#,##0.00", "en_US").format(currency);
  }

}
