import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pyli_business_mobile/presentation/routes/routes.dart';
import 'package:pyli_business_mobile/presentation/views/account/account_view.dart';
import 'package:pyli_business_mobile/presentation/views/account/change_password_view.dart';
import 'package:pyli_business_mobile/presentation/views/account/edit_profile_view.dart';
import 'package:pyli_business_mobile/presentation/views/account/upload_image_view.dart';
import 'package:pyli_business_mobile/presentation/views/add_ons/add_ons_view.dart';
import 'package:pyli_business_mobile/presentation/views/add_ons/edit_add_ons_view.dart';
import 'package:pyli_business_mobile/presentation/views/contracts/contract_preview_view.dart';
import 'package:pyli_business_mobile/presentation/views/contracts/contract_setup_view.dart';
import 'package:pyli_business_mobile/presentation/views/contracts/edit_contract_body_view.dart';
import 'package:pyli_business_mobile/presentation/views/contracts/edit_signature_view.dart';
import 'package:pyli_business_mobile/presentation/views/customer/create_business_view.dart';
import 'package:pyli_business_mobile/presentation/views/customer/customer_details_view.dart';
import 'package:pyli_business_mobile/presentation/views/customer/customer_view.dart';
import 'package:pyli_business_mobile/presentation/views/customer/send_email_view.dart';
import 'package:pyli_business_mobile/presentation/views/customer/updated_customer_details_view.dart';
import 'package:pyli_business_mobile/presentation/views/dashboard/dashboard_view.dart';
import 'package:pyli_business_mobile/presentation/views/email/create_new_template.dart';
import 'package:pyli_business_mobile/presentation/views/email/email_setup_view.dart';
import 'package:pyli_business_mobile/presentation/views/faq/create_new_question.dart';
import 'package:pyli_business_mobile/presentation/views/faq/faq_view.dart';
import 'package:pyli_business_mobile/presentation/views/options/options_view.dart';
import 'package:pyli_business_mobile/presentation/views/options/sub_pages/adjustment_view.dart';
import 'package:pyli_business_mobile/presentation/views/options/sub_pages/change_banner_view.dart';
import 'package:pyli_business_mobile/presentation/views/options/sub_pages/coupons_view.dart';
import 'package:pyli_business_mobile/presentation/views/options/sub_pages/create_adjustment_view.dart';
import 'package:pyli_business_mobile/presentation/views/options/sub_pages/create_coupons_view.dart';
import 'package:pyli_business_mobile/presentation/views/options/sub_pages/create_taxes_view.dart';
import 'package:pyli_business_mobile/presentation/views/options/sub_pages/edit_minimum_pay_view.dart';
import 'package:pyli_business_mobile/presentation/views/options/sub_pages/invoice_pay_settings_view.dart';
import 'package:pyli_business_mobile/presentation/views/options/sub_pages/taxes_view.dart';
import 'package:pyli_business_mobile/presentation/views/plans/create_plans_view.dart';
import 'package:pyli_business_mobile/presentation/views/plans/edit_plans_view.dart';
import 'package:pyli_business_mobile/presentation/views/plans/plans_n_pricing_view.dart';
import 'package:pyli_business_mobile/presentation/views/roles/create_user_view.dart';
import 'package:pyli_business_mobile/presentation/views/roles/user_roles_view.dart';
import 'package:pyli_business_mobile/presentation/views/transaction/transaction_view.dart';
import 'package:pyli_business_mobile/presentation/views/user_onboarding/decision_view.dart';
import 'package:pyli_business_mobile/presentation/views/user_onboarding/email_sent_view.dart';
import 'package:pyli_business_mobile/presentation/views/user_onboarding/forgot_password_view.dart';
import 'package:pyli_business_mobile/presentation/views/user_onboarding/login_view.dart';
import 'package:pyli_business_mobile/presentation/views/user_onboarding/signup_page/signup_view.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case Routes.decision_view:
        return _getPageRoute(DecisionView(), settings);
      case Routes.login_screen:
        return _getPageRoute(LoginView(), settings);
      case Routes.forgot_password_view:
        return _getPageRoute(ForgotPasswordView(), settings);
      case Routes.email_sent_view:
        return _getPageRoute(EmailSentView(), settings);
      case Routes.registration_screen:
        return _getPageRoute(SignUpView(), settings);
      case Routes.dashboard_view:
        return _getPageRoute(DashboardView(), settings);

      case Routes.account_view:
        return _getPageRoute(AccountView(), settings);
      case Routes.upload_image_view:
        return _getPageRoute(UploadImageView(), settings);
      case Routes.change_password_view:
        return _getPageRoute(ChangePasswordView(), settings);
      case Routes.edit_profile_view:
        return _getPageRoute(EditProfileView(), settings);


      case Routes.customer_view:
        return _getPageRoute(CustomerView(), settings);
      case Routes.create_business_view:
        return _getPageRoute(CreateBusinessView(), settings);
      case Routes.customer_details_view:
        return _getPageRoute(CustomerDetailsView(), settings);
      case Routes.update_customer_details_view:
        return _getPageRoute(UpdateCustomerDetailsView(), settings);
      case Routes.send_email_view:
        return _getPageRoute(SendEmailView(), settings);


      case Routes.user_roles_view:
        return _getPageRoute(UserRolesView(), settings);
      case Routes.create_user_view:
        return _getPageRoute(CreateUserView(), settings);


      case Routes.contract_setup_view:
        return _getPageRoute(ContractSetupView(), settings);
      case Routes.edit_contract_body_view:
        return _getPageRoute(EditContractBodyView(), settings);
      case Routes.edit_signature_base_view:
        return _getPageRoute(EditSignatureView(), settings);
      case Routes.contract_preview_view:
        return _getPageRoute(ContractPreviewView(), settings);


      case Routes.plans_n_pricing_view:
        return _getPageRoute(PlansNPricingView(), settings);
      case Routes.edit_plans_view:
        return _getPageRoute(EditPlansView(), settings);
      case Routes.create_plans_view:
        return _getPageRoute(CreatePlansView(), settings);

      case Routes.add_ons_view:
        return _getPageRoute(AddOnsView(), settings);
      case Routes.edit_add_ons_view:
        return _getPageRoute(EditAddOnsView(), settings);


      case Routes.transactions_view:
        return _getPageRoute(TransactionView(), settings);


      case Routes.options_view:
        return _getPageRoute(OptionsView(), settings);
      case Routes.adjustment_view:
        return _getPageRoute(AdjustmentListView(), settings);
      case Routes.create_adjustment_view:
        return _getPageRoute(CreateAdjustment(), settings);
      case Routes.change_banner_view:
        return _getPageRoute(ChangeBannerView(), settings);
      case Routes.coupons_view:
        return _getPageRoute(CouponsView(), settings);
      case Routes.create_coupons_view:
        return _getPageRoute(CreateCouponsView(), settings);
      case Routes.create_taxes_view:
        return _getPageRoute(CreateTaxesView(), settings);
      case Routes.edit_minimum_pay_view:
        return _getPageRoute(EditMinimumPayAmountView(), settings);
      case Routes.invoice_pay_settings_view:
        return _getPageRoute(InvoicePaySettingsView(), settings);
      case Routes.taxes_view:
        return _getPageRoute(TaxesView(), settings);



      case Routes.email_setup_view:
        return _getPageRoute(EmailSetupView(), settings);
      case Routes.create_new_template_view:
        return _getPageRoute(CreateNewTemplateView(), settings);


      case Routes.faq_view:
        return _getPageRoute(FaqView(), settings);
      case Routes.create_new_question:
        return _getPageRoute(CreateNewQuestion(), settings);

      default:
        return _getPageRoute(_errorPage());
    }
  }

  ///Wraps widget with a CupertinoPageRoute and adds route settings
  static CupertinoPageRoute _getPageRoute(
    Widget child, [
    RouteSettings settings = const RouteSettings(),
    bool? isfullScreenDialog = false,
  ]) =>
      CupertinoPageRoute(
        builder: (context) => child,
        fullscreenDialog: isfullScreenDialog ?? false,
        settings: RouteSettings(
          name: settings.name,
          arguments: settings.arguments,
        ),
      );

  ///Error page shown when app attempts navigating to an unknown route
  static Widget _errorPage({String message = "Error! Page not found"}) =>
      Scaffold(
        appBar: AppBar(
            title: const Text(
          'Page not found',
          style: TextStyle(color: Colors.red),
        )),
        body: Center(
          child: Text(
            message,
            style: const TextStyle(color: Colors.red),
          ),
        ),
      );
}
