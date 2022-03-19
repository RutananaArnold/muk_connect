import 'package:flutter/material.dart';
import 'package:muk_connect/components/TextFieldContainer.dart';
import 'package:muk_connect/palette.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final String passwordhint;
  final ValueChanged<String> validate;
  final TextEditingController field;
  final Color fcolor;
  final bool hideText;
  final Function showHide;

  const RoundedPasswordField({
    Key key,
    this.onChanged,
    this.passwordhint,
    this.validate,
    this.field,
    this.fcolor = Colors.black12,
    this.hideText = true,
    this.showHide,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      fcolor: fcolor,
      child: TextFormField(
        obscureText: hideText,
        onChanged: onChanged,
        cursorColor: kappPrimary,
        decoration: InputDecoration(
          hintText: passwordhint,
          hintStyle: TextStyle(
            color: kappColorDark,
          ),
          icon: Icon(
            Icons.lock_outlined,
            color: iconColor,
          ),
          suffixIcon: IconButton(
            onPressed: showHide,
            icon: Icon(
              hideText
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
            ),
            color: iconColor,
          ),
          border: InputBorder.none,
        ),
        validator: validate,
        controller: field,
      ),
    );
  }
}
