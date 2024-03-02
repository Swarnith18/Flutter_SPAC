import 'package:flutter/material.dart';
import 'package:spac/components/menview_tile.dart';
import 'package:spac/models/Menview.dart';
import 'package:spac/components/womenview_tile.dart';
import 'package:spac/models/Womenview.dart';

class Shop extends StatefulWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    List<MenView> menViews = [
      MenView(imagePath: 'lib/images/Mhaircut.jpg', name: 'Hair Cut'),
      MenView(imagePath: 'lib/images/Mhaircolor.jpg', name: 'Hair Color'),
      MenView(imagePath: 'lib/images/Mtrimming.jpg', name: 'Trimmimg'),
      MenView(imagePath: 'lib/images/Mfacial.jpg', name: 'Facial'),
      MenView(imagePath: 'lib/images/Mmassage.jpg', name: 'Massage'),
    ];

    List<WomenView> womenViews = [
      WomenView(imagePath: 'lib/images/Whaircut.jpg', name: 'Hair Cut'),
      WomenView(imagePath: 'lib/images/Whaircolor.jpg', name: 'Hair Color'),
      WomenView(imagePath: 'lib/images/Wnail.jpg', name: 'Nail Art'),
      WomenView(imagePath: 'lib/images/Wthreading.jpg', name: 'Threading'),
      WomenView(imagePath: 'lib/images/Whairstyle.jpg', name: 'Hair Style'),
      WomenView(imagePath: 'lib/images/Wfacial.jpg', name: 'Facial'),
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[300],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
                child: Center(
                  child: Text(
                    "Discover Your Beauty!",
                    style: TextStyle(color: Colors.grey[600]),
                  ),
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
                  ],
                ),
              ),
              SizedBox(
                height: 245, // Specify the desired height
                child: ListView.builder(
                  itemCount: menViews.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return MenviewTile(
                      menview: menViews[index],
                      onTap: () {
                        // Implement onTap functionality
                      },
                    );
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15.0, left: 25),
                child: Divider(color: Color.fromARGB(255, 255, 255, 255)),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Womens',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 245,
                child: ListView.builder(
                  itemCount: womenViews.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return WomenviewTile(
                      womenview: womenViews[index],
                      onTap: () {
                        // Implement onTap functionality
                      },
                    );
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15.0, left: 25),
                child: Divider(color: Color.fromARGB(255, 255, 255, 255)),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'His Popular',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                children: List.generate(4, (index) {
                  // Replace 4 with the actual number of items
                  return Center(
                    child: Text(
                      'Item ${index + 1}',
                      style: TextStyle(fontSize: 16),
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
