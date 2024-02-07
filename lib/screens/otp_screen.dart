import 'package:assignment_task/screens/mainScreen.dart';
import 'package:assignment_task/utils/colors.dart';
import 'package:assignment_task/widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pinput/pinput.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key, required this.mobNumber});
  final String mobNumber;

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController pinController = TextEditingController();

  final focusNode = FocusNode();
  // String rn = "";

  final defaultPinTheme = PinTheme(
    width: 50,
    height: 50,
    margin: const EdgeInsets.symmetric(horizontal: 8),
    textStyle: TextStyle(
      fontSize: 18,
      color: Color.fromRGBO(10, 31, 50, 1),
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: gColor.withOpacity(0.3)),
    ),
  );

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: wColor,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
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
                      "Pease enter the OTP send to Your\n Mobile Number ${widget.mobNumber}",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: bColor),
                      textAlign: TextAlign.center,
                    ),
                    height30,
                    Align(
                      alignment: Alignment.center,
                      child: Pinput(
                        controller: pinController,
                        focusNode: focusNode,
                        androidSmsAutofillMethod:
                            AndroidSmsAutofillMethod.smsUserConsentApi,
                        listenForMultipleSmsOnAndroid: true,
                        defaultPinTheme: defaultPinTheme,
                        hapticFeedbackType: HapticFeedbackType.heavyImpact,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter email";
                          } else {
                            return null;
                          }
                        },
                        cursor: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 9),
                              width: 22,
                              height: 1,
                              color: themeColor,
                            ),
                          ],
                        ),
                        errorPinTheme: defaultPinTheme.copyBorderWith(
                          border: Border.all(color: Colors.redAccent),
                        ),
                      ),
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
                          if (_formKey.currentState!.validate()) {
                            Fluttertoast.showToast(
                                msg: "Mobile Number verified successfully");
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>MainScreen(),),);
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 2, horizontal: 8),
                          child: Text(
                            "Verify",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: wColor,
                                height: 1.4),
                          ),
                        )),
                    height30,
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Didn't receive an OTP ?",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: bColor),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    height20,
                    Align(
                      alignment: Alignment.center,
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Resend OTP",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: bColor,
                                decoration: TextDecoration.underline),
                            textAlign: TextAlign.center,
                          )),
                    ),
                    SizedBox(
                      height: 170.h,
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
        ));
  }
}
