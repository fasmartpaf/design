import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';

class Cadminstrator extends StatefulWidget {
  const Cadminstrator({Key? key}) : super(key: key);

  @override
  State<Cadminstrator> createState() => _CadminstratorState();
}

class _CadminstratorState extends State<Cadminstrator> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black26,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(80, 50, 80, 0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(20)),
          width: 10000,
          height: 200,
          child: Column(
            children: [
              SizedBox(
                width: 20,
                height: 20,
              ),
              Text(
                'The adminstrator(adimin user) From ',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              SizedBox(
                width: 20,
                height: 5,
              ),
              Text(
                'Plannet (Plateform name) approved your joining',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        width: 50,
                        height: 30,
                        child: FlatButton(
                          onPressed: () {},
                          child: Center(
                              child: Text(
                            'ok',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          )),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 6),
        child: Expanded(
          child: DotNavigationBar(
            margin: EdgeInsets.only(left: 6, right: 6),
            dotIndicatorColor: Colors.black26,
            unselectedItemColor: Colors.black26,
            // enableFloatingNavBar: false,
            onTap: (value) {},
            items: [
              DotNavigationBarItem(
                icon: Image.asset(
                  'asset/wifiplannet.png',
                  height: 20,
                ),
                selectedColor: Colors.green,
              ),
              DotNavigationBarItem(
                icon: Image.asset(
                  'asset/plan.png',
                  height: 20,
                ),
                selectedColor: Colors.green,
              ),
              DotNavigationBarItem(
                icon: Image.asset(
                  'asset/plannet.png',
                  height: 20,
                ),
                selectedColor: Colors.green,
              ),
              DotNavigationBarItem(
                icon: Image.asset(
                  'asset/messageing.png',
                  height: 20,
                ),
                selectedColor: Colors.green,
              ),
              DotNavigationBarItem(
                icon: Image.asset(
                  'asset/person.png',
                  height: 20,
                ),
                selectedColor: Colors.green,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
