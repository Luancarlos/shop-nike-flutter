import 'package:flutter/material.dart';

import 'data.dart';
import 'detailShoe.dart';

class CardShoe extends StatefulWidget {

  final Shoe shoe;
  final PageController pageController;
  final int currentPage;

  const CardShoe({Key key, this.shoe, this.pageController, this.currentPage}) : super(key: key);

  @override
  _CardShoeState createState() => _CardShoeState();
}

class _CardShoeState extends State<CardShoe> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return InkWell(
      onTap: () {
        Navigator.push(context, PageRouteBuilder(
            transitionDuration: const Duration(milliseconds: 350),
            pageBuilder: (context, _, __) => DetailShoe(shoe: widget.shoe)));
      },
      child: AnimatedBuilder(
        animation: widget.pageController,
        builder: (context, child) {
          double value = 1;
          if (widget.pageController.position.haveDimensions) {
            value = widget.pageController.page - widget.currentPage;
            value = (1 - (value.abs() * 0.6)).clamp(0.0, 1.0);
          }

          return Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Hero(
                tag: 'card-${widget.shoe.cod}',
                child: ClipRRect(
                  borderRadius: new BorderRadius.circular(50.0),
                  child: Container(
                    padding: EdgeInsets.all(25),
                    width: width * 0.8,
                    height: height * 0.6 *  value,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(widget.shoe.name,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.black)),
                        SizedBox(
                          height: 10,
                        ),
                        Text(widget.shoe.description,
                            style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.w700,
                                color: Colors.black)),
                        SizedBox(
                          height: 10,
                        ),
                        Text('R\$ ${widget.shoe.price}',
                            style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.w700,
                                color: Colors.black)),
                        SizedBox(
                          height: 15,
                        ),
                        Text(widget.shoe.name,
                            style: TextStyle(
                                fontSize: value < 0.7 ? 0 : 65 * value,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFf3f3f3))),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(12, 0),
                child: Hero(
                  tag: 'shoe-${widget.shoe.cod}',
                  child: Image.network(
                    widget.shoe.image,
                    height: height * 0.55,
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
