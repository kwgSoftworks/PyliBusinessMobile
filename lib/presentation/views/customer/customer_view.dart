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
import 'package:pyli_business_mobile/presentation/views/transaction/components/transactions_table_item_widget.dart';
import 'package:pyli_business_mobile/utils/__utils.dart';
import 'package:pyli_business_mobile/utils/enums.dart';

class CustomerView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      header_title: "Customers",
      leadingIconType: LeadingIconType.drawer,
      container: Container(
        color: Colors.white,
        width: double.infinity,
        child: SafeArea(
          top: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SubHeaderWidget(),
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
                                title: "Create Customer",
                                titleColor: CustomColors.secondaryColor,
                                titleBold: true,
                                buttonColor: CustomColors.lightPrimaryColor2,
                                borderRadius: 10.0,
                                titleIcon: SvgPicture.asset("add_box".svg),
                                onTap: () {
                                  locator<NavigationHandler>()
                                      .pushNamed(Routes.create_business_view);
                                },
                              ),
                            ),
                            Gap(15.0.w),
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
                        Container(
                          width: 215.0.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CustomButton(
                                buttonWidth: 140.w,
                                buttonHeight: 35.h,
                                borderRadius: 5.0,
                                title: "All User",
                                titleColor: CustomColors.primaryColor,
                                titleBold: true,
                                buttonColor: CustomColors.lightPrimaryColor2,
                              ),
                            ],
                          ),
                        ),
                        Gap(23.h),
                        GroupedTableTitle(
                          all_title: [
                            SingleTableTitleWidget(
                              title: "First Name",
                              canRearrange: true,
                            ),
                            SingleTableTitleWidget(
                              title: "Last Name",
                            ),
                            SingleTableTitleWidget(
                              title: "ID",
                            ),
                          ],
                        ),
                        TransactionsTableItemWidget(
                          name: "Adison",
                          type: "Vetrovs",
                          amount: "012",
                        ),
                        TransactionsTableItemWidget(
                          name: "Adison",
                          type: "Vetrovs",
                          amount: "231",
                        ),
                        TransactionsTableItemWidget(
                          name: "Adison",
                          type: "Vetrovs",
                          amount: "122",
                        ),
                        TransactionsTableItemWidget(
                          name: "Adison",
                          type: "Vetrovs",
                          amount: "321",
                        ),
                        TransactionsTableItemWidget(
                          name: "Adison",
                          type: "Vetrovs",
                          amount: "234",
                        ),
                        TransactionsTableItemWidget(
                          name: "Adison",
                          type: "Vetrovs",
                          amount: "234",
                        ),
                        TransactionsTableItemWidget(
                          name: "Adison",
                          type: "Vetrovs",
                          amount: "234",
                        ),
                        TransactionsTableItemWidget(
                          name: "Adison",
                          type: "Vetrovs",
                          amount: "545",
                        ),
                        TransactionsTableItemWidget(
                          name: "Adison",
                          type: "Vetrovs",
                          amount: "342",
                        ),
                        TransactionsTableItemWidget(
                          name: "Adison",
                          type: "Vetrovs",
                          amount: "245",
                        ),
                        TransactionsTableItemWidget(
                          name: "Adison",
                          type: "Vetrovs",
                          amount: "523",
                        ),
                        TransactionsTableItemWidget(
                          name: "Adison",
                          type: "Vetrovs",
                          amount: "654",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40.h,
                      width: 40.w,
                      child: Icon(
                        Icons.arrow_back_ios_rounded,
                        color: CustomColors.primaryColor,
                        size: 15.0,
                      ),
                      decoration: BoxDecoration(
                        color: CustomColors.lightPrimaryColor2,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    Gap(30.w),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "1",
                          style: CustomStyle.textStyleBody2.copyWith(
                            fontSize: CustomDimensions.textSize16,
                          ),
                        ),
                        Gap(6.w),
                        Text(
                          "of",
                          style: CustomStyle.textStyleBody2.copyWith(
                            fontSize: CustomDimensions.textSize16,
                          ),
                        ),
                        Gap(6.w),
                        Text(
                          "12",
                          style: CustomStyle.textStyleBody2.copyWith(
                            fontSize: CustomDimensions.textSize16,
                          ),
                        ),
                      ],
                    ),
                    Gap(30.w),
                    Container(
                      height: 40.h,
                      width: 40.w,
                      child: Icon(
                        Icons.arrow_back_ios_rounded,
                        color: CustomColors.primaryColor,
                        size: 15.0,
                      ),
                      decoration: BoxDecoration(
                        color: CustomColors.lightPrimaryColor2,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ],
                ),
              ),
              Gap(15.h),
            ],
          ),
        ),
      ),
    );
  }
}
