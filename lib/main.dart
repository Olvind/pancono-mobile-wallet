import 'package:flutter/material.dart';
import 'screens/import_wallet.dart';

void main() {
  runApp(PanconoWalletApp());
}

class PanconoWalletApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pancono Wallet',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ImportWalletScreen(),
    );
  }
}
