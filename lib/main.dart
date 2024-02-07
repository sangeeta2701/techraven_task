import 'package:assignment_task/screens/login_screen.dart';
import 'package:assignment_task/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          
          theme: ThemeData(
            primaryColor: themeColor,
            primarySwatch: Colors.amber,
           
          ),
          // home: SignInScreen(),
          home: LoginScreen(),
        );
      },
    );
  }
}

