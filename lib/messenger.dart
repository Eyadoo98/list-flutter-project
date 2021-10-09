import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Messenger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 25.0,
              backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdlFLI-FaZQRtAtX9MFwA-F1xPaZ8o6Oi5oA&usqp=CAU"),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              "Chats",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.camera_alt,
                  size: 20.0,
                  color: Colors.white,
                ),
              )),
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.edit,
                  size: 20.0,
                  color: Colors.white,
                ),
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(20.0)
                ),
                // color: Colors.grey,
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(width: 7.0,),
                    Text("Search"),
                  ],
                ),
              ),
            ),
            Container(
              height: 90.0,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (
                    context,index){
                  return buildStoryItem();
                },
                separatorBuilder: (context , index){
                  return SizedBox(
                    width: 10.0,
                  );
                },
                itemCount: 25,
              ),
            ),
            SizedBox(height: 10.0,),
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context , index){
                  return buildChatItem();
                },
                separatorBuilder: (context , index){
                  return SizedBox(height: 10.0);
                },
              itemCount: 50)
          ],
        ),
      ),
    );
  }
  Widget buildChatItem(){
      return   Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Stack(
              alignment:AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 25.0,
                  backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAZKbK1zbus84BKn58kBKvJPjqjacsksHB1g&usqp=CAU"),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(bottom: 4.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 7.0,
                  ),
                ),
              ],
            ),
            SizedBox(width: 6.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Eyad aAlsahOory" , style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),maxLines: 1,overflow: TextOverflow.ellipsis,),
                Row(
                  children: [
                    Text("Hello My Name Is Ahmad AlsahOory",maxLines: 1,overflow: TextOverflow.ellipsis,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Container(
                        width: 7.0,
                        height: 7.0,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
                Text("02:00 pm"),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Container(
                        width: 7.0,
                        height: 7.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
  }
  Widget buildStoryItem(){
    return  Container(
      width: 50.0,
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 27.0,
                backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAZKbK1zbus84BKn58kBKvJPjqjacsksHB1g&usqp=CAU"),
              ),
              // CircleAvatar(
              //   radius: 9.0,
              //   backgroundColor: Colors.white,
              // ),
              CircleAvatar(
                radius: 8.0,
                backgroundColor: Colors.green,
              ),
            ],
          ),
          SizedBox(height: 7.0,),
          Text("Eyad Jafar",maxLines: 1,overflow: TextOverflow.ellipsis,),

        ],
      ),
    );
  }
}
