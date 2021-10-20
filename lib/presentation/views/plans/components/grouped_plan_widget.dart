import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pyli_business_mobile/presentation/style/__style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pyli_business_mobile/presentation/views/plans/components/single_plan_widget.dart';
import 'package:collection/collection.dart';

class GroupedPlanWidget extends StatelessWidget {
  List<SinglePlanWidget> allSinglePlans;
  String group_title;

  GroupedPlanWidget({
    required this.allSinglePlans,
    this.group_title = "",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: 20.h,
        horizontal: 18.w,
      ),
      decoration: BoxDecoration(
        color: CustomColors.containerGreyColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            group_title,
            style: CustomStyle.textStyleBody2.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: CustomDimensions.textSize16,
              color: CustomColors.secondaryColor,
            ),
          ),
          Gap(18.h),
          Row(
            children: [
              Checkbox(
                value: true,
                onChanged: (value) {},
              ),
              Gap(13.w),
              Text(
                "Display an auto-renewal toggle",
                style: CustomStyle.textStyleBody2.copyWith(
                  fontSize: CustomDimensions.textSize16,
                ),
              )
            ],
          ),
          Gap(8.h),
          Container(
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: allSinglePlans.length,
              padding: EdgeInsets.zero,
              itemBuilder: (BuildContext context, int index) {
                return allSinglePlans[index];
              },
            ),
          )
        ],
      ),
    );
  }
}
