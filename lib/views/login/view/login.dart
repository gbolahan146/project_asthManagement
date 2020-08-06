import 'package:asthma_management/core/services/responsiveness.dart';
import 'package:asthma_management/views/login/utils/colors.dart';
import 'package:asthma_management/views/login/validators.dart';
import 'package:asthma_management/views/login/widgets/button.dart';
import 'package:asthma_management/views/login/widgets/textfiels.dart';
import 'package:asthma_management/views/login/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool obscure = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  bool autovalidate = false;

  //Obscure password as neede
  void obscurePassword() {
    setState(() {
      obscure = !obscure;
    });
  }

  ///Login Logic
  void submit() {
    var form = _formKey.currentState;
    if (form.validate()) {
      form.save();

      //Login Logic
    }
    setState(() {
      autovalidate = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        child: SvgPicture.asset(
                          'assets/images/asset.svg',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Texts(
                      text: 'Welcome!',
                      textStyle: GoogleFonts.dmSans(
                        color: darkblue,
                        fontSize: McGyver.textSize(context, 3),
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                      )),
                ),
                SizedBox(height: McGyver.rsDoubleH(context, 1)),
                Align(
                  alignment: Alignment.topLeft,
                  child: Texts(
                      textAlign: TextAlign.justify,
                      text:
                          'Managing your asthma doesn’t have to be so hard, Sign in to continue.',
                      textStyle: GoogleFonts.dmSans(
                        color: darkblue,
                        fontSize: McGyver.textSize(context, 2),
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.normal,
                      )),
                ),
                SizedBox(height: McGyver.rsDoubleH(context, 2)),
                TextFields(
                  controller: emailController,
                  validator: Validators.emailValidator,
                  labelText: 'Email Address',
                  inputType: TextInputType.emailAddress,
                  obscure: false,
                ),
                SizedBox(height: McGyver.rsDoubleH(context, 0)),
                TextFields(
                  obscure: obscure,
                  controller: passwordController,
                  validator: Validators.passwordValidator,
                  labelText: 'Password',
                  suffixIcon: IconButton(
                    icon: obscure
                        ? Icon(Icons.remove_red_eye)
                        : Icon(Icons.visibility_off),
                    onPressed: () {
                      obscurePassword();
                    },
                  ),
                  inputType: TextInputType.text,
                ),
                SizedBox(height: McGyver.rsDoubleH(context, 1)),
                Row(
                  children: <Widget>[
                    Spacer(),
                    Texts(
                      text: 'Forgot Password?',
                      textStyle: GoogleFonts.dmSans(
                        color: links,
                        fontSize: McGyver.textSize(context, 2),
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: McGyver.rsDoubleH(context, 2)),
                Buttons(
                  text: 'Login',
                  onPressed: () {
                    submit();
                  },
                ),
                SizedBox(height: McGyver.rsDoubleH(context, 2)),
                RichTexts(
                  textAlign: TextAlign.center,
                  text: 'I am a new User ',
                  textStyle: GoogleFonts.dmSans(
                    color: darkblue,
                    fontSize: McGyver.textSize(context, 1.9),
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.normal,
                  ),
                  extraText: ' Sign up',
                  extraTextStyle: GoogleFonts.dmSans(
                    color: links,
                    fontSize: McGyver.textSize(context, 2),
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                SizedBox(height: McGyver.rsDoubleH(context, 2)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
