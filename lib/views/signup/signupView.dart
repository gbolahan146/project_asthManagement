library signup;

import 'package:asthma_management/core/services/responsiveness.dart';
import 'package:asthma_management/views/signup/colors.dart';
import 'package:asthma_management/views/signup/signupViewModel.dart';
import 'package:asthma_management/widgets/signup_textfield/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';


part 'signupDesktop.dart';
part 'signupMobile.dart';
part 'signupTablet.dart';



class SignUp extends StatelessWidget {
  final SignupViewModel viewModel;

  const SignUp({Key key, this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //responsive builder for various screen types.. Its optional.
    return ScreenTypeLayout(
      mobile: SignupViewMobile(viewModel: viewModel,),
      tablet: SignupViewTablet(viewModel: viewModel,),
      desktop: SignupViewDesktop(viewModel: viewModel,),
    );
  }
}
