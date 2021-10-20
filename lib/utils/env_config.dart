import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pyli_business_mobile/utils/__utils.dart';

Future<void> loadEnvFile({String path = ".env"}) async {
  try {
    await dotenv.load(fileName: path);
  } catch (e) {
    AppLogger.log(e);
  }
}
