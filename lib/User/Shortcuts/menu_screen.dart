

import 'package:assignment_task/utils/colors.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: wColor,
      body: Center(
        child: Text("Menu"),
      ),
    );
  }
}