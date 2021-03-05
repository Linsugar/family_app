import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(40),
        width: _size.width,
        height: _size.height,
        decoration: BoxDecoration(image: DecorationImage(image:AssetImage('images/login.jpg'),fit: BoxFit.cover )),
        child: Flex(
          direction: Axis.vertical,
          children: [
            Expanded(
              flex: 2,
              child: Text("GoTravel",style: TextStyle(fontSize: 30),),
            ),
            Expanded( flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("原野无边无际，远处的天空比近处的树林还要低；江水清清，明月仿似更与人相亲",style: TextStyle(fontSize: 17),),
                  Text("原野无边无际，远处的天空比近处的树林还要低；江水清清，明月仿似更与人相亲",style: TextStyle(fontSize: 15),),
                ],
              )),
            Flexible( flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                 Text("登录界面"),
                 Container(width: _size.width/2 ,child: RaisedButton(onPressed: (){},child: Text("登录"),color: Colors.red,)),
                 Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                        Container(width: _size.width/5,height: 1,color: Colors.white,),
                        Text("GIF"),
                        Container(width: _size.width/5,height: 1,color: Colors.white,)
                      ],),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(color: Colors.white,child: IconButton(icon: Icon(Icons.star),onPressed: (){},)),
                        SizedBox(width: 10,),
                        Container(color: Colors.white,child: IconButton(icon: Icon(Icons.router),onPressed: (){},)),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text("水中可居者曰洲，小洲曰渚。")
                  ],
                ),
              ),
          ],
        )
      ),
    );
  }
}