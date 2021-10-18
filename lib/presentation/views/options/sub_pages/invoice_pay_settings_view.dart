import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:pyli_business_mobile/handlers/__handlers.dart';
import 'package:pyli_business_mobile/presentation/custom_design/custom_design.dart';
import 'package:pyli_business_mobile/presentation/custom_widgets/custom_widget.dart';
import 'package:pyli_business_mobile/presentation/routes/routes.dart';
import 'package:pyli_business_mobile/presentation/style/__style.dart';
import 'package:pyli_business_mobile/presentation/style/custom_dimensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pyli_business_mobile/presentation/views/dashboard/component/component.dart';
import 'package:pyli_business_mobile/utils/__utils.dart';
import 'package:pyli_business_mobile/utils/enums.dart';

class InvoicePaySettingsView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      header_title: "Invoice Pay Settings",
      leadingIconType: LeadingIconType.back_arrow,
      container: Container(
        color: Colors.white,
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: CustomDimensions.margin16,
          ),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(20.h),
                Text(
                    " it’s up to customers to input the correct invoice amount as Pyli will not know what each invoice amount is. Thus, when a customer uses “pay an invoice” feature, businesses will not have the option to force customers into paying the full amount."),
                Gap(50.h),
                Text(
                  "Show pay an Invoice on customer dashboard",
                  style: CustomStyle.textStyleBody2.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: CustomDimensions.textSize14,
                  ),
                ),
                Gap(20.h),
                Switch.adaptive(
                    activeColor: CustomColors.primaryColor,
                    value: true,
                    onChanged: (value) {}),
                Gap(6.0.h),
                Text(
                  "Showing",
                  style: CustomStyle.textStyleBody2.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: CustomDimensions.textSize16,
                  ),
                ),
                Gap(50.h),
                Text(
                  "Minimum payment amount",
                  style: CustomStyle.textStyleBody2.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: CustomDimensions.textSize14,
                  ),
                ),
                Gap(10.h),
                InkWell(
                  onTap: (){
                    locator<NavigationHandler>().pushNamed(Routes.edit_minimum_pay_view);
                  },
                  child: Row(
                    children: [
                      Text(
                        "\$50",
                        style: CustomStyle.textStyleBody2.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: CustomDimensions.textSize16,
                        ),
                      ),
                      Gap(8.w),
                      SvgPicture.asset("edit_grey".svg),
                    ],
                  ),
                )


              ],
            ),
          ),
        ),
      ),
    );
  }
}
