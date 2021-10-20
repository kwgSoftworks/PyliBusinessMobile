
class Helper{

  static bool isDigit(String s){

    final b = RegExp(r'^[0-9]').hasMatch(s);

    return b;

  }

}