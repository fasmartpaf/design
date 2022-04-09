import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Chome extends StatefulWidget {
  const Chome({Key? key}) : super(key: key);

  @override
  State<Chome> createState() => _ChomeState();
}

class _ChomeState extends State<Chome> {
  int change=1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black26,
        body:
         Padding(
            padding: const EdgeInsets.fromLTRB(15,15, 15, 10),
            child: ListView(
              children: [
                Container(
                  decoration:BoxDecoration(
                    color: Color(0xff36454f),
                    borderRadius:BorderRadius.circular(20),
                  ),
                  height: 250,

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration:InputDecoration(
                            hintText: 'enter title',
                              hintStyle: TextStyle(color: Colors.white),
                              filled: true,
                              fillColor: Color(0xff1b1b1b),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)
                              )
                          ),
                        ),
                        SizedBox(height: 10,),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xff1b1b1b),
                              borderRadius: BorderRadius.circular(15)
                            ),
                            height:200 ,
                            width: 500,

                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('input Content',style: TextStyle(color: Colors.white)),
                                  SizedBox(height: 10,),
                                  Text('videos,photo,text',style: TextStyle(color: Colors.white),)
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            children: [
                              FlatButton(onPressed: (){}, child: Image.asset('asset/plannet.png'
                              ,width: 49, ),)
                             ,FlatButton(onPressed: (){}, child: Image.asset('asset/plannet.png'
                           ,width: 49, ),)
                            ],///Button containting row,
                          ),
                        ),

                      ]///Content containeing column
                    ),
                  )
                ),
             SizedBox(height: 20,),
             Expanded(
               child: Container(
                 decoration: BoxDecoration(
                     color: Color(0xff36454f),
                   borderRadius: BorderRadius.circular(15)
                 ),
                 height:225,
                 child: Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.fromLTRB(6, 10, 5, 6),
                       child: Row(
                         children: [
                           Expanded(
                             child: Container(
                               decoration: BoxDecoration(
                                   color: Color(0xff1b1b1b),
                                 borderRadius: BorderRadius.circular(30)
                               ),
                               child: FlatButton(
                                 onPressed: (){},
                                 child: Icon(Icons.male,size: 40,color: Colors.blue,),
                               ),
                             height: 40,
                             width: 120,
                             ),
                           ),
                           Expanded(
                             child: Padding(
                               padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                               child: Container(
                                 decoration: BoxDecoration(
                                     color: Color(0xff1b1b1b),
                                     borderRadius: BorderRadius.circular(30)
                                 ),
                                 child: FlatButton(
                                   onPressed: (){},
                                   child: Icon(Icons.female,size: 40,color: Colors.red,),
                                 ),
                                 height: 36,
                                 width: 120,
                               ),
                             ),
                           ),

                           Expanded(
                             child: Container(
                               decoration: BoxDecoration(
                                   color: Colors.white,
                                   borderRadius: BorderRadius.circular(30)
                               ),
                               child: FlatButton(
                                 onPressed: (){},
                                 child: Text('Any',style: TextStyle(color: Colors.black,fontSize: 20),)
                               ),
                               height: 35,

                             ),
                           ),

                         ],///Row of second container
                       ),
                     ),
                     Text('Age',style: TextStyle(color: Colors.white),),
                     Slider(

                      activeColor: Colors.white,
                         inactiveColor: Colors.white,
                         value: 100,max: 100,min: 100, onChanged:(value){
                       setState(() {
                          change=value++ as int;
                       });
                     }),
                   Padding(
                     padding: const EdgeInsets.fromLTRB(20, 5, 20, 10),
                     child: Row(
                       children: [
                         Expanded(
                           child: Container(
                             decoration: BoxDecoration(
                                 color: Color(0xff1b1b1b),
                                 borderRadius: BorderRadius.circular(30)
                             ),
                             child: FlatButton(
                               onPressed: (){},
                               child:Text('+  100  -   ',style: TextStyle(fontSize: 20,color: Colors.white),)
                             ),
                             height: 50,

                           ),
                         ),///Row for  Send
                         Expanded(
                           child: Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Container(
                               decoration: BoxDecoration(
                                   color: Colors.white,
                                   borderRadius: BorderRadius.circular(30)
                               ),
                               child: FlatButton(
                                 onPressed: (){

                                 },
                                 child: Text('Send',style: TextStyle(color: Colors.black),),
                               ),
                               height: 50,
                             ),
                           ),
                         ),
                       ],
                     ),
                   )
                   ],///Column of second container
                 ),
               ),
             )
              ]///first column,
            ),
         ),
      bottomNavigationBar:  Padding(
        padding: EdgeInsets.only(bottom: 6),
        child: Expanded(
          child: DotNavigationBar(
            margin: EdgeInsets.only(left: 6, right: 6),
            dotIndicatorColor: Colors.black26,
            unselectedItemColor: Colors.black26,
            // enableFloatingNavBar: false,
            onTap: (value){},
            items: [
              DotNavigationBarItem(
                icon: Image.asset('asset/wifiplannet.png',height: 20,),
                selectedColor: Colors.green,
              ),

              DotNavigationBarItem(
                icon: Image.asset('asset/plan.png',height: 20,),
                selectedColor: Colors.green,
              ),

              DotNavigationBarItem(
                icon: Image.asset('asset/plannet.png',height: 20,),
                selectedColor: Colors.green,
              ),
              DotNavigationBarItem(
                icon: Image.asset('asset/messageing.png',height: 20,),
                selectedColor: Colors.green,
              ),
              DotNavigationBarItem(
                icon: Image.asset('asset/person.png',height: 20,),
                selectedColor: Colors.green,
              ),
            ],
          ),
        ),
      ),
      )
      );

  }
}
