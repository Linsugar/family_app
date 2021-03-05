import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class chatChild extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return chatChildState();
  }
}

class chatChildState extends State<chatChild>{
  String _imagrurl = 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201901%2F17%2F20190117092809_ffwKZ.thumb.700_0.jpeg&refer=http%3A%2F%2Fb-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1616828490&t=47c56d1e82192312b85a0075b591034e';
  List<String> _Streamlist= [];
  var _streamController = StreamController<String>();
  var _textcontroller = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    _streamController.close();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        _Streamlist.add(_textcontroller.text);
        _Streamlist.forEach((element) {
          _streamController.sink.add(element);
        });
        _textcontroller.clear();
      },child: Icon(Icons.adb),),
      appBar: AppBar(title: Text("九尾妖狐"),actions: [CircleAvatar(backgroundImage: NetworkImage(_imagrurl)),SizedBox(width: 10,)],),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child:Flex(
          direction: Axis.vertical,
          children: [
            Expanded(flex: 8,child: StreamBuilder(
              stream: _streamController.stream,
              builder: (BuildContext context, AsyncSnapshot snapshot){
                if(snapshot.hasError){
                  return Icon(Icons.error);
                }else{
                  print("数据${snapshot.data}");
                  print("数据列表${_Streamlist}");
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        for(var i=0;i<_Streamlist.length;i++)
                        Row(mainAxisAlignment:_Streamlist[i].length>15?MainAxisAlignment.start: MainAxisAlignment.end,children: [
                          Expanded(
                            child: ListTile(
                            leading: _Streamlist[i].length>10?CircleAvatar(backgroundImage: NetworkImage(_imagrurl),):null,
                            title: Wrap(textDirection: _Streamlist[i].length<20?TextDirection.rtl:TextDirection.ltr,direction: Axis.horizontal,children: [
                              Text("${_Streamlist[i]}")
                            ],),
                            trailing:  _Streamlist[i].length<15?CircleAvatar(backgroundImage: NetworkImage(_imagrurl),):null,
                            ),
                          )

                        ],)
                      ],
                    ),
                  );
                  return Text("数据${snapshot.data}");
                }
              },),),Flexible(flex: 1,child: TextField(controller: _textcontroller,maxLength: 80,),)
          ],
        )
      ),
    );
  }
}