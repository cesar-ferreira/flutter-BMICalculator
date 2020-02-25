import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/widgets/icon_content.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  MALE,
  FEMALE
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender;

//  Color maleCardColour = Constants.inactiveCardColour;
//  Color femaleCardColour = Constants.inactiveCardColour;

//  // 1 = male, 2 = female
//  void _updateColour(Gender selectedGender) {
//
//    // male card pressed
//    if (selectedGender == Gender.MALE){
//      if(maleCardColour == Constants.inactiveCardColour) {
//        maleCardColour = Constants.activeCardColour;
//        femaleCardColour = Constants.inactiveCardColour;
//      } else {
//        maleCardColour = Constants.inactiveCardColour;
//        femaleCardColour = Constants.activeCardColour;
//      }
//    }
//    // female card pressed
//    else if (selectedGender == Gender.FEMALE) {
//      if(femaleCardColour == Constants.inactiveCardColour) {
//        femaleCardColour = Constants.activeCardColour;
//        maleCardColour = Constants.inactiveCardColour;
//
//      } else {
//        femaleCardColour = Constants.inactiveCardColour;
//        maleCardColour = Constants.activeCardColour;
//
//      }
//    }
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPressed: () {
                      setState(() {
                        selectedGender = Gender.MALE;
                      });
                    },
                    color: selectedGender == Gender.MALE
                        ? Constants.activeCardColour
                        : Constants.inactiveCardColour,
                    child: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPressed: () {
                      setState(() {
                        selectedGender = Gender.FEMALE;
                      });
                    },
                    color: selectedGender == Gender.FEMALE
                        ? Constants.activeCardColour
                        : Constants.inactiveCardColour,
                    child: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: Constants.activeCardColour,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: Constants.activeCardColour,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: Constants.activeCardColour,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Constants.bottomContainerColour,
            margin: EdgeInsets.only(top: 8),
            width: double.infinity,
            height: 80,
          ),
        ],
      ),
    );
  }
}