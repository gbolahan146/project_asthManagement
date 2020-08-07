import 'package:asthma_management/views/signup/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/services/responsiveness.dart';

class ProfilePage1 extends StatefulWidget {
  @override
  _ProfilePage1State createState() => _ProfilePage1State();
}

class _ProfilePage1State extends State<ProfilePage1> {
  Color color;
  
  @override
  Widget build(BuildContext context) {
    var value;
    double width = MediaQuery.of(context).size.width;
        var dropdownValue;
                return Scaffold(
                  backgroundColor: Color(0xffE5E5E5),
                  body: GestureDetector(
                    onTap: () => FocusScope.of(context).unfocus(),
                              child: SingleChildScrollView(
                      child: Column(
                          children: <Widget>[
                            Container(
                            color: Colors.white,
                              width: McGyver.rsDoubleW(context, 100),
                              height: McGyver.rsDoubleH(context, 50),
                              child: Padding(
                                padding: const EdgeInsets.only(right:10.0,left: 10.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    SizedBox(height: McGyver.rsDoubleH(context, 2)),
                                    Text('Complete your Profile',
                                    style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff130a38),
                                  fontSize: McGyver.textSize(context, 2.6),),
                                    ),
                                    SizedBox(height: McGyver.rsDoubleH(context, 2)),
                                    Text('To enable us to provide valid health information, please fill in your profile details.',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                  color: Color(0xff30158c),
                                  fontSize: McGyver.textSize(context, 2.1)),
                                    ),
                                    SizedBox(height: McGyver.rsDoubleH(context, 2)),
                                    CircleAvatar(
                                    radius: 70.0,
                                    child: Text('Add Photo',
                                    style: GoogleFonts.dmSans(
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromRGBO(157, 157, 157, 0.9),
                                          fontSize: McGyver.textSize(context, 2)),
                                    ),
                                    backgroundColor: Color(0xffF6F6F6),
                                  ),
            
                                  SizedBox(height: McGyver.rsDoubleH(context, 2)),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      
                                      children: <Widget>[
                                        Text('Hi,',
                                        style: GoogleFonts.dmSans(
                                          fontWeight: FontWeight.normal,
                                          color: Color(0xff0e1633),
                                          fontSize: McGyver.textSize(context, 2.1)),
                                    
                                        ),
                                         SizedBox(width: McGyver.rsDoubleW(context, 0.5)),
                                        Text('Oluwaseun!',
                                        style:GoogleFonts.dmSans(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff0e1633),
                                          fontSize: McGyver.textSize(context, 2.1)),
                                        ),
                                        SizedBox(width: McGyver.rsDoubleW(context, 0.5)),
                                        Text('Let\'s get you Started.',
                                        style: GoogleFonts.dmSans(
                                          fontWeight: FontWeight.normal,
                                          color: Color(0xff0e1633),
                                          fontSize: McGyver.textSize(context, 2.1)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
            
                                  ),
                            Container(
                              color: Color(0xffE5E5E5),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: <Widget>[
        
                                //     Container(
                                //       decoration: BoxDecoration(
                                //         border: Border.all(
                                //           color: Colors.black,
                                //           style: BorderStyle.solid, width: 0.80,
                                //         )
                                //        ),                  
                                //       child: DropdownButton( 
                                //         style: TextStyle(color: Colors.white),
                                //         value: value,
                                //     isExpanded: true,
                                //     underline: SizedBox(),
                                //     hint: Padding(
                                //       padding: const EdgeInsets.only(left:8.0),
                                //       child: Text('Gender',
                                //       style: TextStyle(
                                //         fontSize: 14,
                                //       ),
                                //       ),
                                //     ),
                                //     icon: Padding(
                                //       padding: const EdgeInsets.only(right:8.0),
                                //       child: Icon(
                                //                 Icons.keyboard_arrow_down,
                                //               ),
                                //     ),
                                //     elevation: 0,
                                //     isDense: false,
                                //     items: [
                                //       DropdownMenuItem(
                                //         child: Text("Male"),
                                //         value: 1,
                                //       ),
                                //       DropdownMenuItem(
                                //         child: Text("Female"),
                                //         value: 2,
                                //       ),
                                //       DropdownMenuItem(
                                //         child: Text("prefer not to say"),
                                //         value: 3
                                //       ),
                                //     ],
                                //     onChanged: (value){
                                //       setState(() {
                                //         value = value;
                                //       });
                                //     },
        
                                //   ),
        
                                // ),
                                
                                   DropdownButtonFormField<String>(
                                     decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white))),
                                                          value: dropdownValue,
                                                  style: TextStyle(
                                                      color: Colors.black87),
                                                  items: <String>[
                                                    'Lot 1',
                                                    'Lot 2',
                                                    'Lot 3',
                                                    'Lot 4',
                                                  ].map<
                                                          DropdownMenuItem<
                                                              String>>(
                                                      (String value) {
                                                    return DropdownMenuItem<
                                                        String>(
                                                      value: value,
                                                      child: Text(value),
                                                    );
                                                  }).toList(),
                                                  onChanged: (String newValue) {
                                                    setState(() {
                                                      dropdownValue = newValue;
                                                    });
                                                    }

                                                    
                                                    ),  

                        SizedBox(height: McGyver.rsDoubleH(context, 5)),

                        MaterialButton(
                              minWidth: width,
                              height: McGyver.rsDoubleH(context, 9),
                              color: buttonColor,
                              onPressed: () {},
                              child: Text(
                                'Next',
                                style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: McGyver.textSize(context, 2.5)),
                              ),
                            ),
                            SizedBox(height: McGyver.rsDoubleH(context, 3)),
                         
                      ],
                    ),
        ),
                      ),
              ],
        ),
            ),
          ),
      
    );
  }
}