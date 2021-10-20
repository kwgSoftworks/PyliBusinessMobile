import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:pyli_business_mobile/presentation/style/__style.dart';
import 'package:pyli_business_mobile/utils/__utils.dart';
import 'package:pyli_business_mobile/utils/enums.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  Function()? drawerClicked;
  Function()? backClicked;
  LeadingIconType? leadingIconType;
  String title;

  CustomAppBar({
    this.drawerClicked,
    this.backClicked,
    this.leadingIconType,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.secondaryColor,
      padding: EdgeInsets.symmetric(
          horizontal: CustomDimensions.defaultMargin,
          vertical: CustomDimensions.defaultMargin),
      child: Row(
        children: [
          leadingIconType != null
              ? leadingIconType == LeadingIconType.drawer
                  ? InkWell(
                      onTap: drawerClicked,
                      child: SvgPicture.asset(
                        "more_icon_white".svg,
                        width: 18.0.w,
                        height: 18.0.h,
                      ),
                    )
                  : InkWell(
                      onTap: backClicked,
                      child: SizedBox(
                        child: Icon(
                          Icons.arrow_back_ios_outlined,
                          size: 20.0.h,
                          color: CustomColors.whiteColor,
                        ),
                      ),
                    )
              : SizedBox(),
          Gap(20.w),
          Text(
            this.title,
            style: CustomStyle.textStyleBody2.copyWith(
              fontWeight: FontWeight.w700,
              color: Colors.white,
              fontSize: 24.sp
            ),
          )
        ],
      ),
    );
  }
}
