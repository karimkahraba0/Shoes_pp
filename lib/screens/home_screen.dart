import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shoes_app/screens/details_screen.dart';
import 'package:shoes_app/services/data.dart';
import 'package:shoes_app/widgets/app_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: getAppBar(context),
      body: getBody(),
    );
  }

  Widget getBody() {
    return ListView(
      children: <Widget>[
        Padding(
          padding:
              const EdgeInsets.only(top: 40, left: 30, right: 30, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Shoes",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Sort by",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Icon(Icons.keyboard_arrow_down),
                  )
                ],
              )
            ],
          ),
        ),
        Column(
            children: List.generate(products.length, (index) {
          return FadeInDown(
            duration: Duration(milliseconds: 350 * index),
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => DetailsScreen(
                    id: products[index]['id'].toString(),
                    name: products[index]['name'],
                    img: products[index]['img'],
                    price: products[index]['price'],
                    mulImg: products[index]['mul_img'],
                    sizes: products[index]['sizes'],
                  )));
                },
                child: Column(
                  children: [
                    Container(
                        child: Stack(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 1,
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 2)
                              ]),
                          child: Column(
                            children: <Widget>[
                              Center(
                                child: Container(
                                  width: double.infinity,
                                  height: 200,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      image: DecorationImage(
                                          image: AssetImage("images/" +
                                              products[index]['img']),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                products[index]['name'],
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "\$ " + products[index]['price'],
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 25,
                              )
                            ],
                          ),
                        ),
                        Positioned(
                            right: 10,
                            child: IconButton(
                                icon: SvgPicture.asset("images/heart_icon.svg"),
                                onPressed: null))
                      ],
                    )),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          );
        }))
      ],
    );
  }
}
