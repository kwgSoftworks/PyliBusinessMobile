import 'package:flutter/material.dart';
import 'package:pyli_business_mobile/presentation/style/__style.dart';

class SingleIndicatorWidget extends StatelessWidget {
  bool isCurrentStep;
  bool isActivated;
  String? step;

  SingleIndicatorWidget({
    this.isActivated = true,
    this.isCurrentStep = false,
    this.step,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: isCurrentStep
          ? Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 6.0,
                    width: 6.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(0.2),
                    ),
                  ),
                  SizedBox(
                    width: 2.0,
                  ),
                  Container(
                    height: 6.0,
                    width: 6.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(0.6),
                    ),
                  ),
                  SizedBox(
                    width: 2.0,
                  ),
                  Container(
                    height: 6.0,
                    width: 6.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )
          : isActivated
              ? Text(
                  "Step " + step.toString(),
                  style: CustomStyle.textStyleBody2.copyWith(
                    fontSize: CustomDimensions.textSize12,
                    color: CustomColors.whiteColor,
                  ),
                )
              : Text(
                  "Step " + step.toString(),
                  style: CustomStyle.textStyleBody2.copyWith(
                    fontSize: CustomDimensions.textSize12,
                  ),
                ),
    );
  }
}
