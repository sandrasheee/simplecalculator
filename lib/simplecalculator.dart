import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class simplecalculator extends StatefulWidget {
  simplecalculator({super.key});

  @override
  State<simplecalculator> createState() => _simplecalculatorState();
}

class _simplecalculatorState extends State<simplecalculator> {
final EnterController = TextEditingController();

final EnterController1 = TextEditingController();

 double result=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
          title: Text('SIMPLISTIC CALCULATOR',
            style: TextStyle(color: Colors.white)),
      ),
        body: SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 300),
        child: Column(
          children: [
            SizedBox(height: 40,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(result.toString(),
                style: TextStyle(color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),),
              ),
    TextFormField(

    decoration: const InputDecoration(
    border: UnderlineInputBorder(),
    ),),
              SizedBox(height: 40,),
              TextFormField(
                controller: EnterController,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter number',
                ),),
            SizedBox(height: 40,),
            TextFormField(
              controller: EnterController1,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter number',
              ),),
           SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlueAccent
                    ),
                    onPressed: () {
                      print(EnterController.text);
                      print(EnterController1.text);
                      double num1=double.parse(EnterController.text);
                      double num2=double.parse(EnterController.text);

                      result= num1 + num2;
                      print(result);
                      setState(() {

                      });
                    },
                    child: Text('+')),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlueAccent,
                    ),
                    onPressed: () {
                      print(EnterController.text);
                      print(EnterController1.text);
                      double num1=double.parse(EnterController.text);
                      double num2=double.parse(EnterController.text);

                      result= num1 - num2;
                      print(result);
                      setState(() {

                      });

                    },
                    child: Text('-')),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlueAccent
                    ),
                    onPressed: () {
                      print(EnterController.text);
                      print(EnterController1.text);
                      double num1=double.parse(EnterController.text);
                      double num2=double.parse(EnterController.text);

                      result= num1 * num2;
                      print(result);
                      setState(() {

                      });
                    },
                    child: Text('*')),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlueAccent
                    ),
                    onPressed: () {
                      print(EnterController.text);
                      print(EnterController1.text);
                      double num1=double.parse(EnterController.text);
                      double num2=double.parse(EnterController.text);

                      result= num1 / num2;
                      print(result);
                      setState(() {

                      });
                    },
                    child: Text('/')),
    ],
            )
            ]
    ),
    ),
          )
    );
  }
}
