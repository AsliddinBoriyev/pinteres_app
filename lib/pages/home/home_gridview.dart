import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:pinteres_app2/pages/home/single_grit_item.dart';

import '../../model/grid_item.dart';

class HomeGridView extends StatelessWidget {
  final gridList = GridItem.generateGrid();
  @override
  Widget build(BuildContext context) {
    return Container(
        child: StaggeredGridView.countBuilder(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            crossAxisCount: 4 ,
            itemCount: gridList.length,
            itemBuilder: (context, index) => SingleGridItem(gridList[index]),
            staggeredTileBuilder: (_)=> const StaggeredTile.fit(2))
    );
  }
}