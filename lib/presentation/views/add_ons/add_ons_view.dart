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
import 'package:pyli_business_mobile/presentation/views/add_ons/components/agency_widget.dart';
import 'package:pyli_business_mobile/presentation/views/dashboard/component/component.dart';
import 'package:pyli_business_mobile/utils/__utils.dart';
import 'package:pyli_business_mobile/utils/enums.dart';

class AddOnsView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      header_title: "Add-Ons",
      leadingIconType: LeadingIconType.drawer,
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
                CustomButton(
                  buttonHeight: 45.h,
                  buttonWidth: 160.w,
                  borderRadius: 10.0,
                  buttonColor: CustomColors.lightPrimaryColor2,
                  titleIcon: SvgPicture.asset("add_box".svg),
                  titleBold: true,
                  title: "Create Agency",
                  titleColor: CustomColors.primaryColor,
                ),
                Gap(20.h),
                AgencyWidget(),
                AgencyWidget(),
                Gap(40.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
