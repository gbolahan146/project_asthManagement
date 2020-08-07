import 'package:asthma_management/core/services/responsiveness.dart';
import 'package:asthma_management/views/signup/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController _pageController;
  int _page = 0;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  void _onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  void _bottomTapped(int page) {
    _pageController.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: PageView(
          // physics: NeverScrollableScrollPhysics(),
          controller: _pageController,
          onPageChanged: _onPageChanged,
          children: <Widget>[
            Container(child: Center(child: Text('Homepage'))),
            Container(child: Center(child: Text('Action plan'))),
            Container(child: Center(child: Text('Medication'))),
            Container(child: Center(child: Text('Peak flow'))),
            Container(child: Center(child: Text('Profile'))),
          ],
        ),
        bottomNavigationBar: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: CupertinoTabBar(
              onTap: _bottomTapped,
              currentIndex: _page,
              backgroundColor: Colors.white,
              items: <BottomNavigationBarItem>[
                _bottomNavigationBarItem(
                  "Home",
                  0,
                  Image.asset(
                    'assets/images/home.png',
                    height: McGyver.rsDoubleH(context, 4),
                    width: McGyver.rsDoubleW(context, 6),
                  ),
                  Image.asset(
                    'assets/images/Vector.png',
                    height: McGyver.rsDoubleH(context, 4),
                    width: McGyver.rsDoubleW(context, 6),
                  ),
                ),
                _bottomNavigationBarItem(
                  "Action plan",
                  1,
                  Image.asset(
                    'assets/images/plans.png',
                    height: McGyver.rsDoubleH(context, 4),
                    width: McGyver.rsDoubleW(context, 6),
                  ),
                  Icon(Icons.note_add, color: Color(0xff130A38),)

                ),
                _bottomNavigationBarItem(
                  "Medication",
                  2,
                  Container(
                    child: SvgPicture.asset(
                      'assets/images/Group 3655.svg', /*color: Colors.black45, colorBlendMode: BlendMode.srcOut,*/
                    ),
                  ),
                  Image.asset(
                    'assets/images/pills.png',
                    height: McGyver.rsDoubleH(context, 4),
                    width: McGyver.rsDoubleW(context, 6),
                  ),
                ),
                _bottomNavigationBarItem(
                  "Peak flow",
                  3,
                  Image.asset(
                    'assets/images/printer.png',
                    height: McGyver.rsDoubleH(context, 4),
                    width: McGyver.rsDoubleW(context, 6),
                  ),
                  Icon(Icons.bubble_chart, color: Color(0xff130A38),)
                ),
                _bottomNavigationBarItem(
                  "Profile",
                  3,
                  Image.asset(
                    'assets/images/user.png',
                    height: McGyver.rsDoubleH(context, 4),
                    width: McGyver.rsDoubleW(context, 6),
                  ),
                  Icon(
                    Icons.account_circle,
                    color: Color(0xff130A38),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _bottomNavigationBarItem(
      String label, int number, Widget icon, Widget activeIcon) {
    return BottomNavigationBarItem(
      activeIcon: activeIcon,
      //  backgroundColor: Colors.red,
      icon: icon,
      title: Text(label,
          style: GoogleFonts.dmSans(
            fontSize: McGyver.textSize(context, 1.3),
            fontWeight: FontWeight.w500,
            color: Colors.black,
          )),
    );
  }
}
