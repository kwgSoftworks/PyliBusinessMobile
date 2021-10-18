import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pyli_business_mobile/presentation/custom_design/custom_design.dart';
import 'package:pyli_business_mobile/presentation/style/__style.dart';
import 'package:pyli_business_mobile/utils/validators.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UploadPhotoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(20.h),
            Text(
              "Company Logo",
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: CustomDimensions.textSize16,
                  ),
            ),
            SizedBox(
              height: 10.0,
            ),
            DottedBorder(
              color: CustomColors.secondaryColor,
              borderType: BorderType.RRect,
              strokeWidth: 3,
              dashPattern: [7, 7, 7, 7],
              radius: Radius.circular(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 200.0,
                margin: EdgeInsets.symmetric(horizontal: 30.0),
                child: Center(
                  child: CustomButton(
                    title: "Upload Company Logo",
                    titleColor: CustomColors.primaryColor,
                    isBorderButton: true,
                    borderRadius: 10.0,
                    borderWidth: 1,
                    buttonWidth: 200.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Icon",
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: CustomDimensions.textSize16,
                  ),
            ),
            SizedBox(
              height: 10.0,
            ),
            DottedBorder(
              color: CustomColors.secondaryColor,
              borderType: BorderType.RRect,
              strokeWidth: 3,
              dashPattern: [7, 7, 7, 7],
              radius: Radius.circular(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 200.0,
                margin: EdgeInsets.symmetric(horizontal: 30.0),
                child: Center(
                  child: CustomButton(
                    title: "Upload Icon",
                    titleColor: CustomColors.primaryColor,
                    isBorderButton: true,
                    borderRadius: 10.0,
                    borderWidth: 1,
                    buttonWidth: 200.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
