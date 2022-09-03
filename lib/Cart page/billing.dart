import 'package:flutter/material.dart';
import 'package:sample/Payment%20page/payment.dart';

class billing extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _billing();
}

class _billing  extends State<billing>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bill Summary"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Container(
                height: 200,
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 30),
                        child: Text("Meriboy Icecream\t\t₹160",style: TextStyle(fontSize: 24),)),

                    Padding(
                        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 30),
                        child: Text("Pepsi x1\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t₹90",style: TextStyle(fontSize: 24),)),

                    Padding(
                        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                        child: Text("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tSubtotal  ₹250",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 24),)),
                  ],
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
            bottom: 5,
            left: 200,
            child: ButtonTheme(
              minWidth: 80,
              height: 40,
              child: new RaisedButton(
                //notchMargin: 24.0,
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Payment()));
                },
                child: Text("Procced to Checkout",style: TextStyle(fontSize: 16)),
                color: Colors.blue,
                textColor: Colors.white,
              ),
            ),

          ),
        ],
      ),
    );
  }
}