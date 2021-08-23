import 'package:flutter/material.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'explore.page.dart';



class Bemvindo extends StatefulWidget {
  @override
  _BemvindoState createState() => _BemvindoState();
}


class _BemvindoState extends State<Bemvindo> {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
   SearchBar searchBar;                                           //definindo a SearchBar
  PageController controlador = new PageController(initialPage:0); //intanciando controlador


  @override
  void initState() {
    _SearchBarDemoHomeState();
    super.initState();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Color(0xff2bbab4),
        appBar: searchBar.build(context),
        key: _scaffoldKey,


        body: Column(

            children: [

            Container(
                padding:EdgeInsets.all(15),
                color:Colors.blue,
                child:
                Text("Para onde vamos?", style:(TextStyle(color:Colors.white ,  fontSize:21 ,)),)

            ),
            Expanded(

              child: PageView(
                pageSnapping: true,
                controller: controlador,
                children: [
                  Container(color: Color(0xff2bbab4),),
                  Container(color: Color(0xff2bbab4),),
                ],
              ),
            ),
          ],
          
        )

    );
  }

  Widget getBody(){
    return IndexedStack(
      children: [ExplorePage(),ExplorePage(),ExplorePage(),ExplorePage(),ExplorePage(),],
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return new AppBar(
      backgroundColor:Colors.blue,
      elevation: 0,
      title:Row(
        children: [
          IconButton(
          onPressed: (){},
          icon: SvgPicture.asset("lib/images/explore_active_icon.svg" , color:Colors.white,),
          )
        ],
      ),



      actions: [
        searchBar.getSearchAction(context),
        IconButton(icon:Icon(Icons.arrow_back_ios), onPressed:(){
          controlador.animateToPage(0, duration: Duration(milliseconds:250), curve:Curves.bounceOut);
        }),
        IconButton(icon:Icon(Icons.arrow_forward_ios), onPressed:(){
          controlador.animateToPage(1, duration: Duration(milliseconds:250), curve:Curves.bounceOut);
        }),
      ],
    );
  }


  void onSubmitted(String value) {   //retorna depois do enter do teclado
    setState(() {
      var context = _scaffoldKey.currentContext;

      if (context == null) {
        return;
      }

      ScaffoldMessenger.maybeOf(context)
          ?.showSnackBar(new SnackBar(content: new Text('You wrote "$value"!')));
    });
  }

  _SearchBarDemoHomeState() {
    searchBar = new SearchBar(
        inBar: false,
        buildDefaultAppBar: buildAppBar,
        setState: setState,
        onSubmitted: onSubmitted,
        onCleared: () {
          print("Search bar has been cleared");
        },
        onClosed: () {
          print("Search bar has been closed");
        });
  }

















}
