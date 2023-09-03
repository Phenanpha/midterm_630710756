// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

// TODO: ใส่รหัสนักศึกษาที่ค่าสตริงนี้
const studentId = '630710756 ';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 20.0,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg_colorful.jpg"),
              opacity: 0.6,
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Good Morning',
                  textAlign: TextAlign.center, style: textTheme.headlineMedium),
              Text(studentId,
                  textAlign: TextAlign.center,
                  style: textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black87)),

              Container(
                //width:300,height: 20,color: Colors.tealAccent[400],
                padding: const EdgeInsets.symmetric(
                    horizontal: 50.0, vertical: 50.0),
                margin: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: Colors.black, style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(10.0)
                ),
                 
                  child:Column(
                      children: [
                        Text('Question 1 of 30'),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50.0, vertical: 10.0),
                          margin: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                              color: Colors.teal[400],
                              border: Border.all(
                                  color: Colors.black, style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(30.0)),
                          child: Text('What is the capital of France?',style: TextStyle(color: Colors.white)),
                        ),
                        _buildQuizView('A','Berlin'),
                        _buildQuizView('B','LonDon'),
                        _buildQuizView('C','Madrid'),
                        _buildQuizView('D','Paris'),

                      ]
                  )

              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                        child: buildButtom('<')),
                    SizedBox(width: 30.0),
                    Expanded(
                        child: buildButtom('>')),

                  ],
                ),
              ),
              //Spacer(),
              //_buildQuizView('B','London'),
              //Spacer(),
              //_buildButtonPanel(),
              //SizedBox(height: 16.0),

            ],

          ),
        ),
      ),
    );
  }

  Container buildButtom(String name) {
    return Container(
                  decoration: BoxDecoration(
                    color: Colors.red[200],
                    border: Border.all(
                        color: Colors.black, style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(name),
                    ],
                  ),
                );
  }
  Padding _buildQuizView(String abcd , String text) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.black,style: BorderStyle.solid),borderRadius: BorderRadius.circular(20.0)),
        child:Row(
          children: [
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.black,style: BorderStyle.solid),borderRadius: BorderRadius.circular(20.0)),
              child: Text(abcd),
            ),
            Text(text),
          ],
        ),
      ),
    );
  }

  _buildButtonPanel() {
    // TODO: build UI
    return Center(child: Text('TODO: build UI'));
  }
}
