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

class EditContractBodyView extends HookWidget {
  @override
  Widget build(BuildContext context) {

    final contract_controller = useTextEditingController();
    final policies_controller = useTextEditingController();

    contract_controller.text = "Amet, ac sit fames elit eu, lobortis purus. Pellentesque orci egestas sed aliquet. Vel hendrerit sed mauris aliquam ac fermentum metus pulvinar diam. Tellus ultrices in sit etiam felis, nulla. Etiam consectetur sollicitudin cursus at sagittis. Amet elit, viverra quam proin interdum elementum. Massa diam lectus ac mauris etiam vitae sed egestas ullamcorper. Aliquam mi nunc commodo sit ipsum. Eget diam commodo quam adipiscing cras. Hac purus ut vestibulum tristique. Elementum egestas pulvinar leo auctor et neque. Diam nibh feugiat praesent dolor tellus dui non aliquam laoreet. Nibh venenatis, malesuada euismod non amet.";

    return CustomScaffold(
      header_title: "Edit Contract Body",
      leadingIconType: LeadingIconType.back_arrow,
      container: Container(
        color: Colors.white,
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: CustomDimensions.margin16,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gap(20.h),
                      Text(
                        "Contract Terms",
                        style: CustomStyle.textStyleBody2.copyWith(
                          fontSize: CustomDimensions.textSize16,
                          color: CustomColors.appBlackColor1,
                        ),
                      ),
                      Gap(4.h),
                      CustomTextField(
                        minLines: 12,
                        maxLines: 40,
                        borderRadius: 10,
                        fillColor: CustomColors.inputfieldGreyColor,
                        controller: contract_controller,
                      ),
                      Gap(20.h),
                      Text(
                        "Policies",
                        style: CustomStyle.textStyleBody2.copyWith(
                          fontSize: CustomDimensions.textSize16,
                          color: CustomColors.appBlackColor1,
                        ),
                      ),
                      Gap(4.h),
                      CustomTextField(
                        minLines: 12,
                        maxLines: 40,
                        borderRadius: 10,
                        fillColor: CustomColors.inputfieldGreyColor,
                        controller: policies_controller,
                      ),
                    ],
                  ),
                ),
              ),
              SafeArea(
                top: false,
                child: Column(
                  children: [
                    Gap(10.h),
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
                    Gap(10.h),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
