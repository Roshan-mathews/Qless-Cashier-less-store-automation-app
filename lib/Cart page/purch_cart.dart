import 'package:barcode_scan_fix/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:sample/Cart%20page/purch_cart2.dart';

class purchaseCart extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _purchaseCart();
}

class _purchaseCart extends State<purchaseCart> {
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
           /* Padding(
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
              ),
            ),*/

          ],
        ),
      ),






bottomNavigationBar: Stack(
        overflow: Overflow.visible,
        alignment: new FractionalOffset(.5, 1.0),
        children: [
          Container(
            height: 80.0,
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
            bottom: 15,
            left: 300,
              child: ButtonTheme(
                minWidth: 80,
                height: 40,
                child: new RaisedButton(
                  //notchMargin: 24.0,
                  onPressed: () => print('hello world'),
                  child: Text("Pay",style: TextStyle(fontSize: 16)),
                  color: Colors.blue,
                  textColor: Colors.white,
                ),
              ),

          ),

          Row(
            children:[
              SizedBox(width: 180),
              Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: FloatingActionButton(
                child: Container(
                  height: 100,
                  width: 100,
                  child: GestureDetector(onTap: () async {
                    await BarcodeScanner.scan();
                    setState(() {

                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => purchaseCart2()));
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
                      child: Image.asset("assets/images/qr-code-scan 2.png"),),
                ),
              ),
            ),
          SizedBox(width:60,height: 20),


              ]
          ),

        ],
      ),
    );
  }
}


