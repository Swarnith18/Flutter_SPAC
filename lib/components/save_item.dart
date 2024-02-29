import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spac/models/menview.dart';
import 'package:spac/models/save.dart';

class SaveItem extends StatefulWidget {
  MenView menView;
  SaveItem({
    super.key,
    required this.menView
    });

  @override
  State<SaveItem> createState() => _SaveItemState();
}

class _SaveItemState extends State<SaveItem> {

void removeItemFromSave(){
  Provider.of<Save> (context , listen : false).removeItemFromSave(widget.menView);
}

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey[100],
      borderRadius: BorderRadius.circular(8)),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.menView.imagePath),
        title: Text(widget.menView.name),
        trailing: IconButton(
          icon:Icon(Icons.delete),
          onPressed: removeItemFromSave),
      ),
    );
  }
}