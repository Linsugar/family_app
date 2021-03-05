import 'package:familyapp/pages/chat/Chat.dart';
import 'package:familyapp/pages/family/FamilyData.dart';
import 'package:familyapp/pages/home/Home.dart';
import 'package:familyapp/pages/login/login.dart';
import 'package:familyapp/provider/grobleState.dart';
import 'package:familyapp/routes/application.dart';
import 'package:familyapp/routes/route.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() =>runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>GlobalState())
      ],
      child: MyApp(),));


class MyApp  extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{
 static int _index = 0;


  @override
  Widget build(BuildContext context) {
    final router = FluroRouter();
    Routes.configureRoutes(router);
    Application.router = router;
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Application.router.generator,
      home: Scaffold(
        floatingActionButton: Icon(Icons.add_a_photo),
      body:IndexedStack(key: UniqueKey(),index: _index,children: [
        Home(),
        Chat(),
        Family(),
        Login(),
      ],),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value){print("value:$value");
        setState(() {
          _index = value;
        });
        },
        currentIndex: _index,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.apps),label: "首页"),
          BottomNavigationBarItem(icon: Icon(Icons.apps),label: "消息"),
          BottomNavigationBarItem(icon: Icon(Icons.apps),label: "家族"),
          BottomNavigationBarItem(icon: Icon(Icons.apps),label: "我的"),
        ],
      ),
    ),);
  }
}