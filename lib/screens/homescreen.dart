import 'package:flutter/material.dart';
import 'package:qrcode/screens/qrgenerate_screen.dart';
import 'package:qrcode/screens/scanqr_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Easy QR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const QrGenerateScreen(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12), color: Colors.red),
                // color: Colors.red,
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    'Generate QR Code',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ScanQrScreen(),
                  ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.red),
              // color: Colors.red,
              child: const Padding(
                 padding: EdgeInsets.only(top:15.0,bottom: 15, left: 25, right: 25),
                child: Text(
                  'Scan QR Code',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
