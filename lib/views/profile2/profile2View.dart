library profile2;

import 'package:asthma_management/core/services/responsiveness.dart';
import 'package:asthma_management/views/profile2/profile2ViewModel.dart';
import 'package:asthma_management/views/signup/colors.dart';
import 'package:asthma_management/widgets/signup_textfield/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';


part 'profile2Desktop.dart';
part 'profile2Mobile.dart';
part 'profile2Tablet.dart';



class Profile2 extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<Profile2ViewModel>(context);
    return ScreenTypeLayout(
      mobile: Profile2ViewMobile(viewModel: viewModel,),
      tablet: Profile2ViewTablet(viewModel: viewModel,),
      desktop: Profile2ViewDesktop(viewModel: viewModel,),
    );
  }
}
