import 'package:flutter/material.dart';
import 'package:instagram_clone/models/user_model.dart';

class EditProfileScreen extends StatefulWidget {

  final User user;

  EditProfileScreen({this.user});

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Edit Profile'
        ),
      ),
    );
  }
}
