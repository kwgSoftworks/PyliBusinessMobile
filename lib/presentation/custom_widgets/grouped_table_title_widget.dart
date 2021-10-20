import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pyli_business_mobile/presentation/custom_widgets/single_table_title_widget.dart';
import 'package:collection/collection.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GroupedTableTitle extends HookWidget {
  List<SingleTableTitleWidget> all_title;

  GroupedTableTitle({
    required this.all_title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: all_title.mapIndexed((index, element) {
          return Expanded(
            child: all_title[index],
          );
        }).toList(),
      ),
    );
  }
}
