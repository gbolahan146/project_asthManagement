part of home;

class HomeViewMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Container(
          width: McGyver.rsDoubleW(context, 20),
          height: McGyver.rsDoubleH(context, 15),
          color: Colors.red,
          child: Center(
            child: Text(
              'Test',
              style: TextStyle(
                fontSize: McGyver.textSize(context, 3),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
