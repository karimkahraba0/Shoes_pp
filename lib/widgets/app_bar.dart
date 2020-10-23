import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shoes_app/screens/cart_screen.dart';

Widget getAppBar(context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
            icon: SvgPicture.asset("images/burger_icon.svg"),
            onPressed: () {
              // Navigator.push(context, MaterialPageRoute(
              //     fullscreenDialog: true,
              //     builder: (_) => MenuPage()));
            }),
        Row(
          children: <Widget>[
            IconButton(
                icon: SvgPicture.asset("images/search_icon.svg"),
                onPressed: () {}),
            IconButton(
                icon: SvgPicture.asset("images/filter_icon.svg"),
                onPressed: () {}),
            IconButton(
              onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => CartScreen()));
              },
              icon: Container(
                child: Center(
                  child: Text(
                    "3",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                decoration:
                    BoxDecoration(color: Colors.black, shape: BoxShape.circle),
              ),
            ),
          ],
        )
      ],
    ),
  );
}
