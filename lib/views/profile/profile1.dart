import 'package:flutter/material.dart';

class ProfilePage1 extends StatefulWidget {
  @override
  _ProfilePage1State createState() => _ProfilePage1State();
}

class _ProfilePage1State extends State<ProfilePage1> {
  Color color;
  
  @override
  Widget build(BuildContext context) {
    var value;
        return Scaffold(
          body: Column(
              children: <Widget>[
                Expanded(
          child: Container(
          color: Colors.white,
            width: 500,
            child: Padding(
              padding: const EdgeInsets.only(right:10.0,left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Text('Complete your Profile',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: Color(0xff130A38),
                  ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('To enable us to provide valid health information, please fill in your profile details.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff30159C),
                  ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CircleAvatar(
                  radius: 70.0,
                  child: Text('Add Photo',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  ),
                  backgroundColor: Color(0xffF6F6F6),
                ),
    
                SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    
                    children: <Widget>[
                      Text('Hi,',
                      style: TextStyle(
                    
                    fontSize: 16,
                    color: Color(0xff130A38),
                  ),
                      ),
                       SizedBox(
                    width: 5,
                  ),
                      Text('Oluwaseun!',
                      style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color(0xff130A38),
                  ),
                      ),
                      SizedBox(
                    width: 5,
                  ),
                      Text('Let\'s get you Started.',
                      style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff130A38),
                  ),
                      ),
                    ],
                  ),
                  
                ],
              ),
            ),
    
                ),
                ),
                Expanded(
          child: Container(
            color: Color(0xffE5E5E5),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      )
                     ),                  
                    child: DropdownButton( 
                      value: value,
                  isExpanded: true,
                  underline: SizedBox(),
                  hint: Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Text('Gender',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    ),
                  ),
                  icon: Padding(
                    padding: const EdgeInsets.only(right:8.0),
                    child: Icon(
                              Icons.keyboard_arrow_down,
                            ),
                  ),
                  elevation: 0,
                  isDense: false,
                  items: [
                    DropdownMenuItem(
                      child: Text("Male"),
                      value: 1,
                    ),
                    DropdownMenuItem(
                      child: Text("Female"),
                      value: 2,
                    ),
                    DropdownMenuItem(
                      child: Text("prefer not to say"),
                      value: 3
                    ),
                  ],
                  onChanged: (value){
                    setState(() {
                      value = value;
                    });
                  },

                ),

              ),
              SizedBox(
                height: 10,
              ),
              Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      )
                     ),                  
                    child: DropdownButton( 
                      value: value,
                  isExpanded: true,
                  underline: SizedBox(),
                  hint: Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Text('Gender',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    ),
                  ),
                  icon: Padding(
                    padding: const EdgeInsets.only(right:8.0),
                    child: Icon(
                              Icons.keyboard_arrow_down,
                            ),
                  ),
                  elevation: 0,
                  isDense: false,
                  items: [
                    DropdownMenuItem(
                      child: Text("Male"),
                      value: 1,
                    ),
                    DropdownMenuItem(
                      child: Text("Female"),
                      value: 2,
                    ),
                    DropdownMenuItem(
                      child: Text("prefer not to say"),
                      value: 3
                    ),
                  ],
                  onChanged: (value){
                    setState(() {
                      value = value;
                    });
                  },

                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      )
                     ),                  
                    child: DropdownButton( 
                      value: value,
                  isExpanded: true,
                  underline: SizedBox(),
                  hint: Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Text('Gender',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    ),
                  ),
                  icon: Padding(
                    padding: const EdgeInsets.only(right:8.0),
                    child: Icon(
                              Icons.keyboard_arrow_down,
                            ),
                  ),
                  elevation: 0,
                  isDense: false,
                  items: [
                    DropdownMenuItem(
                      child: Text("Male"),
                      value: 1,
                    ),
                    DropdownMenuItem(
                      child: Text("Female"),
                      value: 2,
                    ),
                    DropdownMenuItem(
                      child: Text("prefer not to say"),
                      value: 3
                    ),
                  ],
                  onChanged: (value){
                    setState(() {
                      value = value;
                    });
                  },

                ),
              ),
              SizedBox(
                height: 10,
              
              ),
              Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      )
                     ),                  
                    child: DropdownButton( 
                      value: value,
                  isExpanded: true,
                  underline: SizedBox(),
                  hint: Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Text('Gender',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    ),
                  ),
                  icon: Padding(
                    padding: const EdgeInsets.only(right:8.0),
                    child: Icon(
                              Icons.keyboard_arrow_down,
                            ),
                  ),
                  elevation: 0,
                  isDense: false,
                  items: [
                    DropdownMenuItem(
                      child: Text("Male"),
                      value: 1,
                    ),
                    DropdownMenuItem(
                      child: Text("Female"),
                      value: 2,
                    ),
                    DropdownMenuItem(
                      child: Text("prefer not to say"),
                      value: 3
                    ),
                  ],
                  onChanged: (value){
                    setState(() {
                      value = value;
                    });
                  },

                ),
              ),

              // SizedBox(
              //   height: 10,
              // ),

              //FlatButton(onPressed: () {}, child: null)
            ],
          ),
        ),
            ),
            ),
          ],
        ),
      
    );
  }
}