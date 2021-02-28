import 'package:flutter/material.dart';
import 'package:travel2_flutter_app/Animation/FadeAnimation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2017/06/05/11/01/airport-2373727_1280.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(.6),
                      Colors.black.withOpacity(.3),
                    ],
                    begin: Alignment.bottomLeft,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FadeAnimation(
                      1,
                      Text(
                        "What you would like to find?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    FadeAnimation(
                      1.3,
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 3.0),
                        margin: EdgeInsets.symmetric(
                          horizontal: 40.0,
                        ),
                        height: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Colors.white,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            border: InputBorder.none,
                            hintText: "Search for cities, places ...",
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 13.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeAnimation(
                    1,
                    Text(
                      "Best Destination",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                          fontSize: 20.0),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  FadeAnimation(
                    1.4,
                    Container(
                      height: 200.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          makeItem(
                              image:
                                  "https://cdn.pixabay.com/photo/2019/06/04/19/54/norway-4252178_1280.jpg",
                              title: "Norway"),
                          makeItem(
                              image:
                                  "https://cdn.pixabay.com/photo/2018/11/29/21/19/hamburg-3846525_1280.jpg",
                              title: "Italy"),
                          makeItem(
                              image:
                                  "https://cdn.pixabay.com/photo/2018/01/21/01/46/architecture-3095716_1280.jpg",
                              title: "Germany"),
                          makeItem(
                              image:
                                  "https://cdn.pixabay.com/photo/2018/04/25/09/26/eiffel-tower-3349075_1280.jpg",
                              title: "France"),
                          makeItem(
                              image:
                                  "https://cdn.pixabay.com/photo/2014/11/13/23/34/palace-530055_1280.jpg",
                              title: "England"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    height: 50.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        AspectRatio(
                          aspectRatio: 1.5 / 1,
                          child: Container(
                            margin: EdgeInsets.only(right: 15.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.blue.withOpacity(.2)),
                            child: Icon(
                              Icons.hotel,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        AspectRatio(
                          aspectRatio: 1.5 / 1,
                          child: Container(
                            margin: EdgeInsets.only(right: 15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.white,
                            ),
                            child: Icon(
                              Icons.flight,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        AspectRatio(
                          aspectRatio: 1.5 / 1,
                          child: Container(
                            margin: EdgeInsets.only(right: 15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.white,
                            ),
                            child: Icon(
                              Icons.event,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  FadeAnimation(
                    1,
                    Text(
                      "Best Hotels",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                          fontSize: 20.0),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  FadeAnimation(
                    1.4,
                    Container(
                      height: 200.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          makeItem(
                              image:
                                  "https://cdn.pixabay.com/photo/2015/03/26/10/01/burj-al-arab-690768_1280.jpg",
                              title: "Dubai"),
                          makeItem(
                              image:
                                  "https://cdn.pixabay.com/photo/2016/08/26/20/30/hotel-1623064_1280.jpg",
                              title: "France"),
                          makeItem(
                              image:
                                  "https://cdn.pixabay.com/photo/2014/05/02/15/27/florence-336093_1280.jpg",
                              title: "Italy"),
                          makeItem(
                              image:
                                  "https://cdn.pixabay.com/photo/2012/11/21/10/24/building-66789_1280.jpg",
                              title: "Spain"),
                          makeItem(
                              image:
                                  "https://cdn.pixabay.com/photo/2017/04/05/15/58/hotelroom-2205447_1280.jpg",
                              title: "England"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 80.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget makeItem({image, title}) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.grey.withOpacity(.1),
                Colors.grey.withOpacity(.1),
              ],
              begin: Alignment.bottomLeft,
            ),
          ),
          child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              )),
        ),
      ),
    );
  }
}
