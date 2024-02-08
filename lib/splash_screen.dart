import 'package:assignment_task/Admin/admin_login_screen.dart';
import 'package:assignment_task/User/screens/login_screen.dart';
import 'package:assignment_task/utils/colors.dart';
import 'package:assignment_task/widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
            Image.asset(
              "assets/images/img1.png",
              height: 100.h,
              width: 100.w,
              fit: BoxFit.cover,
            ),
            height30,
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 6,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: themeColor),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                  child: Text(
                    "USER",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: wColor,
                        height: 1.4),
                  ),
                )),
                height20,
                ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 6,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: themeColor),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AdminLoginScreen()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                  child: Text(
                    "ADMIN",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: wColor,
                        height: 1.4),
                  ),
                )),
                    ],
                  ),
          )),
    );
  }
}
