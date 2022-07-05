import 'package:flutter/material.dart';


class NewPage extends StatefulWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: TextField(
          decoration: InputDecoration(
            hintText: "Search",
            prefix: Icon(
              Icons.search,
              color: Colors.black,
            ),
            suffixIcon:
              Icon(Icons.add,color: Colors.black,)
          ),
        ),
      ),
    );
  }
}
