import 'package:flutter/material.dart';

void main() {
  runApp(PanconoWalletApp());
}

class PanconoWalletApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pancono Wallet',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: WalletHomePage(),
    );
  }
}

class WalletHomePage extends StatefulWidget {
  @override
  _WalletHomePageState createState() => _WalletHomePageState();
}

class _WalletHomePageState extends State<WalletHomePage> {
  final _keyController = TextEditingController();
  Map<String, double> balances = {
    'OWNER123456789': 2100000,
    'TREASURY987654321': 1500000,
    'RWPK_00000001': 5.0,
    'RWPK_00000002': 5.0
  };

  double _balance = 0.0;

  void _checkBalance() {
    String key = _keyController.text.trim();
    setState(() {
      _balance = balances[key] ?? 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pancono Wallet')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _keyController,
              decoration: InputDecoration(
                labelText: 'Enter Reserved Wallet Key',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _checkBalance,
              child: Text('Check Balance'),
            ),
            SizedBox(height: 16),
            Text('Balance: $_balance PANCA', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
