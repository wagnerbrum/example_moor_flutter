import 'package:flutter/material.dart';

import 'package:example_moor_flutter/src/db/database.dart';

class AddCategoriaWidget extends StatefulWidget {
  @override
  _AddCategoriaWidgetState createState() => _AddCategoriaWidgetState();
}

class _AddCategoriaWidgetState extends State<AddCategoriaWidget> {
  Categoria entity = Categoria(
    id: null,
    title: null,
  );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Categoria"),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: ListView(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Nome",
                  ),
                  onSaved: (value) {
                    entity = entity.copyWith(title: value);
                  },
                ),
                Container(height: 10),
                RaisedButton(
                  onPressed: () async {
                    _formKey.currentState.save();
                    await Database.instance.categoriaService
                        .createEntity(entity);

                    Navigator.pop(context);
                  },
                  child: Text("Salvar Categoria"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
