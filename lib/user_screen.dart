import 'dart:developer';

import 'package:flutter/material.dart';

class UserModel{
  final int id;
  final String name , phone;

  UserModel({
     @required this.id = 0,
     @required this.name = "",
     @required this.phone = "",
  });
}

class UsersScreen extends StatelessWidget {

  List<UserModel> users = [
    UserModel(
      id : 1,
      name: "Eyad",
      phone: "078017726545"
    ),
    UserModel(
        id : 2,
        name: "Ahmad",
        phone: "0799949035"
    ),
    UserModel(
        id : 3,
        name: "Ali",
        phone: "0785485982"
    ),
    UserModel(
        id : 4,
        name: "Khaled",
        phone: "078017726545"
    ),
    UserModel(
        id : 5,
        name: "Samer",
        phone: "0799949035"
    ),
    UserModel(
        id : 6,
        name: "mohammed",
        phone: "0785485982"
    ),
    UserModel(
        id : 7,
        name: "Eyad",
        phone: "078017726545"
    ),
    UserModel(
        id : 8,
        name: "Ayoub",
        phone: "0799949035"
    ),
    UserModel(
        id : 9,
        name: "Tamer",
        phone: "0785485982"
    ),
    UserModel(
        id : 10,
        name: "Eyad",
        phone: "078017726545"
    ),
    UserModel(
        id : 11,
        name: "Ahmad",
        phone: "0799949035"
    ),
    UserModel(
        id : 12,
        name: "Ali",
        phone: "0785485982"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
            itemBuilder: (context,index){
              return buildUserItem(users[index]);
        }, separatorBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 2.0,
                color: Colors.grey[300],
              ),
            );
        }
      , itemCount: users.length) ,
      ),
    );
  }
  Widget buildUserItem(UserModel user){
    return Row(
      children: [
        CircleAvatar(
          radius: 25.0,
          child: Text("${user.id}",
            style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
        ),
        SizedBox(width: 20.0,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("${user.name}",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
            Text("${user.phone}",style: TextStyle(color: Colors.grey),)
          ],
        ),
      ],
    );
  }
}
