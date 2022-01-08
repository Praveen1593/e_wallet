import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
       child: Stack(
        children: <Widget>[
          //Container for top data
          Container(
            margin: EdgeInsets.symmetric(horizontal: 32, vertical: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[


                SizedBox(height : 24,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(

                      child: Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.pinkAccent,
                                borderRadius: BorderRadius.all(Radius.circular(18))
                            ),
                            child: Icon(Icons.local_post_office, color: Colors.blue[900], size: 30,),
                            padding: EdgeInsets.all(20),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text("VenPep Solutions", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20, color: Colors.redAccent[100]),),
                        ],
                      ),
                    ),





                  ],
                )

              ],
            ),
          ),


          //draggable sheet
          DraggableScrollableSheet(
            builder: (context, scrollController){
              return Container(
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 24,),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Products", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24, color: Colors.black),),
                            Text("See all", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: Colors.grey[800]),)
                          ],
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 32),
                      ),


                      //Container for buttons




                          ],
                        ),
                      ),


              );
            },
            initialChildSize: 0.65,
            minChildSize: 0.65,
            maxChildSize: 1,
          )
        ],
      ),
    );
  }
}
