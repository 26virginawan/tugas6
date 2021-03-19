import 'package:belanja/models/item.dart';
import 'package:belanja/pages/item_page.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: 'Nike Jordan Brown',
        price: 500000,
        image: "images/1.png",
        detail:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"),
    Item(
        name: 'Nike Jordan Retro',
        price: 350000,
        image: "images/2.png",
        detail:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"),
    Item(
        name: 'Nike Jordan Red',
        price: 400000,
        image: "images/3.png",
        detail:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,")
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('NIKE'),
          backgroundColor: Colors.blueGrey,
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return InkWell(
                onTap: () {
                  // Navigator.pushNamed(context, '/item', arguments: item);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ItemPage(newItem: item),
                    ),
                  );
                },
                // child: Card(
                child: Container(
                  margin: EdgeInsets.all(8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.name,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 12.0),
                            Text(
                              "Rp. " + item.price.toString(),
                              textAlign: TextAlign.justify,
                              style: TextStyle(fontSize: 20),
                              // textAlign: TextAlign.end,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          child: Row(
                        children: [],
                      )),
                      Expanded(
                          child: Image.asset(
                        item.image,
                      ))
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
