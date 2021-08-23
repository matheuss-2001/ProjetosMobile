import 'package:flutter/material.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();


}

class _HomePageState extends State<HomePage> {  //inicio da classe
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>(); // declarando o scaffoldKey
  List<Contato> contatos = [];  //declarando a list
  SearchBar searchBar;  //declarando o searchBar




  @override
void initState() {
    _SearchBarDemoHomeState();
    super.initState();

    contatos.add(new Contato(
        nome: "matheus", tefefone: "11 995950599", tipo: Contatotype.CELULAR));

    contatos.add(new Contato(
    nome: "Fabio", tefefone: "37985466", tipo: Contatotype.CASA));

  contatos.add(new Contato(
      nome: " ", tefefone: "11991188785", tipo: Contatotype.TRABALHO));
  contatos.add(new  Contato(
      nome: " ", tefefone:" 11998585414", tipo: Contatotype.CELULAR));

  contatos.add(new Contato(
      nome: " ", tefefone: "970913579" , tipo: Contatotype.FAVORITO));

  contatos.add(new Contato(
      nome: "Carlo", tefefone: "97055522" , tipo: Contatotype.CELULAR));

    contatos.add(new Contato(
        nome: " ", tefefone: "97085441" , tipo: Contatotype.CELULAR));

    contatos.add(new Contato(
        nome: " ", tefefone: "970798511" , tipo: Contatotype.TRABALHO));

    contatos.add(new Contato(
        nome: " ", tefefone: "985642144" , tipo: Contatotype.TRABALHO));


    contatos.sort((a , b) => a.nome.compareTo(b.nome));
}

  @override
  Widget build(BuildContext context) {

    return Scaffold(


      appBar: searchBar.build(context), // declarando a nova app bar na appbar
      key: _scaffoldKey,// declarando a nova o metodo _scaffold

     body: ListView.separated(itemBuilder:(context,index){
       var contato = contatos[index];
       return ListTile(
         leading: CircleAvatar( // vai subir e pegar a imagem do icon , com a fotinho do avatar
           child: ContatoHelper.getIconByContatotype(contato.tipo),
           backgroundColor: Colors.blue,

         ),
         title: Text(contatos[index].nome.toString()),
         subtitle: Text(contato.tefefone),
         trailing: IconButton( //vai subir o icone do telefone
            icon:Icon(Icons.call),
           onPressed: () => {
                  showDialog(context: context,
                  builder: (BuildContext context){
                    return AlertDialog(
                      title: new Text("Status de discagem"),
                      content: new Text("discando para "),
                    );
                  })
           },
         ) ,
       );
     } ,
         separatorBuilder: (context,index) => Divider(),
         itemCount: contatos.length),
    );
  }

  _SearchBarDemoHomeState() {
    searchBar = new SearchBar(
        inBar: false,
        buildDefaultAppBar: buildAppBar, //chamando o build
        setState: setState,
        onSubmitted: onSubmitted, // chmadno dps de pesquisar
        onCleared: () {
          print("Search bar has been cleared");
        },
        onClosed: () {
          print("Search bar has been closed");
        });
  }

  AppBar buildAppBar(BuildContext context){ //funcoes da nova appbar
    return new AppBar(
      backgroundColor:Colors.blue,
      actions: [
        searchBar.getSearchAction(context),
      ],
    );
  }

  void onSubmitted(String value){ //usando o metodo declarado onSubmitted
    setState(() {
      var context = _scaffoldKey.currentContext; //usando o metodo declarado  _scaffoldKey

      if (context == null) {
        return;
      }

      ScaffoldMessenger.maybeOf(context)
          ?.showSnackBar(new SnackBar(content: new Text('You wrote "$value"!')));
    });
  }

  }







class Contato{  //inicio de outra classe
  final String nome;
  final String tefefone;
  final Contatotype tipo;

  Contato({@required this.nome , @required this.tefefone , @required this.tipo});
}

enum Contatotype{CELULAR, TRABALHO , FAVORITO, CASA} //definindo diferentes tipos de tipos

class ContatoHelper{  //classe nova definindo de acordo com contato um incone diferente
  static Icon getIconByContatotype(Contatotype tipo){
    switch(tipo){
      case Contatotype.CELULAR:
        return Icon(Icons.phone_android,color:Colors.white70,);

      case Contatotype.TRABALHO:
        return Icon(Icons.work , color: Colors.white70,);
      case Contatotype.FAVORITO:
        return Icon(Icons.favorite, color: Colors.white70,);
      case Contatotype.CASA:
        return Icon(Icons.home, color: Colors.white70,);



    }


  }


}







