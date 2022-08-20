import 'package:flutter/material.dart';

import 'package:catbreed/models/catbreeds_model.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CatBreedsResponse cat =
        ModalRoute.of(context)!.settings.arguments as CatBreedsResponse;
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(cat.name!),
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              children: [
                FadeInImage(
                  placeholder: AssetImage("assets/no-image.jpg"),
                  image: (cat.image != null)
                      ? NetworkImage(cat.image!.url!)
                      : NetworkImage("https://via.placeholder.com/150"),
                  height: size.height * 0.4,
                  fit: BoxFit.fitWidth,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                ),
                Expanded(
                    child: SingleChildScrollView(
                        child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        "Peso imperial: " + cat.weight!.imperial!,
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        "Peso metrico: " + cat.weight!.metric!,
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        "Temperamento: " + cat.temperament!,
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        "País origen: " + cat.origin!,
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        "Código país: " + cat.countryCode!,
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        "esperanza de vida: " + cat.lifeSpan!,
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        "Peso imperial: " + cat.weight!.imperial!,
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        "Inteligencia: " + cat.intelligence!.toString(),
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        cat.description!,
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ],
                )))
              ],
            )),
      ),
    );
  }
}
