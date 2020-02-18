import 'package:flutter/material.dart';

import 'package:example_moor_flutter/src/db/database.dart';

class AddProdutoWidget extends StatefulWidget {
  @override
  _AddProdutoWidgetState createState() => _AddProdutoWidgetState();
}

class _AddProdutoWidgetState extends State<AddProdutoWidget> {
  Produto produto = Produto(
    id: null,
    idCategoria: null,
    title: null,
    description: null,
    qtd: null,
    price: null,
  );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  int categoriaSelecionada;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Produto"),
        centerTitle: true,
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
                Container(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Nome",
                    filled: false,
                  ),
                  onSaved: (value) {
                    produto = produto.copyWith(title: value);
                  },
                ),
                Container(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Descrição",
                  ),
                  onSaved: (value) {
                    produto = produto.copyWith(description: value);
                  },
                ),
                Container(height: 10),
                StreamBuilder<List<Categoria>>(
                  stream: Database.instance.categoriaService.getAllEntities(),
                  builder: (context, snapshot) {
                    var list = snapshot.data;

                    if (!snapshot.hasData) return Container();

                    return DropdownButtonFormField(
                      hint: Text("Selecione a Categoria"),
                      value: categoriaSelecionada,
                      items: list
                          .map(
                            (c) => DropdownMenuItem(
                              child: Text(c.title),
                              value: c.id,
                            ),
                          )
                          .toList(),
                      onSaved: (id) {
                        produto = produto.copyWith(idCategoria: id);
                      },
                      onChanged: (int v) {
                        setState(() {
                          categoriaSelecionada = v;
                        });
                      },
                    );
                  },
                ),
                Container(height: 10),
                RaisedButton(
                  onPressed: () async {
                    _formKey.currentState.save();
                    produto = produto.copyWith(price: 1000, qtd: 5);

                    await Database.instance.produtoService
                        .createEntity(produto);

                    Navigator.pop(context);
                  },
                  child: Text("Salvar Produto"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
