import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fresh_cut_dagmawi/ui/startup/fresh_cut_tab.dart';

class FreshCutApp extends StatelessWidget {
  const FreshCutApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      home: const FreshCutTab(),
    );
  }
}
