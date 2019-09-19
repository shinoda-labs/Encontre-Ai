import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _searchController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Padding(
          padding: EdgeInsets.only(top: 30.0, left: 10.0, right: 10.0),
          child: Card(
            elevation: 6.0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5.0))),
              child: TextField(
                style: TextStyle(fontSize: 15.0, color: Colors.black),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(color: Colors.white)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    hintText: 'Procurar Estabelecimento ...',
                    prefixIcon: Icon(Icons.search, color: Colors.black),
                    //suffixIcon: Icon(Icons.filter_list, color: Colors.black),
                    suffix:
                        FlatButton(child: Text('Pesquisar'), onPressed: () {}),
                    hintStyle: TextStyle(fontSize: 15.0, color: Colors.black)),
                maxLines: 1,
                controller: _searchController,
              ),
            ),
          ),
        ),
        preferredSize: Size(MediaQuery.of(context).size.width, 60.0),
      ),
      body: Container(),
    );
  }
}
