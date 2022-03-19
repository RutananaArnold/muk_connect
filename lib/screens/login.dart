import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muk_connect/components/RoundedButton.dart';
import 'package:muk_connect/components/RoundedInputField.dart';
import 'package:muk_connect/components/RoundedPasswordField.dart';
import 'package:muk_connect/screens/index.dart';
import 'package:muk_connect/screens/sign_up.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _shConfirmPass = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var color = Theme.of(context).primaryColor;
    final Color bcolor = Colors.white;
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
              width: size.width,
              height: size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/wallpaper.jpg")))),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  bcolor,
                  color.withOpacity(0.5),
                  color.withOpacity(0.8),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          ListView(
            children: [
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  "MukConnect",
                  style: GoogleFonts.pacifico(fontSize: 30),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              RoundedInputField(
                hintText: "Student Number",
                icon: Icons.mail_outline,
                // field: studentnoController,
                fcolor: Colors.white70,
                onChanged: (value) {},
                validate: (value) {},
              ),
              RoundedPasswordField(
                passwordhint: 'Password',
                // field: passwordController,
                fcolor: Colors.white70,
                validate: (value) {},
                hideText: _shConfirmPass,
                showHide: () {
                  setState(() {
                    _shConfirmPass = !_shConfirmPass;
                  });
                },
              ),
              RoundedButton(
                text: "LOGIN",
                press: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => Index()));
                },
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: InkWell(
                  child: Text(
                    "SIGNUP",
                    style: TextStyle(
                      color: bcolor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => Signup()));
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
