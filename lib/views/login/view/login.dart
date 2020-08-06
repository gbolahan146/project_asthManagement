import 'package:asthma_management/core/services/responsiveness.dart';
import 'package:asthma_management/views/home/homeView.dart';
import 'package:asthma_management/views/login/loginViewModel.dart';
import 'package:asthma_management/views/login/utils/login_utils.dart';
import 'package:asthma_management/views/login/validators.dart';
import 'package:asthma_management/views/signup/signupView.dart';
import 'package:asthma_management/widgets/login/button.dart';
import 'package:asthma_management/widgets/login/textfiels.dart';
import 'package:asthma_management/widgets/login/texts.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LogIn extends StatefulWidget {
  final LoginViewModel loginViewModel;

  const LogIn({Key key, this.loginViewModel}) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<LoginViewModel>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: McGyver.rsDoubleW(context, 7)),
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
                        child: Image.asset(
                          'assets/images/asset.png',
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
                  loginViewModel: viewModel,
                  controller: emailController,
                  validator: Validators.emailValidator,
                  labelText: 'Email Address',
                  inputType: TextInputType.emailAddress,
                  obscure: false,
                ),
                SizedBox(height: McGyver.rsDoubleH(context, 0)),
                TextFields(
                  loginViewModel: viewModel,
                  obscure: obscure,
                  controller: passwordController,
                  validator: Validators.passwordValidator,
                  labelText: 'Password',
                  suffixIcon: IconButton(
                    icon: obscure
                        ? Icon(Icons.visibility_off)
                        : Icon(Icons.remove_red_eye),
                    onPressed: () {
                      obscurePassword();
                    },
                  ),
                  inputType: TextInputType.name,
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
                viewModel.buttonStates == ButtonStates.Idle
                    ? Buttons(
                        text: 'Login',
                        onPressed: () {
                          final form = _formKey.currentState;
                          if (form.validate()) {
                            print(emailController.text);
                            form.save();
                            viewModel
                                .login(emailController.text,
                                    passwordController.text)
                                .then((value) {
                              if (value != null) {
                                Future.delayed(Duration(seconds: 3), () {
                                  Get.off(Home());
                                });
                              }
                            });
                          }
                        },
                      )
                    : SpinKitThreeBounce(
                        color: darkblue,
                        size: 30,
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
                  tapGestureRecognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Get.to(SignUp());
                    },
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
