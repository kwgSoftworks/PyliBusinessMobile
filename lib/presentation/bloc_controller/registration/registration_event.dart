abstract class RegistrationEvent {}

class FirstNameChanged extends RegistrationEvent {
  final String? firstName;

  FirstNameChanged({this.firstName});
}

class LastNameChanged extends RegistrationEvent {
  final String? lastName;

  LastNameChanged({this.lastName});
}

class EmailChanged extends RegistrationEvent {
  final String? email;

  EmailChanged({this.email});
}

class PasswordChanged extends RegistrationEvent {
  final String? password;

  PasswordChanged({this.password});
}

class CompanyPhoneChanged extends RegistrationEvent {
  final String? companyPhone;

  CompanyPhoneChanged({this.companyPhone});
}

class CompanyNameChanged extends RegistrationEvent {
  final String? companyName;

  CompanyNameChanged({this.companyName});
}

class CompanyWebsiteChanged extends RegistrationEvent{
  final String? companyWebsite;
  CompanyWebsiteChanged({this.companyWebsite});
}

class CompanyAddressChanged extends RegistrationEvent{
  final String? companyAddress;

  CompanyAddressChanged({this.companyAddress});
}

class CompanyPhone extends RegistrationEvent{
  final String? companyPhone;

  CompanyPhone({this.companyPhone});

}

class ProviderNameChanged extends RegistrationEvent{
  final String? providerName;
  ProviderNameChanged({this.providerName});
}

class LLCNumberChanged extends RegistrationEvent{
  final String? llcNumber;
  LLCNumberChanged({this.llcNumber});
}

class CompanyBankNameChanged extends RegistrationEvent{
  final String? bankName;
  CompanyBankNameChanged({this.bankName});
}

class BankAccountNumberChanged extends RegistrationEvent{
  final String? bankAccountNumber;
  BankAccountNumberChanged({this.bankAccountNumber});
}


class RegistrationSubmitted extends RegistrationEvent {
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? password;
  final String? companyPhone;
  final String? companyName;
  final String? companyWebsite;
  final String? providerName;
  final String? companyAddress;
  final String? bankName;
  final String? bankAccountNumber;
  final String? logo;
  final String? licNumber;


  RegistrationSubmitted({
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.companyPhone,
    this.companyName,
    this.companyWebsite,
    this.providerName,
    this.companyAddress,
    this.bankName,
    this.bankAccountNumber,
    this.logo,
    this.licNumber,
  });
}
