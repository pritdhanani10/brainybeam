import 'package:flutter/material.dart';
import 'bottom_sheet_example.dart';
import 'custom_dialog_example.dart';
import 'webview_example.dart';
import 'payment_gateway_example.dart';
import 'video_login_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Examples',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Examples'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildExampleCard(
            context,
            '1. Bottom Sheet',
            'Implement Bottom Sheet Dialog',
            const BottomSheetExample(),
          ),
          _buildExampleCard(
            context,
            '2. Custom Dialog',
            'Implement Custom Dialog Screen with form fields',
            const CustomDialogExample(),
          ),
          _buildExampleCard(
            context,
            '3. WebView',
            'Create Custom WebView with history management',
            const WebViewExample(),
          ),
          _buildExampleCard(
            context,
            '4. Payment Gateway',
            'Create Donation Form with payment integration',
            const PaymentGatewayExample(),
          ),
          _buildExampleCard(
            context,
            '5. Video View',
            'Login Form with video background',
            const VideoLoginExample(),
          ),
        ],
      ),
    );
  }

  Widget _buildExampleCard(
    BuildContext context,
    String title,
    String description,
    Widget destination,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16.0),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16.0),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(description),
        trailing: const Icon(Icons.arrow_forward),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destination),
          );
        },
      ),
    );
  }
}

