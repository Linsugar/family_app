import 'dart:ui';
import 'package:flutter/material.dart';
class Regitser extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RegisterState();
  }
}

class RegisterState extends State<Regitser>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var _size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          width: _size.width,
          height: _size.height,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/login.jpg'),fit: BoxFit.cover)),
          child: Stack(
            children: [
              Positioned(
                top: 50,
                left: 50,
                right: 50,
                child: Container(
                  width: _size.width,
                  height: 200,
                  child: Column(
                    children:[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(icon: Icon(Icons.chevron_left),onPressed: (){},),
                          Text("SING IN",style: TextStyle(fontSize: 20),)
                        ],
                      ),
                      Expanded(child: Text("原野无边无际，远处的天空比近处的树林还要低；江水清清，明月仿似更与人相亲",maxLines: 2,))
                    ]
                  ),
                ),
              ),
              Positioned(
                top:200,
                child: Form(
                  child: Center(
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10.0,sigmaY: 10.0),
                        child: Container(padding: EdgeInsets.all(20),width: _size.width,height: _size.height-200,decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),color: Colors.grey.shade200.withOpacity(0.5)),child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            for(var i=0;i<5;i++)
                           Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),padding: EdgeInsets.only(left: 10,right: 10),child: TextFormField(decoration: InputDecoration(border:InputBorder.none,icon: Icon(Icons.account_box),hintText: "请输入用户名"),)),

                          Row(children: [
                            Checkbox(onChanged: (value){},value: false,),
                            Expanded(child: Text("原野无边无际，远处的天空比近处的树林还要低；江水清清，明月仿似更与人相亲",maxLines: 2,))
                          ],),
                            Container(width: _size.width/3,child: MaterialButton(color: Colors.red,onPressed: (){},child: Text("注册"),)),
                            Text("原野无边无际，远处的天空比近处的树林还要低")
                          ],
                        )),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//Scaffold(
//resizeToAvoidBottomInset: false,
//body: SingleChildScrollView(
//child: Container(
//width: _size.width,
//height: _size.height,
//decoration: BoxDecoration(image:DecorationImage(image: AssetImage('images/login.jpg'),fit: BoxFit.cover) ),
//child: Stack(
//children: [
//ConstrainedBox(
//constraints: BoxConstraints.expand(),
//child: Positioned(
//top: 100,
//child: Container(
//child: BackdropFilter(
//filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
//child: Opacity(
//opacity: 0.4,
//child: Container(
//width: _size.width,height: _size.height-100,),
//),
//),
//)),
//),
//Positioned(
//top: 100,
//child: Container(
//padding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 20 ),
//width: _size.width,
//height: _size.height-100,
//child: Form(
//child: Column(
//mainAxisAlignment: MainAxisAlignment.spaceBetween,
//children: [
//Container(color: Colors.red,width: _size.width/3,height: 2,),
//Container(padding: EdgeInsets.only(right: 10,left: 10),decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all()),child: TextFormField(decoration: InputDecoration(icon: Icon(Icons.supervised_user_circle),hintText: "请输入用户名"),)),
//Container(padding: EdgeInsets.only(right: 10,left: 10),decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all()),child: TextFormField(decoration: InputDecoration(icon: Icon(Icons.supervised_user_circle),hintText: "请输入用户名"),)),
//Container(padding: EdgeInsets.only(right: 10,left: 10),decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all()),child: TextFormField(decoration: InputDecoration(icon: Icon(Icons.supervised_user_circle),hintText: "请输入用户名"),)),
//Container(padding: EdgeInsets.only(right: 10,left: 10),decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all()),child: TextFormField(decoration: InputDecoration(icon: Icon(Icons.supervised_user_circle),hintText: "请输入用户名"),)),
//Container(padding: EdgeInsets.only(right: 10,left: 10),decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all()),child: TextFormField(decoration: InputDecoration(icon: Icon(Icons.supervised_user_circle),hintText: "请输入用户名"),)),
//Row(
//children: [
//Checkbox(onChanged: (value){},value: false,),
//Expanded(child: Text("原野无边无际，远处的天空比近处的树林还要低；江水清清，明月仿似更与人相亲",maxLines: 2,)),
//],
//),
//Container(width: _size.width/2,child: RaisedButton(color: Colors.red,child: Text("注册"),onPressed: (){},),),
//Text("原野无边无际，远处的天空比近处的树林还要低")
//],
//),
//),
//),)
//],
//),
//),
//),
//);