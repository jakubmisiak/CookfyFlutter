import 'package:flutter/material.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({Key? key}) : super(key: key);

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {

  String? title, description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Text("Cook", style: TextStyle(fontSize: 22)),
          Text("Fy", style: TextStyle(fontSize: 22, color: Colors.green)),
        ]),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
          )
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(6)
              ),
              width: MediaQuery.of(context).size.width,
              child: Icon(Icons.add_a_photo, color: Colors.black,),
            ),
            SizedBox(height: 8,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(hintText: "Title"),
                    onChanged: (val){
                      title = val;
                    },
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "Description"),
                    onChanged: (val){
                      description = val;
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
