import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pyli_business_mobile/handlers/__handlers.dart';
import 'package:pyli_business_mobile/presentation/bloc_controller/bloc/app_state_bloc.dart';
import 'package:pyli_business_mobile/presentation/bloc_controller/events/app_state_event.dart';
import 'package:pyli_business_mobile/presentation/bloc_controller/states/app_state.dart';
import 'package:pyli_business_mobile/presentation/custom_design/drawer_item.dart';
import 'package:pyli_business_mobile/presentation/routes/routes.dart';
import 'package:pyli_business_mobile/presentation/style/__style.dart';
import 'package:pyli_business_mobile/utils/__utils.dart';
import 'package:pyli_business_mobile/utils/enums.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: BlocBuilder<AppStateBloc, AppState>(
        builder: (context, state) {
          return Container(
            color: Colors.white,
            child: SafeArea(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(10.h),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 60.h,
                            width: 60.w,
                            decoration: BoxDecoration(
                              color: CustomColors.secondaryColor,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Text(
                                "JO",
                                style: CustomStyle.textStyleBody2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: CustomDimensions.textSize16,
                                ),
                              ),
                            ),
                          ),
                          Gap(10.h),
                          Text(
                            "Joshua Okwe",
                            style: CustomStyle.textStyleBody2.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: CustomDimensions.textSize16,
                            ),
                          ),
                          Gap(5.h),
                          Text(
                            "My Business Name",
                            style: CustomStyle.textStyleBody2.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: CustomDimensions.textSize12,
                                color: CustomColors.appBlackColor1
                                    .withOpacity(0.6)),
                          ),
                        ],
                      ),
                    ),
                    Gap(20.h),
                    DrawerItem(
                      title: 'Home',
                      isSelected: state.selectedSidebar == SideBarItems.home,
                      selected_svg_url: "home_selected",
                      unselected_svg_url: "home_unselected",
                      onTap: () {

                        context.read<AppStateBloc>().add(
                          SelectedSideBarChanged(newSideBarItem: SideBarItems.home
                          ),
                        );

                      },
                    ),
                    DrawerItem(
                      title: 'Customers',
                      isSelected: state.selectedSidebar == SideBarItems.customer,
                      selected_svg_url: "customer_selected",
                      unselected_svg_url: "drawer_customer_icon",
                      onTap: () {
                        context.read<AppStateBloc>().add(
                          SelectedSideBarChanged(newSideBarItem: SideBarItems.customer
                          ),
                        );
                      },
                    ),
                    DrawerItem(
                      title: 'Payment',
                      isSelected: state.selectedSidebar == SideBarItems.payment,
                      selected_svg_url: "dollar",
                      unselected_svg_url: "drawer_payment_icon",
                      onTap: () {
                        context.read<AppStateBloc>().add(
                          SelectedSideBarChanged(newSideBarItem: SideBarItems.payment
                          ),
                        );
                      },
                    ),
                    DrawerItem(
                      title: 'Plans',
                      isSelected: state.selectedSidebar == SideBarItems.plans,
                      selected_svg_url: "drawer_plant_icon_colored",
                      unselected_svg_url: "drawer_plant_icon",
                      onTap: () {
                        context.read<AppStateBloc>().add(
                          SelectedSideBarChanged(newSideBarItem: SideBarItems.plans
                          ),
                        );
                      },
                    ),
                    DrawerItem(
                      title: 'Add-ons',
                      isSelected: state.selectedSidebar == SideBarItems.add_ons,
                      selected_svg_url: "add_ons_selected",
                      unselected_svg_url: "drawer_add_ons_icon",
                      onTap: () {
                        context.read<AppStateBloc>().add(
                          SelectedSideBarChanged(newSideBarItem: SideBarItems.add_ons
                          ),
                        );
                      },
                    ),
                    DrawerItem(
                      title: 'Contracts',
                      isSelected: state.selectedSidebar == SideBarItems.contracts,
                      selected_svg_url: "contract_selected",
                      unselected_svg_url: "drawer_contracts_icon",
                      onTap: () {
                        //CLOSE OPEN DRAWER
                        context.read<AppStateBloc>().add(
                          SelectedSideBarChanged(newSideBarItem: SideBarItems.contracts
                          ),
                        );
                      },
                    ),
                    DrawerItem(
                      title: 'Options',
                      isSelected: state.selectedSidebar == SideBarItems.options,
                      selected_svg_url: "settings_selected",
                      unselected_svg_url: "settings",
                      onTap: () {
                        //CLOSE OPEN DRAWER
                        context.read<AppStateBloc>().add(
                          SelectedSideBarChanged(newSideBarItem: SideBarItems.options
                          ),
                        );
                      },
                    ),
                    DrawerItem(
                      title: 'Account',
                      isSelected: state.selectedSidebar == SideBarItems.account,
                      selected_svg_url: "person_selected",
                      unselected_svg_url: "person",
                      onTap: () {
                        context.read<AppStateBloc>().add(
                          SelectedSideBarChanged(newSideBarItem: SideBarItems.account
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
