import 'package:flutter/material.dart';

import 'category_view.dart';
import 'home_gridview.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title:  const CategoryList()
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: HomeGridView(),
      ),

    );
  }
}