import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:my_first_cal_app/components/calButton.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  double fontSize1 = 64;
  double fontSize2 = 48;

  String eval = "0";
  String ans = "0";

  void calculation(String text) {}

  @override
  Widget build(BuildContext context) {
    var ScreenDimention = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              width: ScreenDimention.width,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Text(
                eval,
                style: TextStyle(
                  color: fontSize1 > fontSize2
                      ? Colors.white
                      : Colors.grey.shade700,
                  fontSize: fontSize1,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Text(
                ans,
                style: TextStyle(
                  color: fontSize1 < fontSize2
                      ? Colors.white
                      : Colors.grey.shade700,
                  fontSize: fontSize2,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Buttons(
                    text: 'AC',
                    textColor: Colors.black,
                    buttonColor: Colors.grey,
                    onTap: () {
                      calculation("AC");
                    },
                  ),
                  Buttons(
                    text: '+/-',
                    textColor: Colors.black,
                    buttonColor: Colors.grey,
                    onTap: () => calculation("+/-"),
                  ),
                  Buttons(
                    text: '%',
                    textColor: Colors.black,
                    buttonColor: Colors.grey,
                    onTap: () => calculation("%"),
                  ),
                  Buttons(
                    text: '÷',
                    textColor: Colors.white,
                    buttonColor: Colors.orange,
                    onTap: () => calculation("÷"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Buttons(
                    text: '7',
                    textColor: Colors.white,
                    buttonColor: Colors.grey.shade900,
                    onTap: () => calculation("7"),
                  ),
                  Buttons(
                    text: '8',
                    textColor: Colors.white,
                    buttonColor: Colors.grey.shade900,
                    onTap: () => calculation("8"),
                  ),
                  Buttons(
                    text: '9',
                    textColor: Colors.white,
                    buttonColor: Colors.grey.shade900,
                    onTap: () => calculation("9"),
                  ),
                  Buttons(
                    text: '×',
                    textColor: Colors.white,
                    buttonColor: Colors.orange,
                    onTap: () => calculation("×"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Buttons(
                    text: '4',
                    textColor: Colors.white,
                    buttonColor: Colors.grey.shade900,
                    onTap: () => calculation("4"),
                  ),
                  Buttons(
                    text: '5',
                    textColor: Colors.white,
                    buttonColor: Colors.grey.shade900,
                    onTap: () => calculation("5"),
                  ),
                  Buttons(
                    text: '6',
                    textColor: Colors.white,
                    buttonColor: Colors.grey.shade900,
                    onTap: () => calculation("6"),
                  ),
                  Buttons(
                    text: '–',
                    textColor: Colors.white,
                    buttonColor: Colors.orange,
                    onTap: () => calculation("–"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Buttons(
                    text: '1',
                    textColor: Colors.white,
                    buttonColor: Colors.grey.shade900,
                    onTap: () => calculation("1"),
                  ),
                  Buttons(
                    text: '2',
                    textColor: Colors.white,
                    buttonColor: Colors.grey.shade900,
                    onTap: () => calculation("2"),
                  ),
                  Buttons(
                    text: '3',
                    textColor: Colors.white,
                    buttonColor: Colors.grey.shade900,
                    onTap: () => calculation("3"),
                  ),
                  Buttons(
                    text: '+',
                    textColor: Colors.white,
                    buttonColor: Colors.orange,
                    onTap: () => calculation("+"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () => calculation("0"),
                    child: Container(
                      width: 224,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey.shade900,
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 44,
                            ),
                            Text(
                              '0',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Buttons(
                    text: '.',
                    textColor: Colors.white,
                    buttonColor: Colors.grey.shade900,
                    onTap: () => calculation("."),
                  ),
                  Buttons(
                    text: '=',
                    textColor: Colors.white,
                    buttonColor: Colors.orange,
                    onTap: () => calculation("="),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
