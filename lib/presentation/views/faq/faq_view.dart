import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:pyli_business_mobile/handlers/__handlers.dart';
import 'package:pyli_business_mobile/presentation/custom_design/custom_design.dart';
import 'package:pyli_business_mobile/presentation/custom_widgets/custom_widget.dart';
import 'package:pyli_business_mobile/presentation/custom_widgets/grouped_table_title_widget.dart';
import 'package:pyli_business_mobile/presentation/custom_widgets/single_table_title_widget.dart';
import 'package:pyli_business_mobile/presentation/routes/routes.dart';
import 'package:pyli_business_mobile/presentation/style/__style.dart';
import 'package:pyli_business_mobile/presentation/style/custom_dimensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pyli_business_mobile/presentation/views/dashboard/component/component.dart';
import 'package:pyli_business_mobile/presentation/views/email/components/table_item_widget.dart';
import 'package:pyli_business_mobile/presentation/views/faq/components/question_widget.dart';
import 'package:pyli_business_mobile/utils/__utils.dart';
import 'package:pyli_business_mobile/utils/enums.dart';

class FaqView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      header_title: "FAQ",
      leadingIconType: LeadingIconType.back_arrow,
      container: Container(
        color: Colors.white,
        width: double.infinity,
        child: SafeArea(
          top: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
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
                        Row(
                          children: [
                            Expanded(
                              child: CustomButton(
                                title: "Add New Question",
                                titleColor: CustomColors.secondaryColor,
                                titleBold: true,
                                buttonColor: CustomColors.lightPrimaryColor2,
                                borderRadius: 10.0,
                                titleIcon: SvgPicture.asset("add_box".svg),
                                onTap: () {
                                  locator<NavigationHandler>().pushNamed(
                                      Routes.create_new_question);
                                },
                              ),
                            ),
                            Gap(10.0.w),
                            Expanded(
                              child: CustomButton(
                                title: "Select",
                                titleColor: CustomColors.secondaryColor,
                                titleBold: true,
                                buttonColor: CustomColors.yelloColor,
                                borderRadius: 10.0,
                                titleIcon: SvgPicture.asset("checked".svg),
                              ),
                            ),
                          ],
                        ),
                        Gap(23.h),
                        QuestionWidget(),
                        QuestionWidget(),
                        QuestionWidget(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
