import 'package:flutter/material.dart';
import 'profile_pic.dart';
// import 'sign_out_button.dart';
import 'package:muk_connect/screens/user-profile/TabButton.dart';
import 'package:muk_connect/screens/user-profile/TabLabel.dart';
import 'package:url_launcher/url_launcher.dart';

class UserProfileBody extends StatefulWidget {
  @override
  _UserProfileBodyState createState() => _UserProfileBodyState();
}

class _UserProfileBodyState extends State<UserProfileBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Spacer(flex: 1),
          Center(
            child: ProfilePic(),
          ),
          Center(
            child: Text(
              "Ngela Yu",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w800,
                fontSize: 30,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Text(
                "ngela@email.com",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  letterSpacing: 0.5,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Text(
                "+256 778 456783",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  letterSpacing: 0.5,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
          // Spacer(flex: 2),
          // SignOutButton(),
          SizedBox(height: 5.0),
          TabLabel(
              label: 'Get Help',
              color: Colors.white,
              align: Alignment.centerLeft),
          SizedBox(height: 10.0),
          ListButton(
              label: 'Call Help line',
              icon: Icons.phone_forwarded_outlined,
              onTap: () => launch("tel:+256789530574")),
          ListButton(
              label: 'Report a problem',
              icon: Icons.email_outlined,
              onTap: () => launch(
                  "mailto:arnoldrutanana@gmail.com.com?subject=Report%20Problem")),

          ListButton(
              label: 'Send Feedback',
              icon: Icons.feedback_outlined,
              onTap: () =>
                  launch("mailto:arnoldrutanana@gmail.com?subject=Feedback")),
          TabLabel(
            label: 'More',
            color: Colors.white,
            align: Alignment.centerLeft,
          ),
          SizedBox(height: 10.0),
          ListButton(
            label: 'About',
            icon: Icons.help_outline,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
