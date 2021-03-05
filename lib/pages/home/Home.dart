
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }
}

class HomeState extends State<Home>{
  String _imagrurl = 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201901%2F17%2F20190117092809_ffwKZ.thumb.700_0.jpeg&refer=http%3A%2F%2Fb-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1616828490&t=47c56d1e82192312b85a0075b591034e';
  @override
  void initState() {
    // TODO: implement initState

    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text("首页"),),
      body: SingleChildScrollView(
        child: Container(
            width: _size.width,
            height: _size.height,
            child: Flex(direction: Axis.vertical,children: [
              Flexible(flex: 1,child: Container(padding: EdgeInsets.all(5),child:ListView.separated(scrollDirection: Axis.horizontal,itemBuilder: (context,index){
                            return Container(margin: EdgeInsets.all(5),width: _size.width/10,decoration: BoxDecoration(border: Border.all(color: Colors.white,width: 2.0),shape:BoxShape.circle ,
                            boxShadow: [BoxShadow(color: Colors.blue,offset: Offset(0.0,1.0))],image: DecorationImage(image: NetworkImage(_imagrurl))
                            ));
              },itemCount: 20,separatorBuilder: (context,index){
                return SizedBox(width: 10,);
              },))),
              Flexible(flex: 1,child: Container(margin: EdgeInsets.only(left: 10,right: 10),decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all(color: Colors.lightBlue,width: 1.0)),padding: EdgeInsets.only(left: 10,right: 10),width: double.infinity,
                  child:TextField(decoration: InputDecoration(icon: Icon(Icons.search),suffixIcon: Icon(Icons.arrow_drop_down),hintText: '请输入搜索内容'),)),),
              Flexible(flex: 3,child: Container(
                margin: EdgeInsets.only(left: 10,top: 5),
                child: Flex(
                  direction: Axis.vertical,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.only(right: 10),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                          Text("今日热搜"),
                          Text("全部"),
                        ],),
                      ),
                    ),
                    Flexible(
                      flex: 9,
                      child: Swiper(
                      pagination: SwiperPagination(),
                      loop: true,
                      autoplay: true
                      ,itemCount: 10,itemBuilder: (context,index){
                        return Image.network(_imagrurl,fit: BoxFit.cover,);
                      },)
                    )
                  ],
                ),
              )),
              Flexible(flex: 3,child: Container(child:  Flex(
                direction: Axis.vertical,
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.only(left: 10,right: 10),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                        Text("今日看点"),
                        Text("全部"),
                      ],),
                    ),
                  ),
                  Flexible(
                      flex: 8,
                      child: ListView.separated(scrollDirection: Axis.horizontal,itemCount: 10,separatorBuilder: (context,index){
                        return SizedBox(width: 5,);
                      },itemBuilder: (context,index){
                        return Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.green),margin: EdgeInsets.only(left: 10,top: 10,bottom: 10),width: _size.width/1.5,
                          child: Flex(direction: Axis.vertical,children: [
                            Flexible(flex: 6,child: Container(decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(_imagrurl),fit: BoxFit.cover)),),),
                            Flexible(flex: 4,child: Container(color: Colors.blueGrey,child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(margin: EdgeInsets.only(left: 10),child: CircleAvatar(backgroundImage: NetworkImage(_imagrurl),)),
                                Container(
                                  margin: EdgeInsets.only(top: 10,right: 10),
                                  child: Column(children: [
                                    Text("狂野莽夫"),
                                    Text("这是一位狂野莽夫"),
                                  ],),
                                ),
                                Text("点击")
                              ],
                            ),),),
                          ],));
                      },)
                  )
                ],
              ),),),
              Flexible(
                flex: 2,
                child:Container(height: 400,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),margin: EdgeInsets.only(left: 10,right: 10),
                  child: Card(
                    child: Flex(direction: Axis.vertical,children: [
                      Flexible(flex: 2,child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Text("毁灭者"),Text("展示")],),),
                      Flexible(flex: 8,child: Container(child: Flex(
                        direction: Axis.horizontal,
                        children: [
                          Flexible(flex: 5,child: Container(decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(image: NetworkImage(_imagrurl),fit: BoxFit.cover)),)),
                          Flexible(flex:5,child: Container(child: Card(
                            clipBehavior: Clip.none,
                          elevation: 0.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("锐雯"),
                            Text("黑暗之神从黑暗深渊而来"),
                            Text("2021-02-26")
                            ],
                          ),),)),
                        ],
                      ),),),
                    ],),
                  ),)
              ),
            ],)
          ),
      ),
    );
  }
}