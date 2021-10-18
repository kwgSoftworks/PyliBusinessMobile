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
import 'package:pyli_business_mobile/presentation/views/transaction/components/transactions_table_item_widget.dart';
import 'package:pyli_business_mobile/utils/__utils.dart';
import 'package:pyli_business_mobile/utils/enums.dart';

class TransactionView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      header_title: "Transactions",
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
                                title: "Select",
                                titleColor: CustomColors.secondaryColor,
                                titleBold: true,
                                buttonColor: CustomColors.yelloColor,
                                borderRadius: 10.0,
                                titleIcon: SvgPicture.asset("checked".svg),
                              ),
                            ),
                            Gap(10.0.w),
                            Expanded(
                              child: CustomButton(
                                title: "Deselect all",
                                titleColor: CustomColors.secondaryColor,
                                titleBold: true,
                                buttonColor: CustomColors.lightPrimaryColor2,
                                borderRadius: 10.0,
                                titleIcon: Icon(Icons.arrow_back_ios_outlined, size: 15.0,),
                                onTap: () {
                                  locator<NavigationHandler>().pushNamed(
                                      Routes.create_new_template_view);
                                },
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
                                title: "All Transactions",
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
                              title: "Name",
                              canRearrange: true,
                            ),
                            SingleTableTitleWidget(
                              title: "Type",
                            ),
                            SingleTableTitleWidget(
                              title: "Amount",
                            ),
                          ],
                        ),
                        TransactionsTableItemWidget(
                          name: "Acne Co",
                          type:
                              "Subscription",
                          amount: "\$35",
                        ),
                        TransactionsTableItemWidget(
                          name: "Abstergo Ltd",
                          type:
                          "Subscription",
                          amount: "\$35",
                        ),
                        TransactionsTableItemWidget(
                          name: "Big kahuna",
                          type:
                          "Subscription",
                          amount: "\$35",
                        ),
                        TransactionsTableItemWidget(
                          name: "Binford Ltd",
                          type:
                          "Subscription",
                          amount: "\$35",
                        ),
                        TransactionsTableItemWidget(
                          name: "Binford Ltd",
                          type:
                          "Subscription",
                          amount: "\$35",
                        ),
                        TransactionsTableItemWidget(
                          name: "Binford Ltd",
                          type:
                          "Subscription",
                          amount: "\$35",
                        ),
                        TransactionsTableItemWidget(
                          name: "Binford Ltd",
                          type:
                          "Subscription",
                          amount: "\$35",
                        ),
                        TransactionsTableItemWidget(
                          name: "Binford Ltd",
                          type:
                          "Subscription",
                          amount: "\$35",
                        ),
                        TransactionsTableItemWidget(
                          name: "Binford Ltd",
                          type:
                          "Subscription",
                          amount: "\$35",
                        ),

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
