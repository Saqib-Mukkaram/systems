import 'package:flutter/material.dart';
import 'package:systems/WebSystem/Resources/Constants.dart';

class SideBarButtons extends StatelessWidget {
  final String imagePath;
  final Color color;
  const SideBarButtons({
    required this.imagePath,
    this.color = Colors.white,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(8),
        constraints: const BoxConstraints(
          minHeight: 50,
          minWidth: 50,
        ),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: InkWell(
          onTap: () {
            // TODO:
            print("Button Pressed");
            // NOTE: Need to update accrodingly
            // Get.to()
          },
          child: Image.asset(
            imagePath,
            width: 40,
            height: 40,
            fit: BoxFit.fill,
          ),
        ));
  }
}
