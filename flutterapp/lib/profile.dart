import 'package:flutter/material.dart';

void main() {
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
    @override 
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Demo',
            theme: ThemeData(
                primarySwatch: Colors.blue,
            ),
            home: Profiledit(),
        );
    }
}

class Profiledit extends StatefulWidget {
    @override 
    _ProfileditState createState() => _ProfileditState();
}

class _Profiledit extends State<Profiledit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Make Your Profile'),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.blue,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white
              )
            onPressed: () {} 
          )
        ]
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15, top: 20, right: 15),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child:ListView(
            children: [
              Center(
                child: Stack (
                  children [
                  Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration,
                  )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
