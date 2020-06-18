import 'package:flutter/material.dart';

import 'package:dinenos_flutter/src/pages/basico_page.dart';
import 'package:dinenos_flutter/src/pages/scroll_page.dart';
import 'package:dinenos_flutter/src/pages/botones_pag.dart';
import 'package:flutter/services.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent
    ));
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Disenos Darwin',
      initialRoute: 'botones',
      routes: {
        'basico' : (BuildContext context) => BasicoPage(),
        'scroll' : (BuildContext context) => ScrollPage(),
        'botones' : (BuildContext context) => BotonesPage(),
      },
  
      
    );
  }
}