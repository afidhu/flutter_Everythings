
import 'package:flutter_everythings/ui_design/facebook_ui/data/models/story_model.dart';
import 'package:flutter_everythings/ui_design/facebook_ui/data/models/user_model.dart';

import 'models/post_model.dart';

final UserFb currentUser = UserFb(
    name: "afidhu",
    imageUrl: "https://avatars.githubusercontent.com/u/170732544?v=4"
);

final List<UserFb> onlineUsers = [
  UserFb(
      name: "amina",
      imageUrl: 'https://plus.unsplash.com/premium_photo-1671656349322-41de944d259b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D'
  ) ,


  UserFb(
      name: "asha",
    imageUrl: "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D"
  ),

    UserFb(
      name: "peter",
      imageUrl: 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dXNlcnxlbnwwfHwwfHx8MA%3D%3D'
  ),

    UserFb(
      name: "ashura",
      imageUrl: "https://plus.unsplash.com/premium_photo-1683121366070-5ceb7e007a97?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D"
  ),

    UserFb(
      name: "berno",
      imageUrl: "https://images.unsplash.com/photo-1560250097-0b93528c311a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D"
  ),

    UserFb(
      name: "alex",
      imageUrl: "https://images.unsplash.com/photo-1639149888905-fb39731f2e6c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8dXNlcnxlbnwwfHwwfHx8MA%3D%3D"
  ),

    UserFb(
      name: "hassani",
      imageUrl: "https://plus.unsplash.com/premium_photo-1670071482460-5c08776521fe?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D"
  ),

    UserFb(
      name: "juma",
      imageUrl: "https://images.unsplash.com/flagged/photo-1573740144655-bbb6e88fb18a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHVzZXJ8ZW58MHx8MHx8fDA%3D"
  ),


];



final List<StoryFb> stories = [
  StoryFb(
      user:onlineUsers[0],
      imageUrl:"https://images.unsplash.com/photo-1619895862022-09114b41f16f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fHVzZXJ8ZW58MHx8MHx8fDA%3D",
      isViewed:true,
  ),

    StoryFb(
      user:onlineUsers[1],
      imageUrl: "https://plus.unsplash.com/premium_photo-1664541336896-b3d5f7dec9a3?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fHVzZXJ8ZW58MHx8MHx8fDA%3D",
      isViewed:true,
  ),

    StoryFb(
      user:onlineUsers[2],
      imageUrl: "https://images.unsplash.com/photo-1678286742832-26543bb49959?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fHVzZXJ8ZW58MHx8MHx8fDA%3D",
      isViewed:true,
  ),

    StoryFb(
      user:onlineUsers[3],
imageUrl: "https://media.istockphoto.com/id/2207541639/photo/young-professional-working-on-laptop-in-modern-office-setting.webp?a=1&b=1&s=612x612&w=0&k=20&c=EC_7jC-JsoyqQhouSSdc_oAqvwu_ncUkzaGt8TtFPBE=",
      isViewed:true,
  ),

    StoryFb(
      user:onlineUsers[4],
      imageUrl: "https://media.istockphoto.com/id/2225180106/photo/young-man-using-smartphone-at-home-smiling-and-looking-at-screen.webp?a=1&b=1&s=612x612&w=0&k=20&c=ePDZVbkMZBRk4ka5lRQEXsT6vwmO9LolLc1TMWlAZ7U=",
      isViewed:true,
  ),

    StoryFb(
      user:onlineUsers[5],
      imageUrl: 'https://media.istockphoto.com/id/2231675014/photo/happy-mature-woman-using-smartphone-and-drinking-coffee-in-kitchen.webp?a=1&b=1&s=612x612&w=0&k=20&c=OYBJdAvigMXsxF5AtsvpVd5cQB6L1-gyT7Jl5gEIUdw=',
      isViewed:true,
  ),

];

final List<PostFb> posts_fb =[
  PostFb(
      user: currentUser,
      imageUrl: "https://images.unsplash.com/photo-1600596542815-ffad4c1539a9?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8aG91c2V8ZW58MHx8MHx8fDA%3D",
      caption: 'caption is fine',
      timeAgo: "30min",
      likes: 2021,
      comments: 332,
      shared: 4546
  ),

  PostFb(
      user: onlineUsers[1],
      imageUrl: "https://plus.unsplash.com/premium_photo-1689609950112-d66095626efb?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aG91c2V8ZW58MHx8MHx8fDA%3D",
      caption: "ok fine ok",
      timeAgo: "40min",
      likes: 22,
      comments: 77,
      shared: 07
  ),

  PostFb(
      user: onlineUsers[4],
      imageUrl: "https://images.unsplash.com/file-1705123271268-c3eaf6a79b21image?w=416&dpr=2&auto=format&fit=crop&q=60",
      caption: "hahaha fine",
      timeAgo: "90min",
      likes: 44,
      comments: 66,
      shared: 77
  ),

  PostFb(
      user: onlineUsers[2],
      imageUrl: "https://plus.unsplash.com/premium_photo-1661915661139-5b6a4e4a6fcc?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8aG91c2V8ZW58MHx8MHx8fDA%3D",
      caption: "ok come abcl",
      timeAgo: "4min",
      likes: 21,
      comments: 222,
      shared: 312
  ),

  PostFb(
      user: onlineUsers[0],
      imageUrl: "https://images.unsplash.com/photo-1598228723793-52759bba239c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8aG91c2V8ZW58MHx8MHx8fDA%3D",
      caption: "ok there",
      timeAgo: "20min",
      likes: 31,
      comments: 13,
      shared: 321
  ),

  PostFb(
      user: onlineUsers[3],
      imageUrl: "https://plus.unsplash.com/premium_photo-1661962841993-99a07c27c9f4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aG91c2V8ZW58MHx8MHx8fDA%3D",
      caption: "ok hey",
      timeAgo: "20min",
      likes: 323,
      comments: 33,
      shared: 11
  ),

  PostFb(
      user: onlineUsers[5],
      imageUrl: "https://media.istockphoto.com/id/2198966747/photo/couple-closing-real-estate-contract-with-real-estate-agent.webp?a=1&b=1&s=612x612&w=0&k=20&c=MRupwwS_sR21cACmOIEPxd5ykbXbZsxLoc_oKUsaNhc=",
      caption: "baba come",
      timeAgo: "35min",
      likes: 434,
      comments: 444,
      shared: 242
  ),


];