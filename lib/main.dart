import 'package:calculator_app/widgets/calculatorButtons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double firstNum;
  double secondNum;
  String textToDiplay = '';
  String res;
  String history = '';
  String operation;
  void butOnClick(String btnVal) {
    print(btnVal);
    if (btnVal == 'C') {
      firstNum = 0.0;
      secondNum = 0.0;
      res = '';
    } else if (btnVal == 'AC') {
      firstNum = 0.0;
      secondNum = 0.0;
      res = '';
      history = '';
    } else if (btnVal == '+/-') {
      if (textToDiplay[0] != '-') {
        res = '-' + textToDiplay;
      } else {
        res = textToDiplay.substring(1);
      }
    } else if (btnVal == '<') {
      res = textToDiplay.substring(0, textToDiplay.length - 1);
    } else if (btnVal == '+' ||
        btnVal == '-' ||
        btnVal == 'x' ||
        btnVal == '/') {
      firstNum = double.parse(textToDiplay);
      res = '';
      operation = btnVal;
    } else if (btnVal == '=') {
      secondNum = double.parse(textToDiplay);
      if (operation == '+') {
        res = (firstNum + secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      } else if (operation == '-') {
        res = (firstNum - secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      } else if (operation == 'x') {
        res = (firstNum * secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      } else if (operation == '/') {
        res = (firstNum / secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
    } else {
      res = (textToDiplay + btnVal).toString();
    }
    setState(() {
      textToDiplay = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Calculator App',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 22,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Container(
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.all(12),
                child: Text(
                  history,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 28,
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              Container(
                padding: EdgeInsets.all(12),
                child: Text(
                  textToDiplay,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: 'AC',
                    textColor: Colors.white,
                    fillColor: Colors.orange,
                    textSize: 20,
                    callBack: butOnClick,
                  ),
                  CalculatorButton(
                    text: 'C',
                    fillColor: Colors.orange,
                    textColor: Colors.red[700],
                    textSize: 24,
                    callBack: butOnClick,
                  ),
                  CalculatorButton(
                    text: '<',
                    textColor: Colors.white,
                    fillColor: Colors.orange,
                    textSize: 24,
                    callBack: butOnClick,
                  ),
                  CalculatorButton(
                    text: '/',
                    textColor: Colors.white,
                    fillColor: Colors.orange,
                    textSize: 24,
                    callBack: butOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '7',
                    fillColor: Colors.grey[900],
                    textColor: Colors.white,
                    textSize: 24,
                    callBack: butOnClick,
                  ),
                  CalculatorButton(
                    text: '8',
                    fillColor: Colors.grey[900],
                    textColor: Colors.white,
                    textSize: 24,
                    callBack: butOnClick,
                  ),
                  CalculatorButton(
                    text: '9',
                    fillColor: Colors.grey[900],
                    textColor: Colors.white,
                    textSize: 24,
                    callBack: butOnClick,
                  ),
                  CalculatorButton(
                    text: 'x',
                    textColor: Colors.white,
                    fillColor: Colors.orange,
                    textSize: 24,
                    callBack: butOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '4',
                    fillColor: Colors.grey[900],
                    textColor: Colors.white,
                    textSize: 24,
                    callBack: butOnClick,
                  ),
                  CalculatorButton(
                    text: '5',
                    fillColor: Colors.grey[900],
                    textColor: Colors.white,
                    textSize: 24,
                    callBack: butOnClick,
                  ),
                  CalculatorButton(
                    text: '6',
                    fillColor: Colors.grey[900],
                    textColor: Colors.white,
                    textSize: 24,
                    callBack: butOnClick,
                  ),
                  CalculatorButton(
                    text: '-',
                    textColor: Colors.white,
                    fillColor: Colors.orange,
                    textSize: 24,
                    callBack: butOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '1',
                    fillColor: Colors.grey[900],
                    textColor: Colors.white,
                    textSize: 24,
                    callBack: butOnClick,
                  ),
                  CalculatorButton(
                    text: '2',
                    fillColor: Colors.grey[900],
                    textColor: Colors.white,
                    textSize: 24,
                    callBack: butOnClick,
                  ),
                  CalculatorButton(
                    text: '3',
                    fillColor: Colors.grey[900],
                    textColor: Colors.white,
                    textSize: 24,
                    callBack: butOnClick,
                  ),
                  CalculatorButton(
                    text: '+',
                    textColor: Colors.white,
                    fillColor: Colors.orange,
                    textSize: 24,
                    callBack: butOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '+/-',
                    fillColor: Colors.grey[900],
                    textColor: Colors.white,
                    textSize: 22,
                    callBack: butOnClick,
                  ),
                  CalculatorButton(
                    text: '0',
                    fillColor: Colors.grey[900],
                    textColor: Colors.white,
                    textSize: 24,
                    callBack: butOnClick,
                  ),
                  CalculatorButton(
                    text: '.',
                    fillColor: Colors.grey[900],
                    textColor: Colors.white,
                    textSize: 24,
                    callBack: butOnClick,
                  ),
                  CalculatorButton(
                    text: '=',
                    textColor: Colors.white,
                    fillColor: Colors.green[500],
                    textSize: 24,
                    callBack: butOnClick,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
