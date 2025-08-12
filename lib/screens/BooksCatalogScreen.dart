import 'package:flutter/material.dart';

class BooksCatalogScreen extends StatefulWidget {
  const BooksCatalogScreen({Key? key}) : super(key: key);

  @override
  _BooksCatalogScreenState createState() => _BooksCatalogScreenState();
}

class _BooksCatalogScreenState extends State<BooksCatalogScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Text('Item 1'),
        Text('Item 2'),
      ],
    );
  }
}
