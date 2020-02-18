import 'package:flutter/material.dart';

import 'package:example_moor_flutter/src/modules/produto/pages/ListProdutoWidget.dart';
import 'package:example_moor_flutter/src/modules/categoria/pages/ListCategoriaWidget.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: TabBarView(
          children: [ListProdutoWidget(), ListCategoriaWidget()],
        ),
        bottomNavigationBar: Container(
          color: Theme.of(context).primaryColor,
          child: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.category)),
            ],
            indicator: UnderlineTabIndicator(
              insets: EdgeInsets.fromLTRB(0, 0, 0, 46),
            ),
          ),
        ),
      ),
    );
  }
}
