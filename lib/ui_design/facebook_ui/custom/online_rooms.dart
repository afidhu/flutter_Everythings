
import 'package:flutter/material.dart';

import '../data/models/user_model.dart';

class OnlineRooms extends StatelessWidget {
  final List<UserFb> onlineUser;
  const OnlineRooms({super.key, required this.onlineUser});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: 1+onlineUser.length,
          itemBuilder: (context, index){
            if(index == 0){
            return Padding(
                padding:EdgeInsets.fromLTRB(11, 2, 1, 2),
                    child: _CreateRoomButton(),
            );
            }
            var data = onlineUser[index-1];

            return CircleAvatar(
              backgroundImage: NetworkImage(data.imageUrl),
              child: Stack(
                children: [
                  Positioned(
                      bottom: 26,
                      right: 0,
                      child: Icon(Icons.circle,color: Colors.green,))
                ],
              ),
            );
          }
      ),
    );
  }
}

class _CreateRoomButton extends StatelessWidget {
  const _CreateRoomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: OutlinedButton(onPressed: (){},
          child: Row(
            children: [
              TextButton.icon(onPressed: (){},icon: Icon(Icons.video_call,), label: SizedBox.shrink(),),
              Text('Create \n Room'),
            ],
          )
      ),
    );
  }
}
