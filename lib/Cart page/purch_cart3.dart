import 'package:barcode_scan_fix/barcode_scan.dart';
import 'package:flutter/material.dart';

import 'billing.dart';

class purchaseCart3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _purchaseCart3();
}

class _purchaseCart3 extends State<purchaseCart3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 105),
            child: Container(
                height: 60,
                width: 60,
                child: Image.asset(
                    "assets/images/Reliance fresh-removebg-preview.png")),
          ),
        ]),
      ),


      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /*Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Container(
                height: 60,
                width: 60,
                child: GestureDetector(onTap: () {

                },
                    child: Image.asset("assets/images/qr-code-scan 2.png")),
              ),
            ),
          ),*/
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Container(
                height: 150,
                width: 400,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      //offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: Row(
                    children:[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                            height: 100,
                            width: 100,
                            child: Image.asset("assets/images/meriboy.jpg")),
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 30),
                          Text("Meriboy Icecrean - Spanish \nDelight",style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14,
                          ),),
                          SizedBox(height: 10),
                          Text("500 ML"),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text("₹ 160",style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30,)),
                              SizedBox(width: 70,),
                              Text("-",style: TextStyle(
                                fontSize: 30,)),
                              SizedBox(width: 5),
                              Container(
                                height: 30,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      //offset: Offset(0.0, 1.0), //(x,y)
                                      blurRadius: 6.0,
                                    ),
                                  ],
                                ),
                                child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                    child: Text("1")),
                              ),
                              SizedBox(width: 5),
                              Text("+",style: TextStyle(
                                fontSize: 20,))
                            ],
                          )
                        ],
                      )
                    ]
                ),
              ),
            ),

            //-----------------------------------------------------------------

            Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: Container(
                height: 150,
                width: 400,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      //offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: Row(
                    children:[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                            height: 100,
                            width: 100,
                            child: Image.asset("assets/images/2-litre-pepsi-cold-drink-500x500.jpg")),
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 30),
                          Text("Pepsi Cold Drink ",style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14,
                          ),),
                          SizedBox(height: 10),
                          Text("2 Litres"),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text("₹ 90",style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30,)),
                              SizedBox(width: 90,),
                              Text("-",style: TextStyle(
                                fontSize: 30,)),
                              SizedBox(width: 5),
                              Container(
                                height: 30,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      //offset: Offset(0.0, 1.0), //(x,y)
                                      blurRadius: 6.0,
                                    ),
                                  ],
                                ),
                                child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                    child: Text("1")),
                              ),
                              SizedBox(width: 5),
                              Text("+",style: TextStyle(
                                fontSize: 20,))
                            ],
                          )
                        ],
                      )
                    ]
                ),
              ),
            ),

          ],
        ),
      ),


      bottomNavigationBar: Stack(
        overflow: Overflow.visible,
        alignment: new FractionalOffset(.5, 1.0),
        children: [
          Container(
            height: 60.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  //offset: Offset(0.0, 1.0), //(x,y)
                  blurRadius: 6.0,
                ),
              ],
            ),
          ),

          Positioned(
            bottom: 10,
            left: 290,
            child: ButtonTheme(
              minWidth: 80,
              height: 40,
              child: new RaisedButton(
                //notchMargin: 24.0,
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => billing()));
                },
                child: Text("Pay ₹250",style: TextStyle(fontSize: 16)),
                color: Colors.blue,
                textColor: Colors.white,
              ),
            ),

          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 30),
            child: FloatingActionButton(
              child: Container(
                height: 60,
                width: 60,
                child: GestureDetector(onTap: () async {
                  await BarcodeScanner.scan();
                  setState(() {
                    //***********************************************************     Container
                    /*Padding(
                        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                    child: Container(
                    height: 150,
                    width: 400,

                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white,
                    boxShadow: const [
                    BoxShadow(
                    color: Colors.grey,
                    //offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                    ),
                    ],
                    )
                    ,
                    ),
                    );*/
                    //***********************************************************
                  });
                },
                    child: Image.asset("assets/images/qr-code-scan 2.png")),
              ),
            ),
          )
        ],
      ),


      /* bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label:'Settings',
          ),
        ],
        //currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        //onTap: _onItemTapped,
      ),*/
    );
  }
}