part of profile2;

class Profile2ViewTablet extends StatelessWidget {
  final Profile2ViewModel viewModel;

  const Profile2ViewTablet({Key key, this.viewModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Container(
          //setting dimension for widget width
          width: McGyver.rsDoubleW(context, 20),
          //setting dimension for widget height
          height: McGyver.rsDoubleH(context, 15),
          color: Colors.red,
          child: Center(
            child: Text(
              'Test',
              style: TextStyle(
                //making fontsize responsive with different screen sizes
                fontSize: McGyver.textSize(context, 3),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
