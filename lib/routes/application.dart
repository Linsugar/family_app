import 'package:fluro/fluro.dart';
//静态化，然后就可以用Application.router来引用 FluroRouter 对象，注意  1.5版本时Router，现在改成了FluroRouter
class Application{
  static FluroRouter router;
}
