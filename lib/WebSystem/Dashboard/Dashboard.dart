import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systems/CustomWidgets/SideBarButtons.dart';
import 'package:systems/WebSystem/Resources/Constants.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (con, constraints) {
            return Row(
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  width: 100,
                  decoration: BoxDecoration(
                    color: Color(0xffDADADA),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (con, index) {
                        return SideBarButtons(
                          imagePath: Constants.icon_black_Analytics,
                        );
                      }),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
