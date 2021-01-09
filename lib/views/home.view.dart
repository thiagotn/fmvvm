import 'package:flutter/material.dart';
import 'package:fmvvm/stores/app.store.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var store = Provider.of<AppStore>(context);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(store.name),
      ),
    );
  }
}
