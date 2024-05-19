import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systems/CustomWidgets/SideBarButtons.dart';
import 'package:systems/WebSystem/Dashboard/Components/SalesGraph.dart';
import 'package:systems/WebSystem/Resources/Constants.dart';

enum DrawerButtonSelection { Sales, Inventory, Analytics, Customers }

class DashBoard extends StatelessWidget {
  DashBoard({super.key});

  final iconsList = [
    Icons.point_of_sale_outlined,
    Icons.inventory_2_outlined,
    Icons.insights_outlined,
    Icons.people_outlined,
  ];
  final _drawerButtonTapped = false.obs;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              _drawerButtonTapped.value = !_drawerButtonTapped.value;
            }),
        title: Text('Dashboard'),
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (con, constraints) {
            return Row(
              children: [
                Obx(() => AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      constraints: BoxConstraints(
                        minHeight: size.height,
                        maxHeight: size.height,
                        maxWidth: _drawerButtonTapped.value ? 200 : 50,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xffFAA250),
                      ),
                      child: ListView.builder(
                          itemCount: iconsList.length,
                          itemBuilder: (con, index) {
                            return SideBarButtons(
                              selectedButton: false.obs,
                              buttonName: DrawerButtonSelection.values[index]
                                  .toString(),
                              drawerButtonTapped: _drawerButtonTapped,
                              icon: iconsList[index],
                            );
                          }),
                    )),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      width: size.width,
                      decoration: BoxDecoration(
                          color: Color(0xffFAA250).withOpacity(0.1)),
                      child: Column(
                        children: [LineChartSample1()],
                      ),
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
