import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:pyli_business_mobile/handlers/__handlers.dart';
import 'package:pyli_business_mobile/presentation/custom_design/custom_design.dart';
import 'package:pyli_business_mobile/presentation/custom_widgets/custom_widget.dart';
import 'package:pyli_business_mobile/presentation/custom_widgets/grouped_table_title_widget.dart';
import 'package:pyli_business_mobile/presentation/custom_widgets/single_table_title_widget.dart';
import 'package:pyli_business_mobile/presentation/routes/routes.dart';
import 'package:pyli_business_mobile/presentation/style/__style.dart';
import 'package:pyli_business_mobile/presentation/style/custom_dimensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pyli_business_mobile/presentation/views/dashboard/component/component.dart';
import 'package:pyli_business_mobile/presentation/views/email/components/table_item_widget.dart';
import 'package:pyli_business_mobile/presentation/views/faq/components/question_widget.dart';
import 'package:pyli_business_mobile/utils/__utils.dart';
import 'package:pyli_business_mobile/utils/enums.dart';

class ChangeBannerView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      header_title: "Change Banner",
      leadingIconType: LeadingIconType.back_arrow,
      container: Container(
        color: Colors.white,
        width: double.infinity,
        child: SafeArea(
          top: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: CustomDimensions.margin16,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gap(20.h),
                      CustomButton(
                        title: "Remove Banner",
                        buttonWidth: 200.0,
                        titleColor: CustomColors.secondaryColor,
                        titleBold: true,
                        buttonColor: CustomColors.yelloColor,
                        borderRadius: 10.0,
                        titleIcon: SvgPicture.asset(
                          "delete".svg,
                          color: CustomColors.primaryColor,
                        ),
                      ),
                      Gap(23.h),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                              color: CustomColors.containerGreyColor,
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 135.h,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: CustomColors.greyColor,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      size: 40.0,
                                      color: CustomColors.appBlackColor2,
                                    ),
                                  ),
                                ),
                                Gap(10.h),
                                Text(
                                  "(300 x 1024)",
                                  style: CustomStyle.textStyleBody2.copyWith(
                                    fontWeight: FontWeight.w400,
                                    fontSize: CustomDimensions.textSize14,
                                  ),
                                ),
                                Gap(56.h),
                                CustomButton(
                                  title: "UPLOAD IMAGE",
                                  titleColor: CustomColors.lightPrimaryColor2,
                                  titleBold: true,
                                  buttonColor: CustomColors.primaryColor,
                                  borderRadius: 10.0,
                                  titleIcon:
                                      SvgPicture.asset("round_camera".svg),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
