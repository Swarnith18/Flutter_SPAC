import 'package:flutter/material.dart';
import 'package:spac/models/menview.dart';

class Save extends ChangeNotifier {

List<MenView> menviewShop = [
  MenView(
    name: 'Hair Cut', 
    imagePath: 'lib/images/Mhaircut.jpg',
    ),
    MenView(
    name: 'Massage', 
    imagePath: 'lib/images/Mmassage.jpg',
    ),
  MenView(
    name: 'Hair Color', 
    imagePath: 'lib/images/Mhaircolor.jpg',
    ),

    MenView(
    name: 'Trimming', 
    imagePath: 'lib/images/Mtrimming.jpg',
    ),

    MenView(
    name: 'Facial', 
    imagePath: 'lib/images/Mfacial.jpg',
    ),

];

List<MenView> userSave = [];

List<MenView> getMenViewList() {
  return menviewShop;
}

List<MenView> getUserSave() {
  return userSave;
}

void addItemToCart(MenView menView){
  userSave.add(menView);
  notifyListeners();
}

void removeItemFromSave(MenView menView){
  userSave.remove(menView);
  notifyListeners();
}

}