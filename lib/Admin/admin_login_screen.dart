import 'package:assignment_task/helper.dart';
import 'package:assignment_task/utils/colors.dart';
import 'package:assignment_task/widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class AdminLoginScreen extends StatefulWidget {
  const AdminLoginScreen({super.key});

  @override
  State<AdminLoginScreen> createState() => _AdminLoginScreenState();
}

class _AdminLoginScreenState extends State<AdminLoginScreen> {
  TextEditingController phoneController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AuthServices authServices = AuthServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: wColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 24),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: Image.asset(
                    "assets/images/img1.png",
                    height: 70.h,
                    width: 70.w,
                    fit: BoxFit.cover,
                  )),
                  height30,
                  Text(
                    "Login to Admin Account",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: bColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  height12,
                  Text(
                    "Add your registered email & password",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: bColor),
                    textAlign: TextAlign.center,
                  ),
                  height30,
                  TextFormField(
                    controller: authServices.adminemail,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 12),
                      hintText: "Enter Email",
                      hintStyle: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: gColor,
                          height: 1.4),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: gColor, width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: themeColor, width: 1),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter required field";
                      } else {
                        return null;
                      }
                    },
                  ),
                  height20,
                  TextFormField(
                                                    controller:
                                                        authServices.adminpassword,
                                                    obscureText: true,
                                                    keyboardType: TextInputType
                                                        .visiblePassword,
                                                    decoration: InputDecoration(
                                                      contentPadding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 12),
                                                      hintText: "Enter Paaword",
                                                      hintStyle: TextStyle(
                                                          fontSize: 12.sp,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: gColor,
                                                          height: 1.4),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        borderSide: BorderSide(
                                                            color: gColor,
                                                            width: 1),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        borderSide: BorderSide(
                                                            color: themeColor,
                                                            width: 1),
                                                      ),
                                                    ),
                                                    validator: (value) {
                                                      if (value!.isEmpty) {
                                                        return "Please enter required field";
                                                      } else {
                                                        return null;
                                                      }
                                                    },
                                                  ),
                  height80,
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          backgroundColor: themeColor),
                      onPressed: () {
                         // ignore: unnecessary_null_comparison
                         if (authServices.adminemail !=
                                                            null) {
                                                      authServices.adminLogin(
                                                          context);
                                                      Navigator.pop(context);
                                                    }
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 2, horizontal: 8),
                        child: Text(
                          "LOGIN",
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              color: wColor,
                              height: 1.4),
                        ),
                      )),
                  SizedBox(
                    height: 180.h,
                  ),
                  Text(
                    "All rights reserved INDIA RACE FANTASY 2022",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: gColor,
                        height: 1.4),
                  ),
                  height4,
                  Text(
                    "Powered by techraven.in",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: gColor,
                        height: 1.4),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
