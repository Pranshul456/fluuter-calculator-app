// @dart=2.9
import 'package:calculator_app/widgets/CalcButton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(CalcApp());
}
class CalcApp extends StatefulWidget {
  const CalcApp({Key key}) : super(key: key);

  @override
  _CalcAppState createState() => _CalcAppState();
}

class _CalcAppState extends State<CalcApp> {

    int  firstNum = 0;
    int secondNum = 0;
    String displayresult = '';
    String result = '';
    String history = '';
    String operation = '';

  void btOnclick(String btnVal){
    print(btnVal);
    if(btnVal == 'C'){
      displayresult = '';
      firstNum = 0;
      secondNum = 0;
      result = '';
    }
    else if(btnVal == 'AC'){
      displayresult = '';
      firstNum = 0;
      secondNum = 0;
      result = '';
      history = '';
    }else if(btnVal == '+/-'){
      if(displayresult[0] != '-'){
        result = '-'+ displayresult;
      }
      else{
        result = displayresult.substring(1);
      }
    }
    else if(btnVal == '<'){
      result = displayresult.substring(0,displayresult.length -1);
    }
    else if(btnVal == '+' || btnVal == '-' || btnVal == 'x' || btnVal == '/'){
      firstNum = int.parse(displayresult);
      result = '';
      operation = btnVal;
    }
    else if(btnVal == '='){
     secondNum = int.parse(displayresult);
     if(operation == '+'){
       result =(firstNum + secondNum).toString();
       history = firstNum.toString() + operation.toString() + secondNum.toString();
     }
     if(operation == '-'){
       result =(firstNum - secondNum).toString();
       history = firstNum.toString() + operation.toString() + secondNum.toString();
     }
     if(operation == 'X'){
       result =(firstNum * secondNum).toString();
       history = firstNum.toString() + operation.toString() + secondNum.toString();
     }
     if(operation == '/'){
       result =(firstNum / secondNum).toString();
       history = firstNum.toString() + operation.toString() + secondNum.toString();
     }

    } else{
      result = int.parse(displayresult + btnVal).toString();
    }
    setState(() {
      displayresult =result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'calculator',
      theme: ThemeData(),
      home: Scaffold(

        appBar: AppBar(
          title: Text('My Calculator App'),
          backgroundColor: Colors.blueAccent,
            actions: [
            Tooltip(
              message: 'Made by pranshul',
              child: IconButton(
                        onPressed: () {
              },
                icon: Icon(
                    Icons.info_outline_rounded),
      ),),
              PopupMenuButton<Text>(itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    child: Text("version 2.0"),
                  ),
                ];
              }
    ),
      ]
        ),
        backgroundColor: Colors.white,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Text(history,
                    style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                          fontSize: 24,
                          color: Colors.black54,
                        )
                    ),
                  ),
                ),
                alignment: Alignment(1.0,1.0),
              ),
              Divider(
                height: 5.0,
                thickness: 2,
                color: Colors.black26,
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(displayresult,
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontSize: 48,
                        color: Colors.black54,
                      )
                    ),
                  ),
                ),
                alignment: Alignment(1.0,1.0),
              ),
              Divider(
                height: 5.0,
                thickness: 2,
                color: Colors.black26,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Calculatorbutton(
                    text: 'AC',
                  fillColor: 0xFF8ac4d0,
                  textcolor: 0xFF000000,
                  textsize: 20,
                  callback: btOnclick,),
                  Calculatorbutton(
                    text: 'C',
                    fillColor: 0xFF8ac4d0,
                    textcolor: 0xFF000000,
                    textsize: 20, callback: btOnclick),
                  Calculatorbutton
                    (text: '<',
                    fillColor: 0xFFf4d160,
                    textcolor: 0xFF000000,
                    textsize: 20, callback: btOnclick),
                  Calculatorbutton
                    (text: '/',
                    fillColor: 0xFFf4d160,
                    textcolor: 0xFF000000,
                    textsize: 20, callback: btOnclick),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Calculatorbutton(
                    text: '9',
                    fillColor: 0xFF8ac4d0,
                    textcolor: 0xFF000000,
                    textsize: 20,
                      callback: btOnclick),
                  Calculatorbutton(
                    text: '8',
                    fillColor: 0xFF8ac4d0,
                    textcolor: 0xFF000000,
                    textsize: 20,
                      callback: btOnclick),
                  Calculatorbutton
                    (text: '7',
                    fillColor: 0xFFf4d160,
                    textcolor: 0xFF000000,
                    textsize: 20,
                      callback: btOnclick),
                  Calculatorbutton
                    (text: 'X',
                    fillColor: 0xFFf4d160,
                    textcolor: 0xFF000000,
                    textsize: 20,
                      callback: btOnclick),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Calculatorbutton(
                    text: '6',
                    fillColor: 0xFF8ac4d0,
                    textcolor: 0xFF000000,
                    textsize: 20, callback: btOnclick),
                  Calculatorbutton(
                    text: '5',
                    fillColor: 0xFF8ac4d0,
                    textcolor: 0xFF000000,
                    textsize: 20,
                      callback: btOnclick),
                  Calculatorbutton
                    (text: '4',
                    fillColor: 0xFFf4d160,
                    textcolor: 0xFF000000,
                    textsize: 20,
                      callback: btOnclick),
                  Calculatorbutton
                    (text: '-',
                    fillColor: 0xFFf4d160,
                    textcolor: 0xFF000000,
                    textsize: 20,
                      callback: btOnclick),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Calculatorbutton(
                    text: '3',
                    fillColor: 0xFF8ac4d0,
                    textcolor: 0xFF000000,
                    textsize: 20,
                      callback: btOnclick),
                  Calculatorbutton(
                    text: '2',
                    fillColor: 0xFF8ac4d0,
                    textcolor: 0xFF000000,
                    textsize: 20,
                      callback: btOnclick),
                  Calculatorbutton
                    (text: '1',
                    fillColor: 0xFFf4d160,
                    textcolor: 0xFF000000,
                    textsize: 20,
                      callback: btOnclick),
                  Calculatorbutton
                    (text: '+',
                    fillColor: 0xFFf4d160,
                    textcolor: 0xFF000000,
                    textsize: 20,
                      callback: btOnclick),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Calculatorbutton(
                    text: '+/-',
                    fillColor: 0xFF8ac4d0,
                    textcolor: 0xFF000000,
                    textsize: 20,
                      callback: btOnclick),
                  Calculatorbutton(
                    text: '0',
                    fillColor: 0xFF8ac4d0,
                    textcolor: 0xFF000000,
                    textsize: 20,
                      callback: btOnclick),
                  Calculatorbutton
                    (text: '00',
                    fillColor: 0xFFf4d160,
                    textcolor: 0xFF000000,
                    textsize: 20,
                      callback: btOnclick),
                  Calculatorbutton
                    (text: '=',
                    fillColor: 0xFFf4d160,
                    textcolor: 0xFF000000,
                    textsize: 20, callback: btOnclick),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
