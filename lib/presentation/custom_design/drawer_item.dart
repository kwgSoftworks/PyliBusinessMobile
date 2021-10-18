import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:pyli_business_mobile/presentation/style/__style.dart';
import 'package:pyli_business_mobile/utils/__utils.dart';

class DrawerItem extends StatelessWidget {
  bool? isSelected;
  String selected_svg_url;
  String unselected_svg_url;
  String title;
  Function()? onTap;

  DrawerItem({
    this.isSelected = false,
    required this.selected_svg_url,
    required this.unselected_svg_url,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      color: isSelected!
          ? CustomColors.lightPrimaryColor2
          : CustomColors.whiteColor,
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Container(
              height: 60.h,
              width: 5.w,
              color: isSelected! ? CustomColors.primaryColor : Colors.white,
            ),
            Expanded(
              child: Row(
                children: [
                  Gap(30.w),
                  this.isSelected!
                      ? SvgPicture.asset(selected_svg_url.svg)
                      : SvgPicture.asset(unselected_svg_url.svg),
                  Gap(20.w),
                  Text(
                    title,
                    style: CustomStyle.textStyleBody2.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: CustomDimensions.textSize12,
                      color: this.isSelected!
                          ? CustomColors.primaryColor
                          : CustomColors.appBlackColor1,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
