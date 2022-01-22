import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class ScanQrScreen extends StatefulWidget {
  const ScanQrScreen({Key? key}) : super(key: key);

  @override
  _ScanQrScreenState createState() => _ScanQrScreenState();
}

class _ScanQrScreenState extends State<ScanQrScreen> {

Future  _qrScanner()async{
  var cameraStatus = await Permission.camera.status;
  String data;
if(cameraStatus.isGranted){
  String? qrdata = await scanner.scan(); 
  // String? qrdataphone = await scanner.scanPhoto(); 
  print(qrdata);
}else{
  var isGranted  = await Permission.camera.request();
  if(isGranted.isGranted){
    String? qrdata = await scanner.scan();
     print(qrdata);
    
  }
}

}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scan QR code'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
            _qrScanner();
              },
              child: Container(
                  decoration: BoxDecoration(color: Colors.red,
                  borderRadius: BorderRadius.circular(18)
                  ),
                  
                  child: const Padding(
                    padding: EdgeInsets.only(top:15.0,bottom: 15, left: 25, right: 25),
                    child: Text('Scan your QR code', style: TextStyle(color: Colors.white),),
                  )),
            ),

   
          ],
        ),
      ),
    );
  }
}
