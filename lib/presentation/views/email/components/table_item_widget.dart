import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:pyli_business_mobile/presentation/custom_widgets/single_table_title_widget.dart';
import 'package:collection/collection.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pyli_business_mobile/presentation/style/__style.dart';
import 'package:pyli_business_mobile/utils/__utils.dart';

class EmailTableItemWidget extends HookWidget {
  String subject;
  String body;

  EmailTableItemWidget({
    required this.subject,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: CustomColors.containerGreyColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: EdgeInsets.symmetric(
        vertical: 11.h,
        horizontal: 12.w,
      ),
      margin: EdgeInsets.only(
        top: CustomDimensions.defaultMargin.h,
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                subject,
                style: CustomStyle.textStyleBody2.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: CustomDimensions.textSize16,
                  color: CustomColors.appBlackColor2,
                ),
              ),
            ),
            Expanded(
              child: Text(
                body,
                style: CustomStyle.textStyleBody2.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: CustomDimensions.textSize16,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Gap(10.w),
            Container(
              child: Center(
                child: SvgPicture.asset("edit_grey".svg),
              ),
            )
          ]),
    );
  }
}
