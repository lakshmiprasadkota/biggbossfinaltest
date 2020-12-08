import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  List <String> noList =["1." , "2." , "3." , "4." , "5."];
  List <String> subtitleList =["Public" , "Benee feat. gus Dapperton" , "Trevor Daniel" , "Surface" , "Lewis Capaldi"] ;
  List <String> titleList =["Make You Mine" , "Supaloney" , "Falling" , "Sundat Best" , "SomeOne You Loved"] ;
  List <String> timeList =["3:52" , "4:24" , "3:21" , "3:42" , "3:42" ];
  List <Color> clrList =[Colors.white , Colors.white , Colors.white , Colors.redAccent , Colors.white];
  List <Color> clrListTwo =[Colors.white , Colors.white , Colors.white , Colors.blue , Colors.white];




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        backgroundColor: Color(0xfff5f3ff),

        body: SafeArea(
          child: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Container(
              margin: EdgeInsets.only(left: 13, top:20 , right: 10),
              child: Column(
                children: [

                  Container(
                    child: ListView.builder(itemCount: titleList.length,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index){
                      return ListClass(no: noList[index],
                        title: titleList[index],
                        subtitle: subtitleList[index],
                        clr2: clrList[index],
                        time: timeList[index],

                      );
                      }

                    ),


                  ),

                  SizedBox(height: 20,),
                  Image.asset("assets/images/Screenshot (15).png"),
                  SizedBox(height: 20,),

                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Sunday Best" , style: TextStyle(color: Colors.black,
                      fontWeight: FontWeight.w700  , fontSize: 20),),
                      Image.asset("assets/images/Screenshot (17).png")

                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Surface" , style: TextStyle(color: Colors.black,
                        fontSize: 15),),
                      Text("-3:42  " , style: TextStyle(color: Colors.red,
                          fontSize: 20),),


                    ],
                  ),
                  SizedBox(height: 100,),

                  Container(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.shuffle), Icon(Icons.backpack),

                        Icon(Icons.play_circle_outline_rounded),
                        Icon(Icons.arrow_forward_ios),
                        Icon(Icons.menu),

                      ],
                    ),
                  )




                ],
              ),
            ),
          ),
        )
      ),
    );
  }
}

class ListClass extends StatefulWidget {
  ListClass({ this.no , this.subtitle , this.title , this.clr , this.time ,  this.clr2 });
  final String no ;
  final String subtitle;
  final String title ;
  final String time;

  final Color clr;
  final Color clr2;
  @override
  _ListClassState createState() => _ListClassState();
}

class _ListClassState extends State<ListClass> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          decoration: BoxDecoration(
            color: widget.clr2,
            borderRadius: BorderRadius.circular(30)
          ),
          child: Center(

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                   Text(widget.no),
                  SizedBox(width: 15,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(

                            child: Text(widget.subtitle , style: TextStyle(color: Colors.grey, fontSize: 15),)),

                        Container(

                            child: Text(widget.title , style: TextStyle(color: Colors.black, fontSize: 18 , fontWeight: FontWeight.w700),)),

                      ],
                    ),
                  ),

                  Row(
                    children: [
                      Text(widget.time),
                      SizedBox(width: 5,),
                      Icon(Icons.favorite)
                    ],
                  )
              ],),
            ),
          ),
        ),

        SizedBox(height: 10,)
      ],
    );
  }
}
