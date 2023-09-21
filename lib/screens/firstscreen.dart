import 'package:cred_assignment/constants/dimensions.dart';
import 'package:cred_assignment/widgets/bottonbutton.dart';
import 'package:cred_assignment/widgets/customcard.dart';
import 'package:cred_assignment/widgets/customcircularslider.dart';
import 'package:cred_assignment/widgets/customiconbuttons.dart';
import 'package:cred_assignment/widgets/customtext.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), // Adjust the radius as needed
              topRight: Radius.circular(20.0), // Adjust the radius as needed
            ),
            color: Color(0xff161e26),
          ),
          height: 350, // Adjust the height as needed
          // Background color of the bottom sheet
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CustomText(
                  color: Color(0xff708d99),
                  title: "How do you wish to repay?",
                ),
                CustomText(
                  color: Color(0xff65767f),
                  size: 10,
                  title: "Choose on of our recommended plans or make your own",
                ),
                CheckboxBottomSheet()
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff13191e),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomIconButtons(
                    icon: FontAwesomeIcons.close,
                  ),
                  CustomIconButtons(
                    icon: FontAwesomeIcons.question,
                  )
                ],
              ),
            ),
            15.verticalSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    color: Colors.white,
                    title: "nikunj, how much do you need?",
                  ),
                  CustomText(
                    color: Colors.grey,
                    size: 11,
                    title:
                        "move the dial and set any amount you need upto ₹100000",
                  ),
                  20.verticalSpace,
                  Container(
                    width: screenWidth *
                        0.9, // Set the width and height to make it square
                    height: screenHeight * 0.47,
                    decoration: BoxDecoration(
                      color: Colors.white, // White color for the container
                      borderRadius: BorderRadius.circular(
                          20.0), // Adjust the radius as needed
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: screenHeight * 0.4,
                          width: screenWidth * 0.8,
                          child: CircularSlider(),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: CustomText(
                            color: Colors.grey,
                            align: TextAlign.center,
                            size: 11,
                            title:
                                "stash is instant, money will be credited in seconds",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  //margin: const EdgeInsets.all(5),
                  height: screenHeight * 0.07,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft:
                          Radius.circular(20.0), // Adjust the radius as needed
                      topRight:
                          Radius.circular(20.0), // Adjust the radius as needed
                    ),
                    color: Color(0xff3a4399),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      _showBottomSheet(context);
                    },
                    child: CustomText(
                        color: Colors.white,
                        size: 12,
                        title: "Proceed to EMI Transaction"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors
                          .transparent, // Set the button's background to transparent
                      elevation: 0, // Remove button elevation
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
