import 'package:encontre_ai/screen/categories.dart';
import 'package:flutter/material.dart';

class SlideCategories extends StatefulWidget {
  final String image;
  final String title;

  SlideCategories({Key key, @required this.image, @required this.title})
      : super(key: key);

  @override
  _SlideCategoriesState createState() => _SlideCategoriesState();
}

class _SlideCategoriesState extends State<SlideCategories> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 10.0),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Categories(title: widget.title))),
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      widget.image,
                      height: MediaQuery.of(context).size.height / 6,
                      width: MediaQuery.of(context).size.height / 6,
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
                      height: MediaQuery.of(context).size.height / 6,
                      width: MediaQuery.of(context).size.height / 6,
                    ),
                    Center(
                      child: Container(
                        height: MediaQuery.of(context).size.height / 6,
                        width: MediaQuery.of(context).size.height / 6,
                        padding: EdgeInsets.all(1),
                        constraints: BoxConstraints(
                          minWidth: 20,
                          minHeight: 20,
                        ),
                        child: Center(
                          child: Text(
                            widget.title,
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
                ))));
  }
}
