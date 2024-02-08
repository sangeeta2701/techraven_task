import 'package:assignment_task/helper.dart';
import 'package:assignment_task/utils/colors.dart';
import 'package:assignment_task/widgets/sizedbox.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final List<String> imgList = [
  "assets/images/img2.jpg",
  "assets/images/img3.jpg",
  "assets/images/img4.jpg",
];

class RaceScreen extends StatefulWidget {
  const RaceScreen({super.key});

  @override
  State<RaceScreen> createState() => _RaceScreenState();
}

class _RaceScreenState extends State<RaceScreen> {
  int currentIndex = 0;

  AuthServices authServices = AuthServices();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: wColor,
      appBar: AppBar(
        backgroundColor: themeColor,
        leading: Icon(
          Icons.account_circle_outlined,
          color: wColor,
          size: 26.sp,
        ),
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
                onPressed: () {},
                child: Text("")),
          ),
          width12,
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          height16,
          CarouselSlider(
              items: imgList
                  .map((item) => Container(
                        // height: 50.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage(item), fit: BoxFit.cover)),
                      ))
                  .toList(),
              options: CarouselOptions(
                viewportFraction: 0.9,
                enlargeCenterPage: true,
                aspectRatio: 5 / 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.map((url) {
              int index = imgList.indexOf(url);
              return Container(
                width: 8.w,
                height: 8.h,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentIndex == index
                        ? bColor
                        : gColor.withOpacity(0.2)),
              );
            }).toList(),
          ),
          height12,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                raceDetailContainer(),
                height20,
                raceDetailContainer(),
                height20,
                raceDetailContainer(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget raceDetailContainer() {
    return Container(
      height: 85.h,
      width: double.infinity,
      decoration: BoxDecoration(
          color: blueColor, borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "BENGALURU TROPHY",
                  style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                      color: themeColor,
                      height: 1.4),
                ),
                Row(
                  children: [
                    Text(
                      "Details",
                      style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400,
                          color: wColor,
                          height: 1.4),
                    ),
                    width4,
                    Icon(
                      Icons.info_outline,
                      color: wColor,
                    )
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
                    Icon(
                      Icons.emoji_events,
                      color: wColor,
                      size: 26.sp,
                    ),
                    Text(
                      "Prize:",
                      style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400,
                          color: wColor,
                          height: 1.4),
                    ),
                    Text(
                      "50.000",
                      style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w600,
                          color: wColor,
                          height: 1.4),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.money,
                      color: wColor,
                      size: 26.sp,
                    ),
                    Text(
                      "Entry:",
                      style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400,
                          color: wColor,
                          height: 1.4),
                    ),
                    Text(
                      "500",
                      style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w600,
                          color: wColor,
                          height: 1.4),
                    )
                  ],
                ),
                SizedBox(
                  height: 25.h,
                  width: 95.w,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          backgroundColor: themeColor),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (c) {
                              return Dialog(
                                backgroundColor: wColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                child: SizedBox(
                                  height: 300.h,
                                  child: SingleChildScrollView(
                                    child: Form(
                                      key: _formKey,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8, horizontal: 12),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Center(
                                              child: Text(
                                                "Register For Event",
                                                style: TextStyle(
                                                    fontSize: 13.sp,
                                                    fontWeight: FontWeight.w600,
                                                    color: bColor,
                                                    height: 1.4),
                                              ),
                                            ),
                                            Divider(),
                                            height12,
                                            // Row(
                                            //   children: [
                                            //     SizedBox(
                                            //       width: 60,
                                            //       child: Text(
                                            //                                                   "User Name:",
                                            //                                                   style: TextStyle(
                                            //       fontSize: 11.sp,
                                            //       fontWeight: FontWeight.w400,
                                            //       color: gColor,
                                            //                                                   ),
                                            //                                                 ),
                                            //     ),
                                            // width12,
                                            // Expanded(
                                            //   child: TextFormField(
                                            //     controller: nameController,
                                            //     keyboardType: TextInputType.name,
                                            //     decoration: InputDecoration(
                                            //       contentPadding:
                                            //           EdgeInsets.symmetric(
                                            //               horizontal: 12),
                                            //       hintText: "Enter User Name:",
                                            //       hintStyle: TextStyle(
                                            //           fontSize: 12.sp,
                                            //           fontWeight: FontWeight.w500,
                                            //           color: gColor,
                                            //           height: 1.4),
                                            //       enabledBorder: OutlineInputBorder(
                                            //         borderRadius:
                                            //             BorderRadius.circular(8),
                                            //         borderSide: BorderSide(
                                            //             color: gColor, width: 1),
                                            //       ),
                                            //       focusedBorder: OutlineInputBorder(
                                            //         borderRadius:
                                            //             BorderRadius.circular(8),
                                            //         borderSide: BorderSide(
                                            //             color: themeColor,
                                            //             width: 1),
                                            //       ),
                                            //     ),
                                            //     validator: (value) {
                                            //       if (value!.isEmpty) {
                                            //         return "Please enter required field";
                                            //       } else {
                                            //         return null;
                                            //       }
                                            //     },
                                            //   ),
                                            // ),
                                            //   ],
                                            // ),

                                            height12,
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 60,
                                                  child: Text(
                                                    "User Email:",
                                                    style: TextStyle(
                                                      fontSize: 11.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: gColor,
                                                    ),
                                                  ),
                                                ),
                                                width12,
                                                Expanded(
                                                  child: TextFormField(
                                                    controller:
                                                        authServices.email,
                                                    keyboardType: TextInputType
                                                        .emailAddress,
                                                    decoration: InputDecoration(
                                                      contentPadding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 12),
                                                      hintText: "Enter Email",
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
                                                ),
                                              ],
                                            ),
                                            height12,
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 60,
                                                  child: Text(
                                                    "Password:",
                                                    style: TextStyle(
                                                      fontSize: 11.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: gColor,
                                                    ),
                                                  ),
                                                ),
                                                width12,
                                                Expanded(
                                                  child: TextFormField(
                                                    controller:
                                                        authServices.password,
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
                                                )
                                              ],
                                            ),
                                            height28,
                                            Center(
                                              child: ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          elevation: 6,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8),
                                                          ),
                                                          backgroundColor:
                                                              themeColor),
                                                  onPressed: () {
                                                    if (authServices.email !=
                                                            null &&
                                                        authServices.password !=
                                                            null) {
                                                      authServices.RegisterUser(
                                                          context);
                                                      Navigator.pop(context);
                                                    }
                                                  },
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        vertical: 2,
                                                        horizontal: 8),
                                                    child: Text(
                                                      "REGISTER",
                                                      style: TextStyle(
                                                          fontSize: 14.sp,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color: wColor,
                                                          height: 1.4),
                                                    ),
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            });
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
              ],
            )
          ],
        ),
      ),
    );
  }
}
