import 'package:dice_app/constants/color.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _DicePageState();
}

class _DicePageState extends State<HomePage> {
  var leftDiceClick = 1;
  var rightDiceClick = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorCustom.primaryColor,
      appBar: AppBar(
        title: const Text(
          'Dicee App',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
        elevation: 3,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(
                    () {
                      leftDiceClick++;
                      if (leftDiceClick > 6) {
                        leftDiceClick = 1;
                      }
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          duration: const Duration(seconds: 1),
                          backgroundColor: ColorCustom.secondColor,
                          content:
                              Text('Valor Do Dado Esquerdo: $leftDiceClick'),
                        ),
                      );
                    },
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Image.asset('assets/images/dice$leftDiceClick.png'),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(
                    () {
                      rightDiceClick++;
                      if (rightDiceClick > 6) {
                        rightDiceClick = 1;
                      }
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          duration: const Duration(seconds: 1),
                          backgroundColor: ColorCustom.secondColor,
                          content:
                              Text('Valor Do Dado Direito: $rightDiceClick'),
                        ),
                      );
                    },
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Image.asset('assets/images/dice$rightDiceClick.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
