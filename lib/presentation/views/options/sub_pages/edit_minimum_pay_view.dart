import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:pyli_business_mobile/presentation/custom_design/custom_design.dart';
import 'package:pyli_business_mobile/presentation/custom_widgets/custom_widget.dart';
import 'package:pyli_business_mobile/presentation/style/__style.dart';
import 'package:pyli_business_mobile/presentation/style/custom_dimensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pyli_business_mobile/presentation/views/dashboard/component/component.dart';
import 'package:pyli_business_mobile/utils/__utils.dart';
import 'package:pyli_business_mobile/utils/enums.dart';
import 'package:pyli_business_mobile/utils/validators.dart';

class EditMinimumPayAmountView extends HookWidget {

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      header_title: "Edit Minimum pay amount",
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
                  "Amount",
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: CustomDimensions.textSize16,
                  ),
                ),
                Gap(5.h),
                CustomTextField(
                  hint: "Amount",
                  borderRadius: 10.0,
                  activateFocus: false,
                  fillColor: CustomColors.inputfieldGreyColor,
                  keyboardType: TextInputType.number,
                  prefixIcon: SvgPicture.asset(
                    "dollar".svg,
                    color: CustomColors.secondaryColor,
                  ),
                ),
                Gap(30.h),
                CustomButton(
                  title: "SAVE",
                  buttonColor: CustomColors.secondaryColor,
                  borderRadius: 10,
                  titleBold: true,
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
