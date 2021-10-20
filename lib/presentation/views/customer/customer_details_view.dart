import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:pyli_business_mobile/presentation/custom_design/custom_design.dart';
import 'package:pyli_business_mobile/presentation/custom_widgets/custom_widget.dart';
import 'package:pyli_business_mobile/presentation/style/__style.dart';
import 'package:pyli_business_mobile/presentation/style/custom_dimensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pyli_business_mobile/presentation/views/dashboard/component/component.dart';
import 'package:pyli_business_mobile/utils/__utils.dart';
import 'package:pyli_business_mobile/utils/enums.dart';

class CustomerDetailsView extends HookWidget {

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      header_title: "Customer Details",
      leadingIconType: LeadingIconType.back_arrow,
      container: Container(
        color: Colors.white,
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: CustomDimensions.margin16,
          ),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(20.h),
                Text("helo world")

              ],
            ),
          ),
        ),
      ),
    );
  }
}
