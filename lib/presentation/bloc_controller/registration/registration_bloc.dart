import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pyli_business_mobile/data/services/remote/implementations/user_repositories_impl.dart';
import 'package:pyli_business_mobile/data/services/remote/repositories/user_repositories.dart';
import 'package:pyli_business_mobile/presentation/bloc_controller/registration/registration_event.dart';
import 'package:pyli_business_mobile/presentation/bloc_controller/form_submission_status.dart';
import 'package:pyli_business_mobile/presentation/bloc_controller/registration/registration_state.dart';
import 'package:pyli_business_mobile/utils/__utils.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  RegistrationBloc() : super(RegistrationState()) {
    on<RegistrationSubmitted>(registerUser);

    on<FirstNameChanged>(firstNameChanged);
    on<LastNameChanged>(lastNameChanged);
    on<CompanyNameChanged>(companyNameChanged);
    on<CompanyWebsiteChanged>(companyWebsiteChanged);
    on<CompanyAddressChanged>(companyAddressChanged);
    on<CompanyPhoneChanged>(companyPhoneChanged);
    on<LLCNumberChanged>(companyLLCNumberChanged);
  }

  void registerUser(
      RegistrationSubmitted event, Emitter<RegistrationState> emit) async {
    emit(state.copyWith(formSubmissionStatus: FormSubmitting()));

    await locator<UserRepository>().signUp(
      state.companyName,
      state.firstName,
      state.lastName,
      state.email,
      state.password,
      state.companyPhone,
      state.providerName,
      state.companyAddress,
      state.companyWebsite,
      state.bankName,
      state.bankAccountNumber,
      state.logo,
      state.licNumber,
    );

    emit(state.copyWith(formSubmissionStatus: SubmissionSuccess()));
  }

  void firstNameChanged(
      FirstNameChanged event, Emitter<RegistrationState> emit) {
    emit(state.copyWith(firstName: event.firstName));
  }

  void lastNameChanged(LastNameChanged event, Emitter<RegistrationState> emit) {
    emit(state.copyWith(lastName: event.lastName));
  }

  void companyNameChanged(
      CompanyNameChanged event, Emitter<RegistrationState> emit) {
    emit(state.copyWith(companyName: event.companyName));
  }

  void companyWebsiteChanged(
      CompanyWebsiteChanged event, Emitter<RegistrationState> emit) {
    emit(state.copyWith(companyWebsite: event.companyWebsite));
  }

  void companyAddressChanged(
      CompanyAddressChanged event, Emitter<RegistrationState> emit) {
    emit(state.copyWith(companyAddress: event.companyAddress));
  }

  void companyPhoneChanged(
      CompanyPhoneChanged event, Emitter<RegistrationState> emit) {
    emit(state.copyWith(firstName: event.companyPhone));
  }

  void companyLLCNumberChanged(
      LLCNumberChanged event, Emitter<RegistrationState> emit) {
    emit(state.copyWith(licNumber: event.llcNumber));
  }

  void providerNameChanged(
      ProviderNameChanged event, Emitter<RegistrationState> emit) {
    emit(state.copyWith(providerName: event.providerName));
  }

  void bankNameChanged(
      CompanyBankNameChanged event, Emitter<RegistrationState> emit) {
    emit(state.copyWith(firstName: event.bankName));
  }
}
