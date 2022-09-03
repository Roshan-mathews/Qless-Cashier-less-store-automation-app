import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/Home%20page/home_page.dart';

class Payment extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _Payment();
  
}

class _Payment extends State<Payment>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.white,
     body: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children:[
               Padding(
                 padding: EdgeInsets.symmetric(horizontal: 150),
                 child: Container(
                     height: 100,
                     width: 100,
                     child: Image.asset("assets/images/Reliance fresh-removebg-preview.png")),
               ),
               Container(
                   height: 150,
                   width: 200,
                   child: Image.asset("assets/images/green-check-mark-16.jpg")),
               
               Text("Payment Successfull",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

               SizedBox(height: 20,),
               Container(
                   height: 150,
                   width: 200,
                   child: Image.asset("assets/images/unnamed.jpg")),
               SizedBox(height: 10,),

               Text("Show QR code at exit gate",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),

               SizedBox(height: 40,),

               GestureDetector(
                   onTap: (){
                     Navigator.push(
                         context, MaterialPageRoute(builder: (context) => Homepage()));
                   },
                   child: Text("Go to home page",style: TextStyle(fontSize: 16,color: Colors.blue),)),

  ]


     ),
   );
  }
  
}