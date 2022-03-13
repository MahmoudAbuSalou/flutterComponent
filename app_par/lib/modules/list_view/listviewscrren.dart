import 'package:app_par/models/user/user.dart';
import 'package:flutter/material.dart';

class ListUserScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "User",
            style: TextStyle(fontSize: 30),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.separated(
           physics:BouncingScrollPhysics() ,
              itemBuilder: (context, index) => userInfo(user[index]),
              separatorBuilder: (context, index) =>Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              itemCount: user.length),
        ));
  }

  Widget userInfo(User user) => Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 30,
            child: Center(
              child: Text(
                "${user.id}",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "${user.name}",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "${user.phone}",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      );
}
