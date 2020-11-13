import 'package:calculator/constant.dart';
import 'package:flutter/material.dart';
import 'methodofCalculation.dart';
import 'WidgetContainer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.blue[400],
      ),
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  List<String> typedText = [];
  String textButton;
  String result = '';
  double temp1;
  double temp2;
  String tempResult = '';
  void buttonPressed(textButton) {
    setState(() {
      if (textButton == '1' ||
          textButton == '2' ||
          textButton == '3' ||
          textButton == '4' ||
          textButton == '5' ||
          textButton == '6' ||
          textButton == '7' ||
          textButton == '8' ||
          textButton == '9' ||
          textButton == '0' ||
          textButton == '.' ||
          textButton == '00') {
        result = result + textButton;
       
      } else if (textButton == '+' ||
          textButton == '-' ||
          textButton == 'x' ||
          textButton == '/' ||
          textButton == '%') {
        result = result + textButton;
      } else if (textButton == '=') {
        typedText = result.split(new RegExp("[/x%+-]"));
        print(typedText);

        temp1 = double.parse(typedText[0]);
        temp2 = double.parse(typedText[1]);
        MethodCalc m = MethodCalc(temp1: temp1, temp2: temp2);
        if (result.contains('+')) {
          result = m.add();
        }
        if (result.contains('/')) {
          result = m.divide();
        }
        if (result.contains('x')) {
          result = m.multiply();
        }
        if (result.contains('%')) {
          result = m.remainder();
        }
        if (result.contains('-')) {
          result = m.subtract();
        }
      } else if (textButton == 'C') {
        result = '';
      } else if (textButton == 'X') {
        tempResult=result;
        result = tempResult.substring(0, tempResult.length - 1);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: new AppBar(
        centerTitle: true,
        title: Text('Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: backGroundColor,
              alignment: Alignment.bottomRight,
              child: Text(
                result,
                style: textStyle2,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: WidgetContainer(
                        infoWidegt: Text(
                          'C',
                          style: textStyle,
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () {
                          buttonPressed(textButton = 'C');
                        },
                      )),
                      Expanded(
                          child: WidgetContainer(
                        infoWidegt: Text(
                          '%',
                          style: textStyle,
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () {
                          buttonPressed(textButton = '%');
                        },
                      )),
                      Expanded(
                          child: WidgetContainer(
                        infoWidegt: Icon(
                          backspace_outlined,
                          size: 35.0,
                        ),
                        onPressed: () {
                          buttonPressed(textButton = 'X');
                        },
                      )),
                      Expanded(
                          child: WidgetContainer(
                        infoWidegt: Text(
                          '/',
                          style: textStyle,
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () {
                          buttonPressed(textButton = '/');
                        },
                      )),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: WidgetContainer(
                        infoWidegt: Text(
                          '7',
                          style: textStyle,
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () {
                          buttonPressed(textButton = '7');
                        },
                      )),
                      Expanded(
                          child: WidgetContainer(
                        infoWidegt: Text(
                          '8',
                          style: textStyle,
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () {
                          buttonPressed(textButton = '8');
                        },
                      )),
                      Expanded(
                          child: WidgetContainer(
                        infoWidegt: Text(
                          '9',
                          style: textStyle,
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () {
                          buttonPressed(textButton = '9');
                        },
                      )),
                      Expanded(
                          child: WidgetContainer(
                        infoWidegt: Icon(clear),
                        onPressed: () {
                          buttonPressed(textButton = 'x');
                        },
                      )),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: WidgetContainer(
                        infoWidegt: Text(
                          '4',
                          style: textStyle,
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () {
                          buttonPressed(textButton = '4');
                        },
                      )),
                      Expanded(
                          child: WidgetContainer(
                        infoWidegt: Text(
                          '5',
                          style: textStyle,
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () {
                          buttonPressed(textButton = '5');
                        },
                      )),
                      Expanded(
                          child: WidgetContainer(
                        infoWidegt: Text(
                          '6',
                          style: textStyle,
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () {
                          buttonPressed(textButton = '6');
                        },
                      )),
                      Expanded(
                          child: WidgetContainer(
                        infoWidegt: Text(
                          '-',
                          style: textStyle,
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () {
                          buttonPressed(textButton = '-');
                        },
                      )),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: WidgetContainer(
                        infoWidegt: Text(
                          '1',
                          style: textStyle,
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () {
                          buttonPressed(textButton = '1');
                        },
                      )),
                      Expanded(
                          child: WidgetContainer(
                        infoWidegt: Text(
                          '2',
                          style: textStyle,
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () {
                          buttonPressed(textButton = '2');
                        },
                      )),
                      Expanded(
                          child: WidgetContainer(
                        infoWidegt: Text(
                          '3',
                          style: textStyle,
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () {
                          buttonPressed(textButton = '3');
                        },
                      )),
                      Expanded(
                          child: WidgetContainer(
                        infoWidegt: Text(
                          '+',
                          style: textStyle,
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () {
                          buttonPressed(textButton = '+');
                        },
                      )),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: WidgetContainer(
                        infoWidegt: Text(
                          '0',
                          style: textStyle,
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () {
                          buttonPressed(textButton = '0');
                        },
                      )),
                      Expanded(
                          child: WidgetContainer(
                        infoWidegt: Text(
                          '00',
                          style: textStyle,
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () {
                          buttonPressed(textButton = '00');
                        },
                      )),
                      Expanded(
                          child: WidgetContainer(
                        infoWidegt: Text(
                          '.',
                          style: textStyle,
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () {
                          buttonPressed(textButton = '.');
                        },
                      )),
                      Expanded(
                          child: WidgetContainer(
                        infoWidegt: Text(
                          '=',
                          style: textStyle,
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () {
                          buttonPressed(textButton = '=');
                        },
                      )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
