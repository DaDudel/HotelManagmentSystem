import 'package:flutter/material.dart';

class EquipmentList extends StatelessWidget {
  const EquipmentList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Wyposażenie:", style: TextStyle(fontSize: 18)),
          SizedBox(height: 10),
          Expanded(
            child: ListView(
              children: [
                for (int i = 0; i < 10; i++) buildCardItem(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Card buildCardItem() {
    return Card(
      child: ListTile(
        title: Text("TV"),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(Icons.edit),
              onPressed: () => {},
            ),
            IconButton(
              icon: Icon(Icons.delete, color: Colors.red),
              onPressed: () => {},
            ),
          ],
        ),
      ),
    );
  }
}
