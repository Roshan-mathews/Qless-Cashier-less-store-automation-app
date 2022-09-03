import 'package:barcode_scan_fix/barcode_scan.dart';
import 'package:flutter/material.dart';

class ScanQR extends StatefulWidget {
  @override
  _ScanQRState createState() => _ScanQRState();
}

class _ScanQRState extends State<ScanQR> {

  String qrCodeResult = "Not Yet Scanned";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scan QR Code"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //Message displayed over here
            Text(
              "Result",
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              qrCodeResult,
              style: TextStyle(
                fontSize: 20.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20.0,
            ),

            //Button to scan QR code
            FlatButton(
              padding: EdgeInsets.all(15),
              onPressed: () async {
                String codeSanner = await BarcodeScanner.scan();    //barcode scanner
                setState(() {
                  qrCodeResult = codeSanner;
                });
              },
              child: Text("Open Scanner",style: TextStyle(color: Colors.indigo[900]),),
              //Button having rounded rectangle border
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.indigo[900]),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),

          ],
        ),
      ),
    );
  }
}











































/*import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'package:qrscan/qrscan.dart' as scanner;
String cameraScanResult = await scanner.scan();

// Select Bar-Code or QR-Code photos for analysis
String photoScanResult = await scanner.scanPhoto();

// Generating QR-Code
Uint8List result = await scanner.generateBarCode('https://github.com/leyan95/qrcode_scanner');

// Scanning the image of the specified path
String barcode = await scanner.scanPath(path);

// Parse to code string with uint8list
File file = await ImagePicker.pickImage(source: ImageSource.camera);
Uint8List bytes = file.readAsBytesSync();
String barcode = await scanner.scanBytes(uint8list);*/

/*class ScanQrPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ScanQrPageState();
}

class _ScanQrPageState extends State<ScanQrPage> {
  Barcode result;
  QRViewController controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  void _onQRViewCreated(QRViewController controller) {
    setState(() => this.controller = controller);
    controller.scannedDataStream.listen((scanData) {
      setState(() => result = scanData);
    });
  }
  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller.pauseCamera();
    } else if (Platform.isIOS) {
      controller.resumeCamera();
    }
  }

  void readQr() async {
    if (result != null) {
      controller.pauseCamera();
      print(result.code);
      controller.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    readQr();
    return Scaffold(
      body: QRView(
        key: qrKey,
        onQRViewCreated: _onQRViewCreated,
        overlay: QrScannerOverlayShape(
          borderColor: Colors.orange,
          borderRadius: 10,
          borderLength: 30,
          borderWidth: 10,
          cutOutSize: 250,
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}*/




/*
import 'package:flutter/material.dart';


class QRViewExampleState extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _QRViewExampleState();
}

class _QRViewExampleState extends State<QRViewExampleState> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    } else if (Platform.isIOS) {
      controller!.resumeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: QRView(
              key: qrKey,
              onQRViewCreated: _onQRViewCreated,
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: (result != null)
                  ? Text(
                  'Barcode Type: ${describeEnum(result!.format)}   Data: ${result!.code}')
                  : Text('Scan a code'),
            ),
          )
        ],
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
*/