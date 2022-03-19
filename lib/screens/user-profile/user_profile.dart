import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'user_profile_body.dart';
import 'package:cached_network_image/cached_network_image.dart';

class UserInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    var color = Theme.of(context).primaryColor;
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: Text(
          "User Profile",
          style: GoogleFonts.pacifico(fontSize: 20),
        ),
        actions: [
          IconButton(
            tooltip: "Add Blog",
            onPressed: () {},
            icon: Icon(Icons.add_box_rounded, size: 40),
          ),
          IconButton(
            tooltip: "Settings",
            onPressed: () {},
            icon: Icon(Icons.more_vert_rounded, size: 40),
          ),
        ],
      ),
      body: Stack(
        children: [
          CachedNetworkImage(
            imageUrl:
                "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8dXNlcnxlbnwwfDF8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60",
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  color,
                  color.withOpacity(0.8),
                  color.withOpacity(0.5),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),

          ///Body
          UserProfileBody(),
        ],
      ),
    );
  }
}
