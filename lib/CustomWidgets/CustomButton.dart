import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final double width;
  final double height;
  final String buttonText;
  final VoidCallback onPress;
  final Color foregroundColor;
  final Color backgroundColor;
  final double paddingLeft;
  final double paddingRight;
  final double paddingBottom;
  final double paddingTop;
  final double elevation;
  final double borderRadius;
  final TextStyle buttonStyle;

  CustomButton({
    Key? key,
    this.width = 400,
    this.height = 50,
    this.backgroundColor = const Color.fromARGB(255, 29, 113, 247),
    this.foregroundColor = Colors.white,
    this.paddingBottom = 5,
    this.paddingLeft = 16,
    this.paddingRight = 16,
    this.paddingTop = 5,
    this.elevation = 8,
    this.borderRadius = 8,
    this.buttonStyle = const TextStyle(fontSize: 18),
    required this.buttonText,
    required this.onPress,
  }) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(
        widget.paddingLeft,
        widget.paddingTop,
        widget.paddingRight,
        widget.paddingBottom,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: widget.foregroundColor,
          backgroundColor: widget.backgroundColor,
          elevation: widget.elevation,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(widget.borderRadius),
            ),
          ),
          minimumSize: Size(widget.width, widget.height),
        ),
        onPressed: widget.onPress,
        child: Text(
          widget.buttonText,
          style: widget.buttonStyle,
        ),
      ),
    );
  }
}
