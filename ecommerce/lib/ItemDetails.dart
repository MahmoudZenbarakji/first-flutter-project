import 'package:flutter/material.dart';

class ItemDetails extends StatefulWidget {
  final data;
  ItemDetails({super.key, this.data});
  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  int _value = 1;
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
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profie"),
          ]),
      endDrawer: Drawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Tech",
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Text(
              "Shop",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.orange),
            )
          ],
        ),
        backgroundColor: Colors.grey[200],
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: ListView(
        children: [
          Image.asset(widget.data['image']),
          Container(
              child: Text(
            widget.data['title'],
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
          Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                widget.data['subtitle'],
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey[800]),
              )),
          Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                widget.data['price'],
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.orange),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "color:",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text("black"),
              Radio(
                  activeColor: Colors.orange,
                  value: 1,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value!;
                    });
                  }),
              Text("Gold"),
              Radio(
                value: 2,
                groupValue: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value!;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 65, right: 65),
            child: MaterialButton(
              textColor: Colors.white,
              onPressed: () {},
              child: Text("Add To Cart"),
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
