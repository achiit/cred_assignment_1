import 'package:flutter/material.dart';

class CheckboxBottomSheet extends StatefulWidget {
  @override
  _CheckboxBottomSheetState createState() => _CheckboxBottomSheetState();
}

class _CheckboxBottomSheetState extends State<CheckboxBottomSheet> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          20.0,
        ),
        color: Color(0xff433139),
      ),
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Checkbox(
            
            value: isChecked,
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(10.0), // Adjust the radius as needed
            ),
            activeColor: Color(0xff3c2f35),
            onChanged: (value) {
              setState(() {
                isChecked = value ?? false;
              });
            },
          ),
          SizedBox(height: 10.0),
          Text(
            'Option 1',
            style: TextStyle(fontSize: 16.0),
          ),
          Text(
            'Option 2',
            style: TextStyle(fontSize: 16.0),
          ),
          Text(
            'Option 3',
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}
