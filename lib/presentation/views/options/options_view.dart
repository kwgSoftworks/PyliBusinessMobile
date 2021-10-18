import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:pyli_business_mobile/handlers/__handlers.dart';
import 'package:pyli_business_mobile/models/models/options_model.dart';
import 'package:pyli_business_mobile/presentation/custom_design/custom_design.dart';
import 'package:pyli_business_mobile/presentation/custom_widgets/custom_widget.dart';
import 'package:pyli_business_mobile/presentation/routes/routes.dart';
import 'package:pyli_business_mobile/presentation/style/__style.dart';
import 'package:pyli_business_mobile/presentation/style/custom_dimensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pyli_business_mobile/presentation/views/dashboard/component/component.dart';
import 'package:pyli_business_mobile/presentation/views/options/components/option_widget.dart';
import 'package:pyli_business_mobile/utils/__utils.dart';
import 'package:pyli_business_mobile/utils/enums.dart';

class OptionsView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    List<OptionsModel> all_options = [
      OptionsModel(img_url: "mail", title: "Email Setup"),
      OptionsModel(img_url: "settings_selected", title: "Adjustments"),
      OptionsModel(img_url: "monetization_on", title: "Taxes / Fees"),
      OptionsModel(img_url: "coupons_icon", title: "Coupons / Discounts"),
      OptionsModel(img_url: "invoice_pay_icon", title: "Invoice Pay\nSettings"),
      OptionsModel(img_url: "faq_icon", title: "Edit FAQ"),
      OptionsModel(img_url: "change_banner_icon", title: "Change Banner"),
      OptionsModel(img_url: "person_selected", title: "User Roles"),
    ];

    return CustomScaffold(
      header_title: "Options",
      leadingIconType: LeadingIconType.drawer,
      container: Container(
        color: Colors.white,
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: CustomDimensions.margin16,
          ),
          child: SafeArea(
            top: false,
            child: GridView.builder(
              physics: BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 2 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              padding: EdgeInsets.only(
                top: 20.h,
                bottom: 20.h,
              ),
              shrinkWrap: true,
              itemCount: all_options.length,
              itemBuilder: (BuildContext ctx, index) {
                return OptionWidget(
                  img_url: all_options[index].img_url,
                  img_title: all_options[index].title,
                  onTap: () {
                    switch (index) {
                      case 0:
                        locator<NavigationHandler>()
                            .pushNamed(Routes.email_setup_view);
                        break;
                      case 1:
                        locator<NavigationHandler>()
                            .pushNamed(Routes.adjustment_view);
                        break;
                      case 2:
                        locator<NavigationHandler>()
                            .pushNamed(Routes.taxes_view);
                        break;
                      case 3:
                        locator<NavigationHandler>()
                            .pushNamed(Routes.coupons_view);
                        break;
                      case 4:
                        locator<NavigationHandler>()
                            .pushNamed(Routes.invoice_pay_settings_view);
                        break;
                      case 5:
                        locator<NavigationHandler>()
                            .pushNamed(Routes.faq_view);
                        break;
                      case 6:
                        locator<NavigationHandler>()
                            .pushNamed(Routes.change_banner_view);
                        break;
                      case 7:
                        locator<NavigationHandler>()
                            .pushNamed(Routes.user_roles_view);
                        break;
                      default:
                        locator<NavigationHandler>()
                            .pushNamed(Routes.email_setup_view);
                        break;
                    }
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
