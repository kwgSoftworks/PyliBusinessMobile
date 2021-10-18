import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pyli_business_mobile/presentation/style/__style.dart';
import 'package:pyli_business_mobile/utils/__utils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum OrderType { a_z, z_a }

class SingleTableTitleWidget extends StatefulWidget {
  String title;
  bool canRearrange;
  Function()? onRearranged;

  SingleTableTitleWidget({
    required this.title,
    this.canRearrange = false,
    this.onRearranged,
  });

  @override
  _SingleTableTitleWidgetState createState() => _SingleTableTitleWidgetState();
}

class _SingleTableTitleWidgetState extends State<SingleTableTitleWidget> {
  OrderType orderType = OrderType.a_z;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {
          setState(
            () {
              if (orderType == OrderType.a_z) {
                orderType = OrderType.z_a;
              } else {
                orderType = OrderType.a_z;
              }
            },
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.title,
              style: CustomStyle.textStyleBody2.copyWith(
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
                color: CustomColors.secondaryColor,
              ),
            ),
            widget.canRearrange
                ? Row(
                    children: [
                      Gap(10.0),
                      orderType == OrderType.a_z
                          ? Icon(
                              Icons.arrow_downward,
                              color: CustomColors.secondaryColor,
                            )
                          : Icon(
                              Icons.arrow_upward,
                              color: CustomColors.secondaryColor,
                            )
                    ],
                  )
                : SizedBox()
          ],
        ),
      ),
    );
  }
}
