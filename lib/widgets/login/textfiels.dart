import 'package:asthma_management/core/services/responsiveness.dart';
import 'package:asthma_management/views/login/loginViewModel.dart';
import 'package:asthma_management/views/login/utils/login_utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFields extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final TextInputType inputType;
  final LoginViewModel loginViewModel;
  final Widget suffixIcon;
  final String Function(String) validator;
  final bool obscure;
  Key key;
  TextFields({
    this.labelText,
    this.controller,
    this.inputType,
    this.suffixIcon,
    this.validator,
    this.obscure,
    this.key,
    this.loginViewModel,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Theme(
        data: ThemeData(
          primaryColor: borderColor,
          hintColor: borderColor,
        ),
        child: Container(
          //  width: McGyver.rsDoubleW(context, 95),
          //height: McGyver.rsDoubleH(context, 9.7),
          child: TextFormField(
            style: GoogleFonts.poppins(color: textfieldColor),
            controller: controller,
            keyboardType: inputType,
            validator: validator,
            obscureText: obscure,
            decoration: InputDecoration(
              labelText: labelText,
              filled: true,
              fillColor: white,
              suffixIcon: labelText == 'Password' ? suffixIcon : SizedBox(),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderColor,
                ),
              ),
              border: OutlineInputBorder(),
              labelStyle: GoogleFonts.poppins(
                color: textfieldColor,
                fontSize: McGyver.textSize(context, 2),
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
