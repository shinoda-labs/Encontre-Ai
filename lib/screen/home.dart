import 'package:encontre_ai/widgets/slide_item.dart';
import 'package:flutter/material.dart';
import 'package:encontre_ai/utils/emrpesas.dart';
import 'package:encontre_ai/utils/categories.dart';

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
                  child: SlideItem(
                    img: emp["img"],
                    title: emp["title"],
                    address: emp["address"],
                    rating: emp["rating"],
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
              height: MediaQuery.of(context).size.height/6,
              child: ListView.builder(
                primary: false,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: categories == null ? 0:categories.length,
                itemBuilder: (BuildContext context, int index) {
                  Map cat = categories[index];
                  return Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Stack(
                        children: <Widget>[
                          Image.asset(
                            cat["img"],
                            height: MediaQuery.of(context).size.height/6,
                            width: MediaQuery.of(context).size.height/6,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                stops: [0.2, 0.7],
                                colors: [
                                  Color.fromARGB(100, 0, 0, 0),
                                  Color.fromARGB(100, 0, 0, 0),
                                ],
                              ),
                            ),
                            height: MediaQuery.of(context).size.height/6,
                            width: MediaQuery.of(context).size.height/6,
                          ),
                          Center(
                            child: Container(
                              height: MediaQuery.of(context).size.height/6,
                              width: MediaQuery.of(context).size.height/6,
                              padding: EdgeInsets.all(1),
                              constraints: BoxConstraints(
                                minWidth: 20,
                                minHeight: 20,
                              ),
                              child: Center(
                                child: Text(
                                  cat["name"],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  );
                },
              ),
            )
        ],
      ),
    );
  }
}
