import 'package:asthma_management/core/services/responsiveness.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MedicationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Medications', style: GoogleFonts.dmSans(
          fontSize: McGyver.textSize(context, 4), color: Color(0xff130A38), fontWeight: FontWeight.bold),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white, // new
        items: [
           BottomNavigationBarItem(
            icon:  Image.asset(
                        'assets/images/home.png',
                        height: McGyver.rsDoubleH(context, 5),
                        width: McGyver.rsDoubleW(context, 8),
                      ),
            title: Text('Home', style: GoogleFonts.dmSans(fontSize: McGyver.textSize(context, 1.8),fontWeight: FontWeight.w500, color: Colors.black)),
          ),
           BottomNavigationBarItem(
            icon:  Image.asset(
                        'assets/images/plans.png',
                        height: McGyver.rsDoubleH(context, 5),
                        width: McGyver.rsDoubleW(context, 8),
                      ),
            title: Text('Action plan', style: GoogleFonts.dmSans(fontSize: McGyver.textSize(context, 1.8),fontWeight: FontWeight.w500, color: Colors.black)),
          ),
           BottomNavigationBarItem(
            icon:  Image.asset(
                        'assets/images/pills.png',
                       height: McGyver.rsDoubleH(context, 5),
                        width: McGyver.rsDoubleW(context, 8),
                      ),
            title: Text('Medication', style: GoogleFonts.dmSans(fontSize: McGyver.textSize(context, 1.8),fontWeight: FontWeight.w500, color: Colors.black),)
          ),
          BottomNavigationBarItem(
            icon:  Image.asset(
                        'assets/images/printer.png',
                        height: McGyver.rsDoubleH(context, 5),
                        width: McGyver.rsDoubleW(context, 8),
                      ),
            title: Text('Peak flow', style: GoogleFonts.dmSans(fontSize: McGyver.textSize(context, 1.8),fontWeight: FontWeight.w500, color: Colors.black),)
          ),
          BottomNavigationBarItem(
            icon:  Image.asset(
                        'assets/images/user.png',
                        height: McGyver.rsDoubleH(context, 5),
                        width: McGyver.rsDoubleW(context, 8),
                      ),
            title: Text('Profile', style: GoogleFonts.dmSans(fontSize: McGyver.textSize(context, 1.8),fontWeight: FontWeight.w500, color: Colors.black),)
          ),
        ],
      ),
        body: Padding(
          padding: const EdgeInsets.only(left:20.0, right:17),
          child: ListView(
                children: <Widget>[
                  SizedBox(height: McGyver.rsDoubleH(context, 3)),
                  Text('Your rescue medication', style: GoogleFonts.dmSans(fontSize: McGyver.textSize(context, 2.5), fontWeight: FontWeight.w500,color: Color(0xFF30159C)),),
                  SizedBox(height: McGyver.rsDoubleH(context, 1.5)),
                  Text('Quick-relief medications taken as needed for relief of symptoms',style: GoogleFonts.dmSans(fontSize: McGyver.textSize(context, 1.4), color: Color(0xFF000000))),
                  SizedBox(height: McGyver.rsDoubleH(context, 2)),
                  Container(
                     padding: EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      border: Border.all(
                color: Color(0xff424242),)
              ),
                    child: Row(
                      children: <Widget>[
                         SizedBox(width: McGyver.rsDoubleW(context, 3),),
                        Container(height: McGyver.rsDoubleH(context, 6),
                        width: McGyver.rsDoubleW(context,9),
                          child: Image(image: AssetImage('assets/images/inhaler1.png', ),)
                          ),
                        SizedBox(width: McGyver.rsDoubleW(context, 6),),
                        Text('Proair HFA', style: GoogleFonts.dmSans(fontSize: McGyver.textSize(context, 2.5), color: Color(0xff0E1633), fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                            border: Border(
          right: BorderSide(color: Color(0xff424242)),
          left: BorderSide(color: Color(0xff424242)),
      ),
              ),
                    child: Row(
                      children: <Widget>[
                         SizedBox(width: McGyver.rsDoubleW(context, 3),),
                       Container(height: McGyver.rsDoubleH(context, 6),
                        width: McGyver.rsDoubleW(context,9),
                          child: Image(image: AssetImage('assets/images/inhaler2.png', ),)
                          ),
                        SizedBox(width: McGyver.rsDoubleW(context, 6),),
                        Text('Prov', style: GoogleFonts.dmSans(fontSize: McGyver.textSize(context, 2.5), color: Color(0xff0E1633), fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                  Container(
                     padding: EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      border: Border.all(
                color: Color(0xff424242),)
              ),
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: McGyver.rsDoubleW(context, 3),),
                       Container(height: McGyver.rsDoubleH(context, 6),
                        width: McGyver.rsDoubleW(context,9),
                          child: Image(image: AssetImage('assets/images/inhaler3.png', ),)
                          ),
                        SizedBox(width: McGyver.rsDoubleW(context, 6),),
                        Text('Ventolin HFA', style: GoogleFonts.dmSans(fontSize: McGyver.textSize(context, 2.5), color: Color(0xff0E1633), fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                  SizedBox(height: McGyver.rsDoubleH(context, 3)),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: <Widget>[
                       Material(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Color(0xff130A38),
                                  child: MaterialButton(
                                     padding: EdgeInsets.all(10),
                                    onPressed: null,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Column(children: <Widget>[
                                          Icon(
                                            Icons.add,
                                            size: 15,
                                            color: Colors.white,
                                          ),
                                        ]),
                                        Column(
                                          children: <Widget>[
                                            Text(
                                              "Add rescue medications",
                                              style: GoogleFonts.dmSans(
                                                  textStyle: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: McGyver.textSize(context, 1.7)),
                                                  fontWeight: FontWeight.bold),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                     ],
                   ),
                  SizedBox(height: McGyver.rsDoubleH(context, 2)),
                   Text('Your controller medication', style: GoogleFonts.dmSans(fontSize: McGyver.textSize(context, 2.5), fontWeight: FontWeight.w500,color: Color(0xFF30159C)),),
                  SizedBox(height: McGyver.rsDoubleH(context, 1.5)),
                  Text('Only use when you having trouble breathing ',style: GoogleFonts.dmSans(fontSize: McGyver.textSize(context, 1.4), color: Color(0xFF000000))),
                  SizedBox(height: McGyver.rsDoubleH(context, 2)),
                   Container(
                      padding: EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      border: Border.all(
                color: Color(0xff424242),)
              ),
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: McGyver.rsDoubleW(context, 3),),
                        Container(height: McGyver.rsDoubleH(context, 6),
                        width: McGyver.rsDoubleW(context,9),
                          child: Image(image: AssetImage('assets/images/inhaler4.png', ),)
                          ),
                        SizedBox(width: McGyver.rsDoubleW(context, 6),),
                        Text('Flovent HFA', style: GoogleFonts.dmSans(fontSize: McGyver.textSize(context, 2.5), color: Color(0xff0E1633), fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                  Container(
                     padding: EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                     border: Border(
          right: BorderSide(color: Color(0xff424242)),
          left: BorderSide(color: Color(0xff424242)),
      ),
              ),
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: McGyver.rsDoubleW(context, 3),),
                        Container(height: McGyver.rsDoubleH(context, 6),
                        width: McGyver.rsDoubleW(context,9),
                          child: Image(image: AssetImage('assets/images/inhaler5.png', ),)
                          ),
                        SizedBox(width: McGyver.rsDoubleW(context, 6),),
                        Text('Advair', style: GoogleFonts.dmSans(fontSize: McGyver.textSize(context, 2.5), color: Color(0xff0E1633), fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                  Container(
                     padding: EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      border: Border.all(
                color: Color(0xff424242),)
              ),
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: McGyver.rsDoubleW(context, 3),),
                        Container(height: McGyver.rsDoubleH(context, 6),
                        width: McGyver.rsDoubleW(context,9),
                          child: Image(image: AssetImage('assets/images/inhaler6.png', ),)
                          ),
                        SizedBox(width: McGyver.rsDoubleW(context, 6),),
                        Text('Flixotide', style: GoogleFonts.dmSans(fontSize: McGyver.textSize(context, 2.5), color: Color(0xff0E1633), fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                  SizedBox(height: McGyver.rsDoubleH(context, 3)),
                         Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: <Widget>[
                       Material(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Color(0xff130A38),
                                  child: MaterialButton(
                                     padding: EdgeInsets.all(10),
                                    onPressed: null,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Column(children: <Widget>[
                                          Icon(
                                            Icons.add,
                                            size: 15,
                                            color: Colors.white,
                                          ),
                                        ]),
                                        Column(
                                          children: <Widget>[
                                            Text(
                                              "Add controller medications",
                                              style: GoogleFonts.dmSans(
                                                  textStyle: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: McGyver.textSize(context, 1.7)),
                                                  fontWeight: FontWeight.bold),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                        
                                        
                                      ],
                                    ),
                                  ),
                                ),
                     ],
                   ),

                ],
            ),
        ),
      );
  }
}
