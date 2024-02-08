
import 'package:assignment_task/utils/colors.dart';
import 'package:assignment_task/widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class LoadingDialog extends StatelessWidget {
  const LoadingDialog({super.key, required this.message});
  final String message;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: wColor,
      child: SizedBox(
        height: 100.h,
        width: 150.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(
                themeColor,
              ),
            ),
            height8,
            Text(
              "$message",
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: bColor,
                  height: 1.4),
            ),
          ],
        ),
      ),
    );

  }
}
