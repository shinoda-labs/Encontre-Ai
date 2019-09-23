import 'package:encontre_ai/widgets/slide_companies.dart';
import 'package:flutter/material.dart';
import 'package:encontre_ai/utils/establishment.dart';

class Categories extends StatefulWidget {
  final String title;

  Categories({Key key, @required this.title}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final TextEditingController _searchController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("${widget.title}"),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
        child: ListView(
          children: <Widget>[
            Card(
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
                          borderRadius: BorderRadius.circular(5.0)),
                      hintText: "Procurar estabelecimento ...",
                      prefixIcon: Icon(Icons.search, color: Colors.black),
                      suffixIcon: Icon(Icons.filter_list, color: Colors.black),
                      hintStyle:
                          TextStyle(fontSize: 15.0, color: Colors.black)),
                  maxLines: 1,
                  controller: _searchController,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            ListView.builder(
              primary: false,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: empresas == null ? 0 : empresas.length,
              itemBuilder: (BuildContext context, int index) {
                Map emp = empresas[index];
                return SlideCompanies(
                    img: emp["img"],
                    title: emp["title"],
                    address: emp["address"],
                    rating: emp["rating"],
                    status: emp["status"]);
              },
            ),
            SizedBox(height: 10.0)
          ],
        ),
      ),
    );
  }
}
