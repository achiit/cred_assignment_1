import 'package:flutter/material.dart';

class CustomIconButtons extends StatelessWidget {
  IconData? icon;
  CustomIconButtons({
    this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromARGB(255, 32, 40, 47), // #171d22 color
      borderRadius: BorderRadius.circular(25.0), // Adjust the radius as needed
      child: InkWell(
        onTap: () {
          // Handle button tap
          print('Button tapped');
        },
        borderRadius: BorderRadius.circular(
            30.0), // Match the outer container's border radius
        child: Container(
          width: 50.0,
          height: 50.0,
          padding: EdgeInsets.all(16.0), // Adjust padding as needed
          child: Icon(
            icon,
            weight: 2,
            size: 20,
            color: Colors.white, // White color for the close icon
          ),
        ),
      ),
    );
  }
}
