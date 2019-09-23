import 'package:encontre_ai/utils/establishment.dart';
import 'package:flutter/material.dart';

class Establishment extends StatefulWidget {
  @override
  _EstablishmentState createState() => _EstablishmentState();
}

class _EstablishmentState extends State<Establishment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 10.0),
          Container(
            padding: EdgeInsets.only(left: 20.0),
            height: 250.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              primary: false,
              itemCount: empresas == null ? 0 : empresas.length,
              itemBuilder: (BuildContext context, int index) {
                Map emp = empresas[index];
                return Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "${emp["img"]}",
                      height: 250.0,
                      width: MediaQuery.of(context).size.width - 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
