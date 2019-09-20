import 'package:flutter/material.dart';
import 'package:nike/styleSegment.dart';
import 'package:nike/themeText.dart';

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
          textTheme: themeText),
      home: DetailShoe(),
    );
  }
}

class DetailShoe extends StatefulWidget {
  final Shoe shoe;

  const DetailShoe({Key key, this.shoe}) : super(key: key);

  @override
  _DetailShoeState createState() => _DetailShoeState();
}

class _DetailShoeState extends State<DetailShoe> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Container(
      width: width,
      height: height,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 100, left: 30),
            child: Text(
            widget.shoe.name,
            style: TextStyle(fontSize: 65, fontWeight: FontWeight.w700),
            ),
          ),
          Positioned(
            width: width * 0.9,
            height: width * 0.9,
            right: -100,
            top: 0,
            child: Hero(
              tag: 'card-${widget.shoe.cod}',
              child: ClipOval(
                child: Container(
                  width: width * 0.9,
                  height: width * 0.9,
                  color: widget.shoe.colors[0],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: 20,
            ),
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    IconButton(
                        icon: Icon(Icons.favorite_border, color: Colors.white),
                        onPressed: () {}),
                  ],
                ),
                Hero(
                    tag: 'shoe-${widget.shoe.cod}',
                    child: Image.network(widget.shoe.image)),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(widget.shoe.name),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(widget.shoe.description,
                      style: TextStyle(fontSize: 16)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 14,
                      ),
                      Icon(Icons.star, color: Colors.amber, size: 14),
                      Icon(Icons.star, color: Colors.amber, size: 14),
                      Icon(Icons.star, color: Colors.amber, size: 14),
                      Icon(Icons.star, color: Color(0xFFf3f3f3), size: 14)
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 20, bottom: 10),
                  child: Text('TAMANHO'),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(right: 10),
                        width: 40,
                        height: 40,
                        color: Colors.white,
                        child: Text(
                          "40",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(right: 10),
                        width: 40,
                        height: 40,
                        color: Colors.white,
                        child: Text(
                          "41",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(right: 10),
                        width: 40,
                        height: 40,
                        color: Colors.white,
                        child: Text(
                          "42",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(right: 10),
                        width: 40,
                        height: 40,
                        color: Colors.white,
                        child: Text(
                          "43",
                          style: TextStyle(color: Colors.black),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
