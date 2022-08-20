import 'package:flutter/material.dart';

import '../models/catbreeds_model.dart';

class CardItem extends StatelessWidget {
  final CatBreedsResponse cat;
  const CardItem({required this.cat});
  @override
  Widget build(BuildContext context) {
    return Card(
        shape: BeveledRectangleBorder(side: BorderSide(color: Colors.black)),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Text(
                    cat.name!,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Text(
                    "Más...",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ],
            ),
            FadeInImage(
              placeholder: AssetImage("assets/no-image.jpg"),
              image: (cat.image != null)
                  ? NetworkImage(cat.image!.url!)
                  : NetworkImage("https://via.placeholder.com/150"),
              height: 240,
              fit: BoxFit.cover,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Text(
                    cat.origin!,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Text(
                    cat.intelligence.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
