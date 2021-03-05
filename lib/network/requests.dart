import 'package:dio/dio.dart';

class Request{
  static Dio network = new Dio();

  getNetwork({String url,String params})async{
    try{
      var getResult = await network.get(url);
      return getResult.data;
    }catch(e){
      print("get：$e");
    }
  }
  setNetwork(String url,String data)async{
    try{
      var postResult = await network.post(url,data: data);
      return postResult.data;
    }catch(e){
      print("post：$e");
    }

  }
}