import 'package:ecommerce/ItemDetails.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List items = [
    {
      "image": "Images/laptop.png",
      "title": "laptop",
      "subtitle": "lenovo 7th Gen",
      "price": "400\$"
    },
    {
      "image": "Images/headphones.png",
      "title": "wireless headphone",
      "subtitle": "descriptoin",
      "price": "20\$"
    },
    {
      "image": "Images/AppleWatch.png",
      "title": "AppleWatch",
      "subtitle": "descriptoin",
      "price": "200\$"
    },
    {
      "image": "Images/Applephone.png",
      "title": "Iphone xsMax",
      "subtitle": "descriptoin",
      "price": "999\$"
    },
    {
      "image": "Images/ps5.png",
      "title": "playstation 5",
      "subtitle": "descriptoin",
      "price": "850\$"
    },
    {
      "image": "Images/huawei.png",
      "title": "smart watch",
      "subtitle": "descriptoin",
      "price": "150\$"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: "shopping"),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profie",
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                    child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      fillColor: Colors.grey[200],
                      filled: true,
                      labelText: "Search"),
                )),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.menu,
                    size: 50.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Categories",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomWIcon(
                      Icon(
                        Icons.laptop,
                        size: 50,
                      ),
                      "laptop"),
                  CustomWIcon(
                      Icon(
                        Icons.electric_bike,
                        size: 50,
                      ),
                      "electricbike)"),
                  CustomWIcon(
                      Icon(
                        Icons.phone,
                        size: 50,
                      ),
                      "mobile"),
                  CustomWIcon(
                      Icon(
                        Icons.motorcycle,
                        size: 50,
                      ),
                      "motor"),
                  CustomWIcon(
                      Icon(
                        Icons.mouse,
                        size: 50,
                      ),
                      "mouse"),
                  CustomWIcon(
                      Icon(
                        Icons.keyboard,
                        size: 50,
                      ),
                      "keboard"),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Best Selling",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 500,
              child: GridView.builder(
                itemCount: items.length,
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisExtent: 230),
                itemBuilder: (context, i) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ItemDetails(
                                data: items[i],
                              )));
                    },
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(20.0),
                            width: 300,
                            color: Colors.grey[200],
                            child: Image.asset(
                              items[i]['image'],
                              fit: BoxFit.fill,
                              height: 100,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            items[i]['title'],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            items[i]['subtitle'],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            items[i]['price'],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.orange),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                /*  children: [

                  Container(

                  )






                  Container(
                    height: 300,
                    child: Column(
                      children: [
                        Image.asset(
                          "Images/Applephone.png",
                          fit: BoxFit.fill,
                          height: 120,
                        ),
                        /* SizedBox(
                          height: 20,
                        ),*/
                        Text("Applephone Xsmax"),
                        Text("999\$"),
                      ],
                    ),
                  ),
                  Container(
                    height: 300,
                    child: Column(
                      children: [
                        Image.asset(
                          "Images/ps5.png",
                          fit: BoxFit.fill,
                          height: 120,
                        ),
                        /* SizedBox(
                          height: 20,
                        ),*/
                        Text("playstation 5 2020"),
                        Text("300\$"),
                      ],
                    ),
                  ),
                  Container(
                    height: 300,
                    child: Column(
                      children: [
                        Image.asset(
                          "Images/headphones.png",
                          fit: BoxFit.fill,
                          height: 120,
                        ),
                        /* SizedBox(
                          height: 20,
                        ),*/
                        Text("headphones 9th Gen"),
                        Text("80\$"),
                      ],
                    ),
                  ),
                  Container(
                    height: 300,
                    child: Column(
                      children: [
                        Image.asset(
                          "Images/AppleWatch.png",
                          fit: BoxFit.fill,
                          height: 120,
                        ),
                        /* SizedBox(
                          height: 20,
                        ),*/
                        Text("Applewatch 7 series 45mm"),
                        Text("200\$"),
                      ],
                    ),
                  ),
                  Container(
                    height: 300,
                    child: Column(
                      children: [
                        Image.asset(
                          "Images/huawei.png",
                          fit: BoxFit.fill,
                          height: 120,
                        ),
                        /* SizedBox(
                          height: 20,
                        ),*/
                        Text("huawei smart watch"),
                        Text("120\$"),
                      ],
                    ),
                  )
                ],*/
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomWIcon extends StatelessWidget {
  final Icon icon;
  final text;

  CustomWIcon(this.icon, this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 60,
      padding: EdgeInsets.all(7.0),

      child: Column(
        children: [
          Container(
              decoration: BoxDecoration(
                  color: Colors.grey[350],
                  borderRadius: BorderRadius.circular(100)),
              padding: EdgeInsets.all(12.0),
              child: icon),
          Text(
            "$text",
          )
        ],
      ),
    );
  }
}

class CustomWCard extends StatelessWidget {
  final Imagename;
  final String text;
  final String Price;
  CustomWCard(this.Imagename, this.text, this.Price);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[350],
      height: 400,
      width: 150,
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
            height: 400,
            color: Colors.grey[350],
            child: Image.asset(
              "Images/$Imagename",
            ),
          ),
          /*Container(
            height: 200,
            width: 150,
            child:
          ),*/
          Text("$text"),
          Text("$Price"),
        ],
      ),
    );
  }
}

class CustomWGridview extends StatelessWidget {
  final String Imagename;
  final String text;
  final String price;
  CustomWGridview(this.Imagename, this.text, this.price);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          Container(
            child: Image.asset("Images/$Imagename"),
          ),
          Text("$text"),
          Text("$price")
        ],
      ),
    );
  }
}
