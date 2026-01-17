
class Users{
  final String name;
  final String profile_url;
  final String subscribers;

  Users({required this.name, required this.profile_url, required this.subscribers});
}


final Users current_user =Users(
     name:"juma",
     profile_url:"https://avatars.githubusercontent.com/u/170732544?s=400&u=d1125b33dc6edb1d2b763432a7332985e53d2bc2&v=4",
     subscribers :"200k"
 );

class Videos{
  final String id;
  final Users author ;
  final String title;
  final String thumbnail;
  final String duration;
  final DateTime timeStamp;
  final String views_count;
  final String likes;
  final String dislikes;

  Videos({required this.id, required this.author, required this.title, required this.thumbnail, required this.duration, required this.timeStamp, required this.views_count, required this.likes, required this.dislikes});
}

final List<Videos> videosList = [
  Videos(
      id: '1',
      author:current_user,
      title: "wallets",
      thumbnail: "https://w7.pngwing.com/pngs/692/99/png-transparent-hamburger-street-food-seafood-fast-food-delicious-food-salmon-with-vegetables-salad-in-plate-leaf-vegetable-food-recipe-thumbnail.png",
      duration: "10:22",
      timeStamp: DateTime(2021,3,5),
      views_count: "20k",
      likes: "201k",
      dislikes: "30k"
  ),
    Videos(
      id: '2',
      author:current_user,
      title: "wallets",
      thumbnail: "https://w7.pngwing.com/pngs/812/808/png-transparent-dog-food-cat-food-dog-breed-science-diet-dog-food-animals-toy-dog-pet-thumbnail.png",
      duration: "10:22",
      timeStamp: DateTime(2021,3,1),
      views_count: "210k",
      likes: "21k",
      dislikes: "130k"
  ),
    Videos(
      id: '2',
      author:current_user,
      title: "wallets",
      duration: "10:21",
      thumbnail: "https://w7.pngwing.com/pngs/982/297/png-transparent-cat-food-dog-pet-food-cat-thumbnail.png",
      timeStamp: DateTime(2025,3,11),
      views_count: "220k",
      likes: "221k",
      dislikes: "230k"
  ),
    Videos(
      id: '3',
      author:current_user,
      title: "wallets",
      thumbnail: "https://w7.pngwing.com/pngs/598/579/png-transparent-eating-junk-food-hunger-fast-food-junk-food-thumbnail.png",
      duration: "10:32",
      timeStamp: DateTime(2022,3,1),
      views_count: "20k",
      likes: "231k",
      dislikes: "33k"
  ),

  Videos(
      id: '4',
      author:current_user,
      title: "wallets",
      thumbnail: "https://w7.pngwing.com/pngs/598/579/png-transparent-eating-junk-food-hunger-fast-food-junk-food-thumbnail.png",
      duration: "10:32",
      timeStamp: DateTime(2026,3,3),
      views_count: "20k",
      likes: "231k",
      dislikes: "33k"
  ),

  Videos(
      id: '5',
      author:current_user,
      title: "wallets",
      thumbnail: "https://w7.pngwing.com/pngs/598/579/png-transparent-eating-junk-food-hunger-fast-food-junk-food-thumbnail.png",
      duration: "10:32",
      timeStamp: DateTime(2020,3,3),
      views_count: "20k",
      likes: "231k",
      dislikes: "33k"
  ),
];