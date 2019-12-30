
import 'dart:io';

import 'package:flutter/material.dart';

class CreatePostScreen extends StatefulWidget {
  @override
  _CreatePostScreenState createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {

  _showSelectImageDialog(){
    return Platform.isIOS ? _iosBottomSheet() : _androidDialog();
  }

  _iosBottomSheet(){
    print('ios');
  }

  _androidDialog(){
    print('android');
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Create Post",
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Billabong',
            fontSize: 35.0,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => print('Add'),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          GestureDetector(
            onTap: _showSelectImageDialog,
            child: Container(
              height: width,
              width: width,
              color: Colors.grey[300],
              child: Icon(
                Icons.add_a_photo,
                color: Colors.white70,
                size: 150.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
