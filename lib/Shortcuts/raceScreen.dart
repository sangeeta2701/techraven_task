

import 'package:assignment_task/utils/colors.dart';
import 'package:assignment_task/widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RaceScreen extends StatelessWidget {
  const RaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: wColor,
      appBar: AppBar(
        backgroundColor: themeColor,
        leading: Icon(Icons.account_circle_outlined,color: wColor,size: 26.sp,),
        actions: [
          SizedBox(
            height: 20.h,
            width: 120.w,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                            elevation: 6,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            backgroundColor: wColor),
              onPressed: (){}, child: Text("")),
          ),
          width12,
         
        ],
      ),
      body:Padding(
        padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            raceDetailContainer(),
            height20,
            raceDetailContainer(),
          ],
        ),
      ),
    );
  }

  Widget raceDetailContainer() {
    return Container(
            height: 85.h,
            width: double.infinity,
            decoration: BoxDecoration(color: blueColor,
            borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("BENGALURU TROPHY",style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w500,
                                  color: themeColor,
                                  height: 1.4),),
                                  Row(
                    children: [
                      Text("Details",style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w400,
                                  color: wColor,
                                  height: 1.4),),
                                  width4,
                                  Icon(Icons.info_outline,color: wColor,)

                    ],
                  )
                    ],
                  ),
                  Divider(
                    color: wColor,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Row(
                      children: [
                        Icon(Icons.emoji_events,color: wColor,size: 26.sp,),
                        width4,
                        Text("Prize:",style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w400,
                                  color: wColor,
                                  height: 1.4),),
                        Text("50.000",style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w600,
                                  color: wColor,
                                  height: 1.4),)
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.money,color: wColor,size: 26.sp,),
                        width4,
                        Text("Entry:",style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w400,
                                  color: wColor,
                                  height: 1.4),),
                        Text("500",style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w600,
                                  color: wColor,
                                  height: 1.4),)
                      ],
                    ),
                    SizedBox(
                      height: 25.h,
                      width: 90.w,
                      child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          backgroundColor: themeColor),
                      onPressed: () {
                        
                        
                      },
                      child: Text(
                        "REGISTER",
                        style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                            color: wColor,
                           ),
                      )),
                    ),
                  ],)
                ],
              ),
            ),
          );
  }
}