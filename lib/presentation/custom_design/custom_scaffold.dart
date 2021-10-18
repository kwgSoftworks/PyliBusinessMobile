import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:pyli_business_mobile/handlers/__handlers.dart';
import 'package:pyli_business_mobile/presentation/custom_design/custom_design.dart';
import 'package:pyli_business_mobile/presentation/custom_widgets/custom_widget.dart';
import 'package:pyli_business_mobile/presentation/style/__style.dart';
import 'package:pyli_business_mobile/presentation/style/custom_dimensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pyli_business_mobile/presentation/views/dashboard/component/component.dart';
import 'package:pyli_business_mobile/utils/__utils.dart';
import 'package:pyli_business_mobile/utils/enums.dart';

class CustomScaffold extends HookWidget {

  LeadingIconType leadingIconType;
  Widget container;
  String header_title;

  CustomScaffold({
    required this.leadingIconType,
    required this.container,
    required this.header_title,
  });

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      backgroundColor: CustomColors.secondaryColor,
      scaffoldKey: _key,
      safeBottom: false,
      drawer: CustomDrawer(),
      builder: (size) {
        return Column(
          children: [
            CustomAppBar(
              drawerClicked: () {
                _key.currentState!.openDrawer();
              },
              leadingIconType: leadingIconType,
              backClicked: () {
                locator<NavigationHandler>().goBack();
              },
              title: this.header_title,
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: this.container,
              ),
            ),
          ],
        );
      },
    );
  }
}
