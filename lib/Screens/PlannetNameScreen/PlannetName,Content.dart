import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
class Cplannet extends StatefulWidget {
  const Cplannet({Key? key}) : super(key: key);

  @override
  State<Cplannet> createState() => _CplannetState();
}

class _CplannetState extends State<Cplannet> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.black26,
      appBar:AppBar(
        actions: [
          Icon(Icons.notifications,size: 50,)
        ],
        backgroundColor: Colors.black26,
        title: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.add),

        )
      ),
    body: Center(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xff36454f),
            borderRadius: BorderRadius.circular(30)
          ),
          width: 500,
          height: 400,
          child: Column(
            children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Image.asset('asset/plannet.png',height: 40,),
                  SizedBox(width: 5,),
                  Text('Plannet name',style: TextStyle(fontSize: 20,color: Colors.white),),
                  SizedBox(width: 5,),
                  Text('2:26:18',style: TextStyle(color: Colors.white),),
                  SizedBox(width: 5,),
                  Icon(Icons.alarm,color: Colors.white,),
                  SizedBox(width: 5,),


                ],///Ending Row
              ),
            ),
                  Divider(color: Colors.white,),
            Center(child: Text('Content',style: TextStyle(color: Colors.white),)),
              SizedBox(height: 10,),
              Text('Photos Thumbnails are displaying up to 9',style: TextStyle(color: Colors.white),)
             ,SizedBox(height: 10,)
              ,Text('Text Displaying a summary',style: TextStyle(color: Colors.white,),textAlign: TextAlign.start,)
              ,SizedBox(height: 10,)
              ,Text('Text Displaying as summary',style: TextStyle(color: Colors.white),)


            ],///Ending Columb
          ),

        ),
      ),
    ),
      bottomNavigationBar: Container(
        height: 110,
        width: 200,
        color: Colors.black26,
        child: Padding(
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
      ),
    ));
  }
}
