// import 'package:ecom_ui/slidder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:carousel_slider/carousel_slider.dart';

class EcomUi extends StatefulWidget {
  @override
  _EcomUiState createState() => _EcomUiState();
}

class _EcomUiState extends State<EcomUi> {
  var lst = [
    'assets/mobile.jpg',
    'assets/n.jpg',
    'assets/air.jpg',
    'assets/f.jpg',
    'assets/g.jpg',
    'assets/b.jpg',
    'assets/m.jpg',
    'assets/mutton.jpg',
    'assets/bike.jpg',
    'assets/royal.jpg',
    'assets/g.jpg',
  ];
  var name = [
    'Ipone 12',
    'Note 20 Ultra',
    'Macbook Air',
    'Macbook Pro',
    'Gaming PC',
    'Backlit Keyboard',
    'Mercedes',
    'Mutton',
    'Roadstar',
    'Roya Field',
    'Roadstar',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: Center(
                child: Text(
              "Ecom App UI",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            )),
            actions: <Widget>[
              // ignore: missing_required_param
              IconButton(
                  icon: const Icon(
                Icons.notifications,
                color: Colors.black,
              ))
            ]),
        body: SingleChildScrollView(
          child: Column(
            children: [
              new Container(
                margin: EdgeInsets.only(
                  top: 15,
                  left: 12,
                  right: 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Items",
                      style: TextStyle(
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      child: new Text('View More',
                          style: new TextStyle(
                              fontSize: 18,
                              fontStyle: FontStyle.italic,
                              color: Colors.purple)),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              CarouselSlider.builder(
                options: CarouselOptions(
                  height: 330,
                  viewportFraction: 1,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ),
                itemCount: lst.length,
                itemBuilder: (BuildContext context, int itemIndex,
                        int pageViewIndex) =>
                    Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Container(
                              // decoration: BoxDecoration(
                              //     borderRadius:
                              //         BorderRadius.all(Radius.circular(9.0)),
                              //     border: Border.all(width: 1)),

                              child: Image.network(
                                lst[itemIndex],
                                width: 400,
                                height: 210,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Text(
                                  name[itemIndex],
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Colors.amber,
                                  ),
                                  Text(
                                    ' 5.0 ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    ' (23 Reviews)',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )),
              ),
              new Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 14),
                child: Text(
                  "More Categories",
                  style: TextStyle(
                      fontSize: 22,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                // margin: EdgeInsets.symmetric(vertical: 20.0),
                height: 100.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white24,
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      margin: EdgeInsets.symmetric(horizontal: 6),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Container(
                            height: 60,
                            child: Icon(
                              Icons.shopping_bag,
                              size: 50,
                              color: Colors.purple,
                            ),
                          ),
                          Container(
                            // padding: EdgeInsets.all(0),
                            height: 60,
                            child: Column(
                              children: [
                                Text(
                                  "Clothes",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "5 items",
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white24,
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      margin: EdgeInsets.symmetric(horizontal: 6),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Container(
                            height: 60,
                            child: Icon(
                              Icons.power,
                              size: 50,
                              color: Colors.purple,
                            ),
                          ),
                          Container(
                            // padding: EdgeInsets.all(0),
                            height: 60,
                            child: Column(
                              children: [
                                Text(
                                  "Electronics",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "5 items",
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white24,
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      margin: EdgeInsets.symmetric(horizontal: 6),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Container(
                            height: 60,
                            child: Icon(
                              Icons.electrical_services,
                              size: 50,
                              color: Colors.purple,
                            ),
                          ),
                          Container(
                            // padding: EdgeInsets.all(0),
                            height: 60,
                            child: Column(
                              children: [
                                Text(
                                  "Appliance ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "5 items",
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white24,
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      margin: EdgeInsets.symmetric(horizontal: 6),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Container(
                            height: 60,
                            child: Icon(
                              Icons.house,
                              size: 50,
                              color: Colors.purple,
                            ),
                          ),
                          Container(
                            // padding: EdgeInsets.all(0),
                            height: 60,
                            child: Column(
                              children: [
                                Text(
                                  "HouseHold",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "5 items",
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white24,
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      margin: EdgeInsets.symmetric(horizontal: 6),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Container(
                            height: 60,
                            child: Icon(
                              Icons.forward,
                              size: 50,
                              color: Colors.purple,
                            ),
                          ),
                          Container(
                            // padding: EdgeInsets.all(0),
                            height: 60,
                            child: Column(
                              children: [
                                Text(
                                  "Others",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "5 items",
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              new Container(
                margin: EdgeInsets.only(
                  top: 15,
                  left: 14,
                  right: 14,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Items",
                      style: TextStyle(
                          fontSize: 22,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      child: new Text('View More',
                          style: new TextStyle(
                              fontSize: 18,
                              fontStyle: FontStyle.italic,
                              color: Colors.purple)),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              Container(
                // decoration: BoxDecoration(color: Colors.amber),
                width: MediaQuery.of(context).size.width,

                margin: EdgeInsets.only(left: 15, right: 15, top: 10),
                child: new GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  primary: true,
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  children: List.generate(lst.length, (index) {
                    return Container(
                      width: MediaQuery.of(context).size.width,

                      // decoration: BoxDecoration(border: Border.all(width: 2)),
                      child: Column(
                        children: [
                          Container(
                            // width: MediaQuery.of(context).size.width,
                            // height: MediaQuery.of(context).size.height,

                            width: 200,
                            height: 140,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                                border: Border.all(width: 2)),
                            child: Image.network(
                              lst[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              name[index],
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Colors.amber,
                              ),
                              Text(
                                ' 5.0 ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                ' (23 Reviews)',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  }),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0, // this will be set when a new tab is tapped
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.home, size: 30, color: Colors.purple),
              label: ('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, size: 60, color: Colors.purple),
              label: ('Search'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(
                Icons.favorite,
                size: 30,
              ),
              label: ('favorite'),
            ),

            // BottomNavigationBarItem(
            //   icon: Icon(Icons.add_shopping_cart),
            //   title: new Text(''),
            // ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.person),
            //   title: new Text(''),
            // ),
          ],
        ),
      ),
    );
  }
}
