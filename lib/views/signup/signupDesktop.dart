part of signup;

class SignupViewDesktop extends StatelessWidget {
  final SignupViewModel viewModel;

  const SignupViewDesktop({Key key, this.viewModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  // color: Colors.red,
                  width: McGyver.rsDoubleW(context, 70),
                  height: McGyver.rsDoubleH(context, 30),
                  child: SvgPicture.asset(
                    'assets/images/signup.svg',
                    fit: BoxFit.contain,
                    alignment: Alignment.centerRight,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: McGyver.rsDoubleW(context, 7)),
                child: Text(
                  'Welcome!',
                  style: GoogleFonts.dmSans(
                      color: welcomeTextColor,
                      fontSize: McGyver.textSize(context, 3),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: McGyver.rsDoubleW(context, 7)),
                child: Text(
                  'Signup to get started.',
                  style: GoogleFonts.dmSans(
                      color: Color.fromRGBO(19, 10, 56, 0.8),
                      fontSize: McGyver.textSize(context, 2),
                      fontWeight: FontWeight.normal),
                ),
              ),
              SizedBox(height: McGyver.rsDoubleH(context, 8)),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: McGyver.rsDoubleW(context, 7)),
                child: SignupTextField(
                  viewModel: viewModel,
                  text: 'Name',
                  obscure: false,
                ),
              ),
              SizedBox(height: McGyver.rsDoubleH(context, 4)),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: McGyver.rsDoubleW(context, 7)),
                child: SignupTextField(
                  viewModel: viewModel,
                  text: 'Email Address',
                  obscure: false,
                ),
              ),
              SizedBox(height: McGyver.rsDoubleH(context, 4)),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: McGyver.rsDoubleW(context, 7)),
                child: SignupTextField(
                  viewModel: viewModel,
                  text: 'Password',
                ),
              ),
              SizedBox(height: McGyver.rsDoubleH(context, 4)),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: McGyver.rsDoubleW(context, 7)),
                child: MaterialButton(
                  minWidth: width,
                  height: McGyver.rsDoubleH(context, 9),
                  color: buttonColor,
                  onPressed: () {},
                  child: Text(
                    'Sign up',
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: McGyver.textSize(context, 2.5)),
                  ),
                ),
              ),
              SizedBox(height: McGyver.rsDoubleH(context, 4)),
              Center(
                child: RichText(
                  text: TextSpan(
                      text: 'I am an existing user,',
                      style: GoogleFonts.dmSans(
                          fontSize: McGyver.textSize(context, 2),
                          color: Color(0xff332f2f)),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Sign in',
                          style: GoogleFonts.dmSans(
                              fontSize: McGyver.textSize(context, 2.4),
                              fontWeight: FontWeight.bold,
                              color: welcomeTextColor),
                          // recognizer: TapGestureRecognizer()
                          // ..onTap = () {
                          //   // navigate to desired screen
                          // }
                        )
                      ]),
                ),
              )
            ],
          ),
        ));
  }
}
