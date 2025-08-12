import 'package:flutter/material.dart';

class BookBuyScreen extends StatefulWidget {
  const BookBuyScreen({Key? key}) : super(key: key);

  @override
  _BookBuyScreenState createState() => _BookBuyScreenState();
}

class _BookBuyScreenState extends State<BookBuyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Container(),
    );
  }
}
