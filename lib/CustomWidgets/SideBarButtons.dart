import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systems/WebSystem/Resources/Constants.dart';

class SideBarButtons extends StatelessWidget {
  final IconData icon;
  final Color color;
  final Rx<bool> drawerButtonTapped;
  final String buttonName;
  final Rx<bool> selectedButton;

  SideBarButtons({
    required this.selectedButton,
    required this.drawerButtonTapped,
    required this.icon,
    required this.buttonName,
    this.color = Colors.black,
    super.key,
  });

  final displayTest = false.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedContainer(
        onEnd: () {
          displayTest.value = drawerButtonTapped.value;
        },
        duration: Duration(milliseconds: 500),
        margin: const EdgeInsets.all(4),
        constraints: BoxConstraints(
          maxHeight: drawerButtonTapped.value ? 65 : 40,
          maxWidth: 50,
        ),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: selectedButton.value
              ? Colors.deepOrangeAccent.shade100
              : Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: InkWell(
          onTap: () {
            // TODO:
            print("Button Pressed");
            // NOTE: Need to update accrodingly

            // Get.to()
          },
          child: Center(
            child: Column(
              children: [
                Icon(
                  icon,
                  color: color,
                ),
                Obx(() => displayTest.value
                    ? Text(
                        'Button',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      )
                    : SizedBox.shrink())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
