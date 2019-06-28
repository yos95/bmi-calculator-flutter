import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeColorCard = Color(0xFF1D1E33);
const inactiveColorCard = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);
enum Gender { homme, femme }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.homme;
                      });
                    },
                    child: ReusableCard(
                      colour: selectedGender == Gender.homme
                          ? activeColorCard
                          : inactiveColorCard,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'HOMME',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.femme;
                      });
                    },
                    child: ReusableCard(
                      colour: selectedGender == Gender.femme
                          ? activeColorCard
                          : inactiveColorCard,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMME',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: activeColorCard,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: activeColorCard,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeColorCard,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
