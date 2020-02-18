import 'package:flutter/material.dart';

import 'package:example_moor_flutter/src/db/database.dart';
import 'package:example_moor_flutter/src/modules/categoria/pages/AddCategoriaWidget.dart';

class ListCategoriaWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.1,
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        title: Text("Categorias"),
      ),
      backgroundColor: Color.fromRGBO(58, 66, 86, 0.8),
      body: StreamBuilder<List<Categoria>>(
        stream: Database.instance.categoriaService.getAllEntities(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return Container();

          List<Categoria> categorias = snapshot.data;

          return ListView.builder(
            itemCount: categorias.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                elevation: 8.0,
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                color: Color.fromRGBO(0, 0, 0, .0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(64, 75, 96, .9),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 8.0,
                    ),
                    leading: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(
                            right: 12.0,
                            left: 10.0,
                          ),
                          decoration: new BoxDecoration(
                            border: new Border(
                              right: new BorderSide(
                                width: 1.0,
                                color: Colors.white24,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 10.0,
                            ),
                            child: Text(
                              "${index + 1}",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    title: Text(
                      categorias[index].title,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return AddCategoriaWidget();
            }),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      ),
    );
  }
}
