import 'package:pyli_business_mobile/presentation/bloc_controller/form_submission_status.dart';

class RegistrationState {
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final String companyPhone;
  final String companyName;
  final String providerName;
  final String companyAddress;
  final String companyWebsite;
  final String bankName;
  final String bankAccountNumber;
  final String logo;
  final String licNumber;
  final FormSubmissionStatus formSubmissionStatus;

  RegistrationState({
    this.firstName = '',
    this.lastName = '',
    this.email = '',
    this.password = '',
    this.companyPhone = '',
    this.companyName = '',
    this.providerName = '',
    this.companyAddress = '',
    this.companyWebsite = '',
    this.bankName = '',
    this.bankAccountNumber = '',
    this.logo = '',
    this.licNumber = '',
    this.formSubmissionStatus = const InitialFormStatus(),
  });

  RegistrationState copyWith({
    String? firstName,
    String? lastName,
    String? email,
    String? password,
    String? companyPhone,
    String? companyName,
    String? providerName,
    String? companyAddress,
    String? companyWebsite,
    String? bankName,
    String? bankAccountNumber,
    String? logo,
    String? licNumber,
    FormSubmissionStatus? formSubmissionStatus,
}){
    return RegistrationState(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      password: password ?? this.password,
      companyPhone: companyPhone ?? this.companyPhone,
      companyName: companyPhone ?? this.companyName,
      providerName: providerName ?? this.providerName,
      companyAddress: companyAddress ?? this.companyAddress,
      companyWebsite: companyWebsite ?? this.companyWebsite,
      bankName: bankName ?? this.bankName,
      bankAccountNumber: bankAccountNumber ?? this.bankAccountNumber,
      logo: logo ?? this.logo,
      licNumber: licNumber ?? this.licNumber,
      formSubmissionStatus: formSubmissionStatus ?? this.formSubmissionStatus,
    );
  }

}
