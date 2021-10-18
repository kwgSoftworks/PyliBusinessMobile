import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:pyli_business_mobile/presentation/style/__style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRadioWidget extends HookWidget {

  String title1;
  String title2;
  String groupType;
  Function(String value) onChanged;

  CustomRadioWidget({
    required this.title1,
    required this.title2,
    required this.onChanged,
    required this.groupType,
});

  @override
  Widget build(BuildContext context) {

    final selected_button = useState(title1);

    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: CustomColors.containerGreyColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Radio(
                value: title1,
                groupValue: selected_button.value,
                onChanged: (value) {
                  onChanged.call(value.toString());
                  selected_button.value = value.toString();
                },
              ),
              Gap(12.w),
              InkWell(
                onTap: (){

                  onChanged.call(title1.toString());
                  selected_button.value = title1.toString();

                },
                child: Text(
                  title1,
                  style: CustomStyle.textStyleBody2.copyWith(
                    fontSize: CustomDimensions.textSize16,
                  ),
                ),
              )
            ],
          ),
          Gap(10.h),
          Row(
            children: [
              Radio(
                value: title2,
                groupValue: selected_button.value,
                onChanged: (value) {

                  onChanged.call(value.toString());
                  selected_button.value = value.toString();

                },
              ),
              Gap(12.w),
              InkWell(
                onTap: (){

                  onChanged.call(title2.toString());
                  selected_button.value = title2.toString();

                },
                child: Text(
                  title2,
                  style: CustomStyle.textStyleBody2.copyWith(
                    fontSize: CustomDimensions.textSize16,
                  ),
                ),
              )
            ],
          ),

        ],
      ),
    );
  }
}
