import 'package:assignment_task/screens/otp_screen.dart';
import 'package:assignment_task/utils/colors.dart';
import 'package:assignment_task/widgets/dialogs/error_dialog.dart';
import 'package:assignment_task/widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../widgets/dialogs/loading_dialog.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  formValidation() {
    if (phoneController.text.isNotEmpty) {
      //login
      showDialog(
          context: context,
          builder: (c) {
            return LoadingDialog(message: "Login.....");
          });
      Future.delayed(Duration(seconds: 3), () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OTPScreen(mobNumber: phoneController.text,),
          ),
        );
      });
    } else {
      showDialog(
          context: context,
          builder: (c) {
            return ErrorDialog(message: "Please enter mobile number");
          });
    }
  }

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
                    "Hi,",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: bColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  height12,
                  Text(
                    "Lets get started",
                    style: TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w400, color: bColor),
                    textAlign: TextAlign.center,
                  ),
                  height30,
                  IntlPhoneField(
                    showCountryFlag: false,
                    keyboardType: TextInputType.number,
                    disableLengthCheck: true,
                    inputFormatters: [LengthLimitingTextInputFormatter(10)],
                    controller: phoneController,
                    dropdownTextStyle: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: gColor,
                        height: 1.4),
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: gColor,
                        height: 1.4),
                    dropdownIcon: Icon(
                      Icons.expand_more,
                      color: themeColor,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 12),
                      hintText: "Enter Mobile Number",
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
                    initialCountryCode: 'IN',
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
                        if (_formKey.currentState!.validate()) {
                          formValidation();
                        }
                      },
                      child: Padding(
                        padding:
                            const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                        child: Text(
                          "CONTINUE",
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
