import 'package:flutter/material.dart';

class CheckboxBottomSheet extends StatefulWidget {
  @override
  _CheckboxBottomSheetState createState() => _CheckboxBottomSheetState();
}

class _CheckboxBottomSheetState extends State<CheckboxBottomSheet> {
  bool _value = false;

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
       
        children: [
          Center(
              child: InkWell(
                  onTap: () {
                    setState(() {
                      _value = !_value;
                    });
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: _value ? Color(0xff3c2f35) : Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white, // Border color
                        width: 2.0, // Border width
                      ),
                    ),
                    child: _value
                        ? Icon(
                            Icons.check,
                            size: 30.0,
                            color: Colors.white,
                          )
                        : Icon(
                            Icons.check_box_outline_blank,
                            size: 30.0,
                            color: Colors.transparent,
                          ),
                  ))),
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
