import 'package:flutter/material.dart';

class CustomScrollViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            floating: true,
            expandedHeight: 250,
//            centerTitle: true,
//            title: const Text("Tomas Muller"),
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: const Text("Tomas Muller"),
              background: Image.asset(
                "images/wzry_01.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(8),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 5,
              ),
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.lightBlue[100 * (index % 9)],
                  child: Text("list item ${index}"),
                );
              }, childCount: 20),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 29,
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.red[100 * (index % 9)],
                child: Text("list item ${index}"),
              );
            }, childCount: 20),
          ),
        ],
      ),
    );
  }
}
