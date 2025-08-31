import 'package:flutter/material.dart';
import 'home_screen.dart';

class ImportWalletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController keyController = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text('Import Wallet')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: keyController, decoration: InputDecoration(labelText: 'Enter Wallet Key')),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Import Wallet'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => HomeScreen(walletKey: keyController.text)));
              },
            )
          ],
        ),
      ),
    );
  }
}
