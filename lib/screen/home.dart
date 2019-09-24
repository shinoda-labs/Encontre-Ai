import 'package:encontre/widgets/slide_companies.dart';
import 'package:encontre/widgets/slide_categories.dart';
import 'package:flutter/material.dart';
import 'package:encontre/utils/establishment.dart';
import 'package:encontre/utils/categories.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.star),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 20),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Text(
              "Encontre as\nempresas aqui!",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Empresas em destaque",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w800),
              ),
              FlatButton(
                child: Text(
                  "Ver todas",
                  style: TextStyle(color: Theme.of(context).accentColor),
                ),
                onPressed: () {},
              )
            ],
          ),
          SizedBox(height: 10.0),
          Container(
            height: MediaQuery.of(context).size.height / 2.4,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              primary: false,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: empresas == null ? 0 : empresas.length,
              itemBuilder: (BuildContext context, int index) {
                Map emp = empresas[index];
                return Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: SlideCompanies(
                    img: emp["img"],
                    title: emp["title"],
                    address: emp["address"],
                    rating: emp["rating"],
                    status: emp["status"],
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Categorias",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w800),
              ),
              FlatButton(
                child: Text(
                  "Ver Todas",
                  style: TextStyle(color: Theme.of(context).accentColor),
                ),
                onPressed: () {},
              )
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 6,
            child: ListView.builder(
              primary: false,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: categories == null ? 0 : categories.length,
              itemBuilder: (BuildContext context, int index) {
                Map cat = categories[index];
                return SlideCategories(
                  image: cat["img"],
                  title: cat["name"],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
