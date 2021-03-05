import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'routehander.dart';
class Routes{
  static String chatchild = '/chatchild';

  static void configureRoutes(FluroRouter router){
    router.notFoundHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> parameters){
        print("页面有误");
        return;
      }
    );
    router.define(chatchild, handler: chatchildHander);
  }

}