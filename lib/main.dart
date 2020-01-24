import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello/category_route.dart';

const _categoryName = 'Cake';
const _categoryIcon = Icons.directions_car;
const _categoryColor = Colors.white;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      // title: "Brasal Autoatendimento",
      // home: CategoryRoute()
      home: Scaffold(
        backgroundColor: _categoryColor,
        body: SafeArea(
          child: Column(
            children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/self.jpg'),
            ),
            Text(
              "Marcos Marques",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 30.0,
                fontWeight: FontWeight.normal,
                fontFamily: 'Montserrat',
              )
              ),
            Text(
              "Desenvolvedor Flutter",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16.0,
                fontWeight: FontWeight.w300,
                letterSpacing: 2.5
              )
              ),
            Container(
              padding: EdgeInsets.all(10.0),
              color: Colors.black,
              margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 25.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.phone,
                    color: Colors.white
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    '+55 61 983468805',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0
                    ),
                  )
                ],
              ),
              ),
                          Container(
              padding: EdgeInsets.all(10.0),
              color: Colors.black,
              margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 25.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.mail,
                    color: Colors.white
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'marcos10@outlook.com',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0
                    ),
                  )
                ],
              ),
              )
          ],
        ),
        )
        )
    );
  }
}