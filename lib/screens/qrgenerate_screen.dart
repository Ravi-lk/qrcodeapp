import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrGenerateScreen extends StatefulWidget {
  const QrGenerateScreen({Key? key}) : super(key: key);

  @override
  _QrGenerateScreenState createState() => _QrGenerateScreenState();
}

class _QrGenerateScreenState extends State<QrGenerateScreen> {
  TextEditingController qrcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generate QR Codes'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            QrImage(
              data: qrcontroller.text,
              size: 200,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                controller: qrcontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Enter your data'),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  
                });
              },
              child:  Container(
                decoration: BoxDecoration(
                  color: Colors.red
                ),
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text('Generate QR',
                  style: TextStyle(color: Colors.white),
                  ),
                )),
            ),
          ],
        ),
      ),
    );
  }
}
