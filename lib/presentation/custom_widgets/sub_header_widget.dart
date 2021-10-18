import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pyli_business_mobile/presentation/custom_design/custom_design.dart';
import 'package:pyli_business_mobile/presentation/style/__style.dart';
import 'package:pyli_business_mobile/utils/__utils.dart';

class SubHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.secondaryColor,
      padding: EdgeInsets.only(
        bottom: 15.0,
        left: CustomDimensions.defaultMargin,
        right: CustomDimensions.defaultMargin,
      ),
      child: CustomTextField(
        hint: "Search",
        hintColor: CustomColors.whiteColor,
        hintColorOpacity: 0.5,
        borderRadius: 100.0,
        activateFocus: false,
        prefixIcon: SvgPicture.asset(
          "search".svg,
        ),
        borderColor: Colors.transparent,
        fillColor: CustomColors.whiteColor.withOpacity(0.1),
        borderWidth: 0.0,
        contentPadding: EdgeInsets.symmetric(
          vertical: 15.0,
        ),
      ),
    );
  }
}
