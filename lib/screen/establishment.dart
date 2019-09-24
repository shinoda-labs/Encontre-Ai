import 'package:encontre/utils/establishment.dart';
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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.map),
        onPressed: () {},
      ),
      // bottomNavigationBar: Container(
      //   height: 50,
      //   child: RaisedButton(
      //     elevation: 15,
      //     color: Theme.of(context).primaryColor,
      //     child: Text(
      //       "See Availability",
      //       style: TextStyle(
      //         color: Theme.of(context).accentColor,
      //       ),
      //     ),
      //     onPressed: () {},
      //   ),
      // ),
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
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            primary: false,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "${empresas[0]["title"]}",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 20.0),
                        maxLines: 2,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3.0)),
                    child: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text("ABERTO",
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.green,
                              fontWeight: FontWeight.bold)),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.location_on,
                    color: Colors.blueGrey[300],
                  ),
                  SizedBox(width: 3.0),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "${empresas[0]["address"]}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13.0,
                          color: Colors.blueGrey[300]),
                      maxLines: 1,
                      textAlign: TextAlign.left,
                    ),
                  )
                ],
              ),
              SizedBox(height: 40.0),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Detalhes",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  maxLines: 1,
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "${empresas[0]["details"]}",
                  style:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 15.0),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 10.0)
            ],
          )
        ],
      ),
    );
  }
}
