import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spac/components/save_item.dart';
import 'package:spac/models/menview.dart';
import 'package:spac/models/save.dart';

class Booking extends StatelessWidget {
  const Booking({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Save>(builder: (context, value, child) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Saved',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
          
          const SizedBox(height: 20),
          Expanded(child: ListView.builder(
            itemCount: value.getUserSave().length,
            itemBuilder: (context, index) {
            MenView individualMenView = value.getUserSave()[index];

            return SaveItem(menView: individualMenView,);
          },
          ),
          ),
        ],
      ),
    ));
  }
}