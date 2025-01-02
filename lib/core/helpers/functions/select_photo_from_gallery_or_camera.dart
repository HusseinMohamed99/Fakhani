import 'package:fakhani/core/helpers/extensions/ui_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void showSelectPhotoOptions(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: 25.topBorderRadius,
    ),
    builder: (context) => DraggableScrollableSheet(
      initialChildSize: 0.28,
      maxChildSize: 0.28.spMax,
      minChildSize: 0.20.spMin,
      expand: false,
      builder: (context, scrollController) {
        // Build Custom Widget
        return Container();
      },
    ),
  );
}
