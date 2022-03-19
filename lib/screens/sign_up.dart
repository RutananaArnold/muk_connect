import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muk_connect/components/RoundedButton.dart';
import 'package:muk_connect/components/RoundedInputField.dart';
import 'package:muk_connect/components/RoundedPasswordField.dart';
import 'package:muk_connect/components/TabLabel.dart';
import 'package:muk_connect/palette.dart';
import 'package:muk_connect/screens/login.dart';
import 'package:flushbar/flushbar.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var color = Theme.of(context).primaryColor;
    return Scaffold(
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
                  color,
                  color.withOpacity(0.6),
                  color.withOpacity(0.3),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          SignupBody(),
        ],
      ),
    );
  }
}

class SignupBody extends StatefulWidget {
  @override
  _SignupBodyState createState() => _SignupBodyState();
}

class _SignupBodyState extends State<SignupBody> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController fnameController = new TextEditingController();
  final TextEditingController lnameController = new TextEditingController();
  final TextEditingController studentnoController = new TextEditingController();
  final TextEditingController passController = new TextEditingController();
  final TextEditingController passConfController = new TextEditingController();

  bool _isLoading = false;
  bool _shPassword = true;
  bool _shConfirmPass = true;
  String tel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView(
        children: [
          Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(height: 20.0),
                Text(
                  "MukConnect",
                  style: GoogleFonts.pacifico(fontSize: 30),
                ),
                SizedBox(height: 5.0),
                TabLabel(
                  label: 'Registration Form',
                  color: Colors.green,
                ),
                SizedBox(height: 10.0),
                sectionA(),
                SizedBox(height: 10.0),
                sectionB(),
                SizedBox(height: 10.0),
                sectionC(),
                SizedBox(height: 10.0),
                registerButton(),
              ],
            ),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: InkWell(
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (BuildContext context) => Login(),
                      ),
                      (Route<dynamic> route) => false);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  //UI Components
  sectionA() {
    return Column(
      children: [
        RoundedInputField(
          hintText: "Firstname",
          field: fnameController,
          fcolor: Colors.white70,
          onChanged: (value) {},
          validate: (value) {},
        ),
        RoundedInputField(
          hintText: "Lastname",
          field: lnameController,
          fcolor: Colors.white70,
          onChanged: (value) {},
          validate: (value) {},
        ),
      ],
    );
  }

  sectionB() {
    return Column(
      children: [
        RoundedInputField(
          hintText: "Student Number",
          field: studentnoController,
          fcolor: Colors.white70,
          icon: Icons.mail_outline,
          onChanged: (value) {},
          validate: (value) {},
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 2),
          margin: EdgeInsets.symmetric(vertical: 10),
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(29),
          ),
          child: IntlPhoneField(
            decoration: InputDecoration(
              hintText: 'Mobile Number',
              hintStyle: TextStyle(
                color: kappColorDark,
              ),
              border: InputBorder.none,
            ),
            initialCountryCode: 'UG',
            onChanged: (phone) {
              tel = phone.completeNumber;
            },
          ),
        ),
      ],
    );
  }

  sectionC() {
    return Column(
      children: [
        RoundedPasswordField(
          passwordhint: 'Password',
          field: passController,
          fcolor: Colors.white70,
          validate: (value) {},
          hideText: _shPassword,
          showHide: () {
            setState(() {
              _shPassword = !_shPassword;
            });
          },
        ),
        RoundedPasswordField(
          passwordhint: 'Confirm Password',
          field: passConfController,
          fcolor: Colors.white70,
          validate: (value) {},
          hideText: _shConfirmPass,
          showHide: () {
            setState(() {
              _shConfirmPass = !_shConfirmPass;
            });
          },
        ),
      ],
    );
  }

  //LogicTrigger
  registerButton() {
    return _isLoading
        ? Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(kappSuccess),
            ),
          )
        : RoundedButton(
            text: "SIGNUP",
            color: Colors.red,
            press: () {
              if (fnameController.text == '' ||
                  lnameController.text == '' ||
                  studentnoController.text == '' ||
                  tel == '' ||
                  passController.text == '' ||
                  passConfController.text == '') {
                Flushbar(
                  message: "Empty field/s found!",
                  icon: Icon(Icons.info_outline, size: 25.0, color: Colors.red),
                  duration: Duration(seconds: 3),
                  leftBarIndicatorColor: Colors.red,
                )..show(context);
              } else {
                //phoneno check + email check missing
                if (passController.text != passConfController.text) {
                  Flushbar(
                    message: "Passwords do not match",
                    icon:
                        Icon(Icons.info_outline, size: 25.0, color: Colors.red),
                    duration: Duration(seconds: 3),
                    leftBarIndicatorColor: Colors.red,
                  )..show(context);
                } else {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (BuildContext context) => Login(),
                      ),
                      (Route<dynamic> route) => false);
                }
              }
            },
          );
  }
}
