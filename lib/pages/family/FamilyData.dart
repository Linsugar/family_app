import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Family extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FamilyState();
  }
}

class FamilyState extends State<Family>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("家族数据"),actions: [MaterialButton(onPressed: (){},child: Icon(Icons.account_circle,color: Colors.lightBlueAccent,),)],),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Flex(
          direction: Axis.vertical,
          children: [
            Flexible(flex: 3,child: Flex(
              direction: Axis.horizontal,
              children: [
                Flexible(flex: 2,child:Container(margin: EdgeInsets.all(10),
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
                    Icon(Icons.add),
                    Text("点击")
                  ],),
                )),
              Flexible(flex: 15,child: Container(
                padding: EdgeInsets.only(top: 10,bottom: 10),
                child: ListView.separated(scrollDirection: Axis.horizontal,itemCount: 20,separatorBuilder: (context,index){
                  return SizedBox(width: 10,);
                },itemBuilder: (context,index){
                    return Container(width: 200,height: 100,color: Colors.blue,child: Text("1323"),);
                },),
              ),)
              ],
            ),),
            Flexible(flex: 7,child: Container(color: Colors.green,),),
          ],
        ),
      ),
    );
  }
}