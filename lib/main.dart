import 'package:flutter/material.dart';
import 'package:nike/styleSegment.dart';
import 'package:nike/themeText.dart';

import 'cardShoe.dart';
import 'customIcon.dart';
import 'data.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: Colors.black,
        primaryColor: Colors.black,
        textSelectionColor: Colors.white,
        textTheme: themeText
      ),
      home: MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  PageController _pagecontroller;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pagecontroller = PageController(
        viewportFraction: 1.0,
        initialPage: currentPage,
        keepPage: false
    );
  }

  @override
  Widget build(BuildContext context) {

    final double height = MediaQuery.of(context).size.height;
    Color select = Colors.amber;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(icon: Icon(CustomIcons.nike, size: 60), onPressed: (){}),
        actions: <Widget>[
          IconButton(icon: Icon(CustomIcons.menu, size: 60,), onPressed: (){}),
          SizedBox(width: 20,),
          IconButton(icon: Icon(CustomIcons.shop, size: 60), onPressed: (){}),
          SizedBox(width: 20,)
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 30, bottom: 30),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("BASKETBALL",  style: StyleSegment(color: select).styleSegment, ),
                  Text("RUNNING",     style: StyleSegment(color: Colors.white).styleSegment),
                  Text("TRAINING",    style: StyleSegment(color: Colors.white).styleSegment)
                ],
              ),
            ),
//            SizedBox(height: height * 0.1),
            Expanded(
              child:  PageView.builder(
                controller: _pagecontroller,
                itemCount:  shoes.length,
                itemBuilder: (BuildContext c, int i) {
                  return CardShoe(shoe: shoes[i], pageController: _pagecontroller, currentPage: i);
                },
              )
            )
          ],
        ),
      )
    );
  }
}
