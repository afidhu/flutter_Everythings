
import 'package:flutter_everythings/ui_design/facebook_ui/data/models/user_model.dart';


class PostFb{
  final UserFb user;
  final String imageUrl;
  final String caption;
  final String timeAgo;
  final int likes;
  final int comments;
  final int shared;

  PostFb({required this.user, required this.imageUrl, required this.caption, required this.timeAgo, required this.likes, required this.comments, required this.shared});

}