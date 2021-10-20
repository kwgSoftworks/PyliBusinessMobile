import 'package:connectivity/connectivity.dart';

class ConnectionStatus {
  static Future<bool> isConnected() async {
    var connectionResult = await (Connectivity().checkConnectivity());

    if (connectionResult == ConnectivityResult.mobile)
      return true;
    else if (connectionResult == ConnectivityResult.wifi)
      return true;
    else {
      return false;
    }
  }
}
