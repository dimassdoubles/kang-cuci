import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UnimplementedScreen extends StatelessWidget {
  final String _title;
  const UnimplementedScreen({super.key, required String title})
      : _title = title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_title)),
      body: Center(
        child: Text("Unimplemented Screen: $_title"),
      ),
    );
  }
}
