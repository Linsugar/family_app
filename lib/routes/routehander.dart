import 'package:familyapp/pages/chat/Chatchild.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import '';

//聊天页面
Handler chatchildHander = Handler(
  handlerFunc: (BuildContext context,Map<String, List<String>> parameters){
    return chatChild();
  }
);