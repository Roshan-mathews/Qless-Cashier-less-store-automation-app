import 'package:barcode_scan_fix/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:sample/Cart%20page/purch_cart.dart';
//import 'package:sample/QR_scan/qr_scan.dart';


class Homepage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _Homepage();
}

class _Homepage  extends State<Homepage>{
  String qrCodeResult = "Not Yet Scanned";
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("QLess"),
    ),
    body:  Row(
      children: [

        Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 170,vertical: 10),
              child: Container(
               // color: Colors.red,
                height: 60,
                  width: 60,
                  child: GestureDetector(
                      onTap: ()async {
                        /*String codeSanner =*/ await BarcodeScanner.scan();    //barcode scanner
                        setState(() {
                          //***************************************************** Alert Dialouge box
                          showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              title: Row(
                                  children:[
                                    Padding(
                                      padding:EdgeInsets.symmetric(horizontal: 10),
                                      child: Container(
                                          height: 60,
                                          width: 60,
                                          child: Image.asset("assets/images/Reliance fresh-removebg-preview.png")),
                                    ),
                                    const Text('Reliance Fresh')
                                  ]
                              ),
                              content: Column(
                                  children: [
                                    Text('Enter the otp send to 97*****702'),

                                    Padding(
                                      padding: EdgeInsets.symmetric(vertical: 10),
                                      child: OtpTextField(
                                        numberOfFields: 5,
                                        borderColor: Color(0xFF512DA8),
                                        //set to true to show as box or false to show as dash
                                        showFieldAsBox: true,
                                        //runs when a code is typed in
                                        onCodeChanged: (String code) {
                                          //handle validation or checks here
                                        },
                                        //runs when every textfield is filled
                                        onSubmit: (String verificationCode){
                                          showDialog(
                                              context: context,
                                              builder: (context){
                                                return AlertDialog(
                                                  title: Text("Verification Code"),
                                                  content: Text('Code entered is $verificationCode'),
                                                );
                                              }
                                          );
                                        }, // end onSubmit
                                      ),
                                    ),
                                  ]
                              ),
                              actions: <Widget>[
                                Row(
                                  children:[

                                    TextButton(
                                    onPressed: () => Navigator.pop(context, 'Cancel'),
                                    child: const Text('Cancel'),
                                  ),
                                TextButton(
                                  onPressed: () =>  Navigator.push(
                                      context, MaterialPageRoute(builder: (context) => purchaseCart())),
                                  child: const Text('Verify'),
                                ),
                                ]
                                 ),
                              ],
                            ),
                          );



                          //Navigator.push(
                            //  context, MaterialPageRoute(builder: (context) =>_showMyDialog();//));
                          //qrCodeResult = ScanQR() as String;
                        });
                      },

                      /*{
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => ScanQR()));
                      },*/
                      child: Image.asset("assets/images/qr-code-scan 2.png"))
              ),
            ),
          ),
      ]
    ),




    bottomNavigationBar: BottomNavigationBar(
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
    ),
  );

  }
}





