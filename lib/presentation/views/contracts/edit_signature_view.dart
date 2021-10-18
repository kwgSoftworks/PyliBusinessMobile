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

class EditSignatureView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final business_signature_controller = useTextEditingController();
    final customer_signature_controller = useTextEditingController();

    return CustomScaffold(
      header_title: "Edit Signature Base",
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
                  "Business Signature",
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: CustomDimensions.textSize16,
                      ),
                ),
                Gap(5.h),
                CustomTextField(
                  hint: "No uploads",
                  borderRadius: 10.0,
                  activateFocus: false,
                  fillColor: CustomColors.inputfieldGreyColor,
                ),
                Gap(7.h),
                CustomButton(
                  title: "UPLOAD",
                  titleColor: CustomColors.appBlackColor1,
                  titleBold: true,
                  buttonWidth: 112.w,
                  buttonHeight: 43.h,
                  borderRadius: 10.0,
                  buttonColor: CustomColors.greyColor2,
                ),
                Gap(20.h),
                Text(
                  "Customer Signature",
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: CustomDimensions.textSize16,
                      ),
                ),
                Gap(7.h),
                CustomTextField(
                  hint: "No uploads",
                  borderRadius: 10.0,
                  activateFocus: false,
                  fillColor: CustomColors.inputfieldGreyColor,
                ),
                Gap(7.h),
                CustomButton(
                  title: "UPLOAD",
                  titleColor: CustomColors.appBlackColor1,
                  titleBold: true,
                  buttonWidth: 112.w,
                  buttonHeight: 43.h,
                  borderRadius: 10.0,
                  buttonColor: CustomColors.greyColor2,
                ),
                Gap(30.h),
                CustomButton(
                  title: "SAVE",
                  buttonColor: CustomColors.secondaryColor,
                  borderRadius: 10,
                  titleBold: true,
                  onTap: () {
                    locator<NavigationHandler>()
                        .pushNamed(Routes.contract_preview_view);
                  },
                ),
                Gap(10.h),
                CustomButton(
                  title: "CANCEL",
                  titleColor: CustomColors.secondaryColor,
                  isBorderButton: true,
                  borderRadius: 10,
                  titleBold: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
