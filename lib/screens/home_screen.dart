import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final String walletKey;
  HomeScreen({required this.walletKey});
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double balance = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pancono Wallet')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Wallet Key: ${widget.walletKey}'),
            SizedBox(height: 10),
            Text('Balance: \$${balance.toStringAsFixed(2)}'),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Receive PANCA'),
              onPressed: () {
                setState(() {
                  balance += 100; // example increment
                });
              },
            ),
            ElevatedButton(
              child: Text('Export Private Key'),
              onPressed: () {
                // placeholder for export
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Private Key exported!')));
              },
            )
          ],
        ),
      ),
    );
  }
}
