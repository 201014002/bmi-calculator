import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:new_bmi_calculator/reusable_card.dart';
import 'package:new_bmi_calculator/icon_contents.dart';

const bottomButtonContainerHeight = 80.0;
const bottomButtonConatinerColor = Color(0xFFEB1555);
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;
  //2=male,1=female
  void updateColor(int gender){
    if(gender==1){
      if(femaleCardColor==inactiveCardColor){
        femaleCardColor=activeCardColor;
        maleCardColor=inactiveCardColor;
      }
      else{
        femaleCardColor=inactiveCardColor;
      }
    }
   if(gender==2){
     if(maleCardColor==inactiveCardColor){
       maleCardColor=activeCardColor;
       femaleCardColor=inactiveCardColor;
     }
     else{
       maleCardColor=inactiveCardColor;
     }
   }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(2);
                        });
                      },
                      child: ReusableCard(
                        wcolor: maleCardColor,
                        cardChild: IconContents(
                          icon: FontAwesomeIcons.mars,
                          label: 'MALE',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(1);
                        });
                      },
                      child: ReusableCard(
                        wcolor: femaleCardColor,
                        cardChild: IconContents(
                          icon: FontAwesomeIcons.venus,
                          label: 'FEMALE',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(wcolor: activeCardColor),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(wcolor: activeCardColor),
                  ),
                  Expanded(
                    child: ReusableCard(wcolor: activeCardColor),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomButtonConatinerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomButtonContainerHeight,
            ),
          ],
        ));
  }
}
