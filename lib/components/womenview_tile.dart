import 'package:flutter/material.dart';
import 'package:spac/models/Womenview.dart';

// ignore: must_be_immutable
class WomenviewTile extends StatelessWidget {
  WomenView womenview;
  void Function()? onTap;
  WomenviewTile({super.key, required this.womenview, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 180,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Padding(
               padding: const EdgeInsets.all(12.0),
               child: ClipRRect(
                
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(womenview.imagePath),
               ),
               
             ),
             
               Padding(
                 padding: const EdgeInsets.only(bottom: 25.0),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                 
                   children: [
                    Text(
                    womenview.name,
                    style: TextStyle(
                    color: Colors.grey[600],
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
                    ),
                 
                     /*GestureDetector(
                      onTap: onTap,
                       child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: const BoxDecoration(
                          color: Colors.black, 
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                            ),
                            ),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,)
                        ),
                     ),*/
                   ],
                 ),
               ),
          
          ],
                ),
        )
);
}
}