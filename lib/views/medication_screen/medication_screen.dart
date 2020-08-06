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
          fontSize: 20, color: Color(0xff130A38), fontWeight: FontWeight.bold),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white, // new
        items: [
           BottomNavigationBarItem(
            icon:  Image.asset(
                        'assets/images/home.png',
                        height: 24,
                        width:  24,
                      ),
            title: Text('Home', style: GoogleFonts.dmSans(fontSize: 10,fontWeight: FontWeight.w500, color: Colors.black)),
          ),
           BottomNavigationBarItem(
            icon:  Image.asset(
                        'assets/images/plans.png',
                        height:  24,
                        width: 24,
                      ),
            title: Text('Action plan', style: GoogleFonts.dmSans(fontSize: 10,fontWeight: FontWeight.w500, color: Colors.black)),
          ),
           BottomNavigationBarItem(
            icon:  Image.asset(
                        'assets/images/pills.png',
                        height: 24,
                        width: 24,
                      ),
            title: Text('Medication', style: GoogleFonts.dmSans(fontSize: 10,fontWeight: FontWeight.w500, color: Colors.black),)
          ),
          BottomNavigationBarItem(
            icon:  Image.asset(
                        'assets/images/printer.png',
                        height: 24,
                        width: 24,
                      ),
            title: Text('Peak flow', style: GoogleFonts.dmSans(fontSize: 10,fontWeight: FontWeight.w500, color: Colors.black),)
          ),
          BottomNavigationBarItem(
            icon:  Image.asset(
                        'assets/images/user.png',
                        height: 24,
                        width: 24,
                      ),
            title: Text('Profile', style: GoogleFonts.dmSans(fontSize: 10,fontWeight: FontWeight.w500, color: Colors.black),)
          ),
        ],
      ),
        body: Padding(
          padding: const EdgeInsets.only(left:20.0, right:17),
          child: ListView(
                children: <Widget>[
                  SizedBox(height: 32),
                  Text('Your rescue medication', style: GoogleFonts.dmSans(fontSize: 16, fontWeight: FontWeight.w500,color: Color(0xFF30159C)),),
                  SizedBox(height: 8),
                  Text('Quick-relief medications taken as needed for relief of symptoms',style: GoogleFonts.dmSans(fontSize: 10, color: Color(0xFF000000))),
                  SizedBox(height: 17),
                  Container(
                     padding: EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      border: Border.all(
                color: Color(0xff424242),)
              ),
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 10,),
                        Container(height: 40,
                        width: 30,
                          child: Image(image: AssetImage('assets/images/inhaler1.png', ),)
                          ),
                        SizedBox(width: 20,),
                        Text('Proair HFA', style: GoogleFonts.dmSans(fontSize: 16, color: Color(0xff0E1633), fontWeight: FontWeight.w500)),
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
                        SizedBox(width: 10,),
                       Container(height: 40,
                        width: 30,
                          child: Image(image: AssetImage('assets/images/inhaler2.png', ),)
                          ),
                        SizedBox(width: 20,),
                        Text('Prov', style: GoogleFonts.dmSans(fontSize: 16, color: Color(0xff0E1633), fontWeight: FontWeight.w500)),
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
                        SizedBox(width: 10,),
                       Container(height: 40,
                        width: 30,
                          child: Image(image: AssetImage('assets/images/inhaler3.png', ),)
                          ),
                        SizedBox(width: 20,),
                        Text('Ventolin HFA', style: GoogleFonts.dmSans(fontSize: 16, color: Color(0xff0E1633), fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                  SizedBox(height:27),
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
                                                      fontSize: 12),
                                                  fontWeight: FontWeight.bold),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        
                                      ],
                                    ),
                                  ),
                                ),
                     ],
                   ),
                  SizedBox(height:24),
                   Text('Your controller medication', style: GoogleFonts.dmSans(fontSize: 16, fontWeight: FontWeight.w500,color: Color(0xFF30159C)),),
                  SizedBox(height: 8),
                  Text('Only use when you having trouble breathing ',style: GoogleFonts.dmSans(fontSize: 10, color: Color(0xFF000000))),
                  SizedBox(height: 17),
                   Container(
                      padding: EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      border: Border.all(
                color: Color(0xff424242),)
              ),
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 10,),
                        Container(height: 40,
                        width: 30,
                          child: Image(image: AssetImage('assets/images/inhaler4.png', ),)
                          ),
                        SizedBox(width: 20,),
                        Text('Flovent HFA', style: GoogleFonts.dmSans(fontSize: 16, color: Color(0xff0E1633), fontWeight: FontWeight.w500)),
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
                        SizedBox(width: 10,),
                        Container(height: 40,
                        width: 30,
                          child: Image(image: AssetImage('assets/images/inhaler5.png', ),)
                          ),
                        SizedBox(width: 20,),
                        Text('Advair', style: GoogleFonts.dmSans(fontSize: 16, color: Color(0xff0E1633), fontWeight: FontWeight.w500)),
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
                        SizedBox(width: 10,),
                        Container(height: 40,
                        width: 30,
                          child: Image(image: AssetImage('assets/images/inhaler6.png', ),)
                          ),
                        SizedBox(width: 20,),
                        Text('Flixotide', style: GoogleFonts.dmSans(fontSize: 16, color: Color(0xff0E1633), fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                  SizedBox(height: 27.0,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Material(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Color(0xff130A38),
                                  child: MaterialButton(
                                    // padding: EdgeInsets.all(1),
                                    minWidth: 130,
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
                                                      fontSize: 12),
                                                  fontWeight: FontWeight.bold),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 5,
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

// class BottomNav extends StatelessWidget {
//   BuildContext context;
//     int currentIndex ;
//   BottomNav({@required this.context,this.currentIndex}  );
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//               backgroundColor: Color(0XFF6F2184),
//             currentIndex: currentIndex, // new
//         items: [
//            BottomNavigationBarItem(
//             icon:  Image.asset(
//                         'images/home.png',
//                         height: 24,
//                         width:  24,
//                       ),
//             title: Text('Home', style: GoogleFonts.dmSans(fontSize: 10,fontWeight: FontWeight.w500, color: Colors.black)),
//           ),
//            BottomNavigationBarItem(
//             icon:  Image.asset(
//                         'images/plans.png',
//                         height:  24,
//                         width: 24,
//                       ),
//             title: Text('Action plan', style: GoogleFonts.dmSans(fontSize: 10,fontWeight: FontWeight.w500, color: Colors.black)),
//           ),
//            BottomNavigationBarItem(
//             icon:  Image.asset(
//                         'images/pills.png',
//                         height: 24,
//                         width: 24,
//                       ),
//             title: Text('Medication', style: GoogleFonts.dmSans(fontSize: 10,fontWeight: FontWeight.w500, color: Colors.black),)
//           ),
//           BottomNavigationBarItem(
//             icon:  Image.asset(
//                         'images/printer.png',
//                         height: 24,
//                         width: 24,
//                       ),
//             title: Text('Peak flow', style: GoogleFonts.dmSans(fontSize: 10,fontWeight: FontWeight.w500, color: Colors.black),)
//           ),
//           BottomNavigationBarItem(
//             icon:  Image.asset(
//                         'images/user.png',
//                         height: 24,
//                         width: 24,
//                       ),
//             title: Text('Profile', style: GoogleFonts.dmSans(fontSize: 10,fontWeight: FontWeight.w500, color: Colors.black),)
//           ),
//         ],
//       );
//   }
// }