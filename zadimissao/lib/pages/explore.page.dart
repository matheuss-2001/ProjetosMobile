import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  Widget getBody(){
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom:120),
      child: Container(
        height: size.height,
        child: TinderSwapCard(

            maxWidth: size.width,
            maxHeight: size.height * 0.75,
            minWidth: size.width * 0.75,
            minHeight: size.height* 0.6,
            cardBuilder:(context,index) => Container(
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(
                   

                )]



              ),

        ), totalNum:2),

      ),
    );

  }


}
