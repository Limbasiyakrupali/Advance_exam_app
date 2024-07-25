import 'package:advance_exam_app/utils/allproductdata.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detail page",
        ),
        actions: [
          Badge(
            child: IconButton(
              onPressed: () {
                Productdata.cartdata;
              },
              icon: Icon(Icons.shopping_cart),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Productdata.cartdata;
          Productdata.convertuniquedata();
        },
        child: Icon(Icons.shopping_cart),
      ),
      body: Stack(
        children: [
          Container(
            height: 400,
            width: double.infinity,
            color: Colors.green,
          ),
          Container(
            height: 500,
            width: double.infinity,
            color: Colors.blue,
            child: Column(
              children: [Text("")],
            ),
          ),
        ],
      ),
    );
  }
}
