import 'package:flutter/material.dart';

class BaseScaffold extends StatelessWidget {
  final AppBar? appBar;
  final Widget Function(Size size) builder;
  final Widget? bottomNavBar;
  final Widget? drawer;
  final Widget? endDrawer;
  final Key? scaffoldKey;
  final Color? backgroundColor;
  final bool resizeToAvoidBottomInset;
  final bool safeTop;
  final bool safeBottom;

  const BaseScaffold({
    Key? key,
    required this.builder,
    this.appBar,
    this.bottomNavBar,
    this.drawer,
    this.endDrawer,
    this.scaffoldKey,
    this.backgroundColor,
    this.resizeToAvoidBottomInset = true,
    this.safeTop = true,
    this.safeBottom = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        Size constraints = Size(constraint.maxWidth, constraint.maxHeight);
        return GestureDetector(
          onTap: () {
            //unfocus any active TextField
            FocusScope.of(context).unfocus();
          },
          child: Scaffold(
            backgroundColor: backgroundColor,
            key: scaffoldKey,
            drawer: drawer,
            endDrawer: endDrawer,
            appBar: appBar,
            resizeToAvoidBottomInset: resizeToAvoidBottomInset,
            bottomNavigationBar: bottomNavBar,
            body: SafeArea(
              top: safeTop,
              bottom: safeBottom,
              child: Builder(
                builder: (_) => builder(constraints),
              ),
            ),
          ),
        );
      },
    );
  }
}
