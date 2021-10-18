import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:pyli_business_mobile/presentation/style/__style.dart';
import 'package:pyli_business_mobile/utils/__utils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OptionWidget extends StatelessWidget {
  String img_url;
  String img_title;
  Function()? onTap;

  OptionWidget({
    required this.img_url,
    required this.img_title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: CustomColors.containerGreyColor,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              img_url.svg,
              width: 60.w,
              height: 60.h,
            ),
            Gap(20.h),
            Text(
              img_title,
              style: CustomStyle.textStyleBody2.copyWith(
                fontSize: 14.sp,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
