import 'package:flutter/material.dart';

class ReportPage extends StatefulWidget {
  const ReportPage({super.key});

  @override
  State<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.purple,
      ),
      drawer: Drawer(
        child: ListView(
          children: [DrawerHeader(child: Text("Header"))],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [Text("Reporting area")],
        ),
      ),
    );
  }
}
