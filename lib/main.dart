import 'package:flutter/material.dart';
import 'composants/Films.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static final films = [
    {'titre':'Oppenheimer','date':'19 juill. 2023', 'src':'1.jpg','type':'Film'},
    {'titre':"L'Attaque des Titans",'date':'7 avr. 2013', 'src':'2.jpg','type':'Film'},
    {'titre':'Good Doctor','date':'25 sept. 2017', 'src':'10.jpg','type':'serie'},
    {'titre':'Mystère à Venise','date':'13 sept. 2023', 'src':'3.jpg','type':'Film'},
    {'titre':'Chernobyl','date':'6 mai 2019', 'src':'13.jpg','type':'serie'},
    {'titre':'Mission : Impossible - Dead Reckoning Partie 1','date':'8 juill. 2023', 'src':'4.jpg','type':'Film'},
    {'titre':'Equalizer 3','date':'30 août 2023', 'src':'5.jpg','type':'Film'},
    {'titre':'Barbie','date':'19 juill. 2023', 'src':'6.jpg','type':'Film'},
    {'titre':'One Piece','date':'20 oct. 1999', 'src':'8.jpg','type':'serie'},
    {'titre':'NCIS : Enquêtes Spéciales','date':'23 sept. 2003', 'src':'11.jpg','type':'serie'},
    {'titre':'Blacklist','date':'23 sept. 2013', 'src':'12.jpg','type':'serie'},
    {'titre':'Death Note','date':'4 oct. 2006', 'src':'14.jpg','type':'serie'},
    {'titre':'Peaky Blinders','date':'12 sept. 2013', 'src':'15.jpg','type':'serie'},
    {'titre':'Killers of the Flower Moon','date':'18 oct. 2023', 'src':'7.jpg','type':'Film'},
    {'titre':'Mentalist','date':'23 sept. 2008', 'src':'9.jpg','type':'serie'},

  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Films"),
          backgroundColor: Colors.purpleAccent,
        ),
        body: Container(
          margin: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: double.infinity,
                margin: EdgeInsets.only(bottom: 10,top: 10),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      bottomLeft: Radius.circular(40)
                  ),
                  color: Colors.purple,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Center(child: Icon(Icons.movie,size: 35,color: Colors.white,),),
                    Text("FILMS",style: TextStyle(fontSize: 30,color: Colors.white),)
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 100,
                          width: 120,
                          padding: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                          child: Center(
                              child:
                              Text("FILMS",style: TextStyle(fontSize: 25,fontFamily: 'got',color: Colors.white),)
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 100,
                          width: 130,
                          padding: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                          ),
                          child: Center(
                              child:
                              Text("CINEMA",style: TextStyle(fontSize: 25,fontFamily: 'got',color: Colors.white),)
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 100,
                          width: 120,
                          padding: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green,
                          ),
                          child: Center(
                              child:
                              Text("SERIES",style: TextStyle(fontSize: 25,fontFamily: 'got',color: Colors.white),)
                          ),
                        ),
                      ],
                    )
                  ],
                )
                ,
              ),
              SizedBox(height: 15,),
              Container(
                  height: 400,

              ),



            ],

          ),

        ),

      ),
    );
  }
}