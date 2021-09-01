import 'package:flutter_responsivo/model/user.dart';

class Post {
  User user;
  String content;
  String image;
  int comentsCount;

  Post(this.user, this.content, this.image, this.comentsCount);
}
