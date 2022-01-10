import 'dart:io';

import 'package:pyli_business_mobile/models/api/__api.dart';

abstract class UserRepository {

  Future<GeneralResponse> signIn(String username, String password);

  Future<GeneralResponse> signUp(
    String companyName,
    String firstName,
    String lastName,
    String email,
    String password,
    String companyPhone,
      String providerName,
      String companyAddress,
      String companyWebsite,
      String bankName,
      String bankAccountNumber,
      String logo,
      String licNumber,
  );

}
