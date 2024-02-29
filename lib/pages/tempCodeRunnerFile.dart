import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spac/components/menview_tile.dart';
import 'package:spac/models/menview.dart';

import '../models/save.dart';

class Shop extends StatefulWidget {
  const Shop({Key? key}) : super(key: key); 
  @override
  State<Shop> createState() => _ShopState();
}


class _ShopState extends State<Shop> {
  addItemToCart(MenView menView){
    Provider.of<Save> (context, listen: false).addItemToCart(menView);

    showDialog(
      context: context, 
      builder: (Context)=> AlertDialog(
        title: Text("Saved!"),
        content: Text('Check your Saved '),
      ),
      );
  }
 // Fixed constructor
  @override
  Widget build(BuildContext context) {
    return Consumer<Save>(builder: (context, value, child)=>
    Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(25),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Search',
                style: TextStyle(color: Colors.grey),
              ),
              Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text(
            "Discover Your Beauty!",
            style: TextStyle(color: Colors.grey[600]),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Mens',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Text(
                'See all',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            itemCount: 5, // Example itemCount, replace with actual count
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              MenView menview = value.getMenViewList()[index];
              
              return MenviewTile(
                menview: menview, 
                onTap: () => addItemToCart(menview),
              );
            },
          ),
        ),

        const Padding(
          padding: EdgeInsets.only(top: 25.0, left: 25, right: 25),
          child: Divider(
            color: Colors.white,
          ),
        ),
      ],
    ),
    );
  }
}
