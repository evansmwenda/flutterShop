import 'package:flutter/material.dart';
import 'package:flutter_shop/animations/FadeAnimation.dart';

class Shop extends StatefulWidget {
  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            FadeAnimation(
              1,
              Container(
                height: 500,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/shopback3.jpeg'),
                  fit: BoxFit.cover,
                )),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(.7),
                        Colors.black.withOpacity(.2),
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FadeAnimation(
                              1.3,
                              IconButton(
                                icon: Icon(
                                  Icons.favorite_border,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              ),
                            ),
                            FadeAnimation(
                              1.5,
                              IconButton(
                                icon: Icon(
                                  Icons.shopping_cart,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              FadeAnimation(
                                1.7,
                                Text(
                                  "Our New Products",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              FadeAnimation(
                                1.9,
                                Row(
                                  children: <Widget>[
                                    Text(
                                      "VIEW MORE",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            FadeAnimation(
              2.1,
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Categories",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text("All")
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 100,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          makeCategory(
                              image: 'assets/images/prod1.jpg',
                              title: "Beauty"),
                          makeCategory(
                              image: 'assets/images/prod2.jpeg',
                              title: "Electronics"),
                          makeCategory(
                              image: 'assets/images/prod3.jpg',
                              title: "Laptops"),
                          makeCategory(
                              image: 'assets/images/prod4.jpg',
                              title: "Computers"),
                          makeCategory(
                              image: 'assets/images/prod5.jpeg',
                              title: "Grocery"),
                          makeCategory(
                              image: 'assets/images/prod6.jpg',
                              title: "Vehicles"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Best Selling by Categories",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text("All")
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 100,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          makeBestCategory(
                              image: 'assets/images/prod3.jpg',
                              title: "Laptops"),
                          makeBestCategory(
                              image: 'assets/images/prod4.jpg',
                              title: "Computers"),
                          makeBestCategory(
                              image: 'assets/images/prod5.jpeg',
                              title: "Grocery"),
                          makeBestCategory(
                              image: 'assets/images/prod6.jpg',
                              title: "Vehicles"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget makeCategory({image, title}) {
  return AspectRatio(
    aspectRatio: 2 / 2.1,
    child: Container(
      margin: EdgeInsets.only(right: 20.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          )),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.0),
            ],
          ),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    ),
  );
}

Widget makeBestCategory({image, title}) {
  return AspectRatio(
    aspectRatio: 3 / 2.1,
    child: Container(
      margin: EdgeInsets.only(right: 20.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          )),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.0),
            ],
          ),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    ),
  );
}
