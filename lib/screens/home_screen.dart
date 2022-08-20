import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:catbreed/models/catbreeds_model.dart';
import 'package:catbreed/widgets/widgets.dart';
import '../services/catbreeds.service.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final catbreedsService = Provider.of<CatbreedsService>(context);
    final List<CatBreedsResponse> catList = catbreedsService.cats;
    return Scaffold(
        appBar: AppBar(
          title: Text("Catbreeds"),
          elevation: 0,
          actions: [
            IconButton(
                icon: Icon(
                  Icons.search_outlined,
                  color: Colors.black,
                ),
                onPressed: () {})
          ],
        ),
        body: ListView.builder(
          itemCount: catList.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
                onTap: () => Navigator.pushNamed(context, "details",
                    arguments: catList[index]),
                child: CardItem(cat: catList[index]));
          },
        ));
  }
}
