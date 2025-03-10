import 'package:flutter/material.dart';
import 'package:lion_project_004/common/widgets/dice_widget.dart';
import 'package:lion_project_004/services/dice_services.dart';

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  DicePageState createState() => DicePageState();
}

class DicePageState extends State<DicePage> {
  int dice1 = 6;
  int dice2 = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEE5A46),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Dice',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: InkWell(
            onTap: throwDice,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DiceWidget(diceNumber: dice1),
                const SizedBox(width: 20),
                DiceWidget(diceNumber: dice2),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void throwDice() {
    dice1 = DiceServices.throwDice1();

    dice2 = DiceServices.throwDice2();

    setState(() {});
  }
}


/// State management