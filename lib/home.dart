import 'package:flutter/material.dart';
class Welcome extends StatelessWidget{
  final String title;

  const Welcome({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: new Text("Just For You"),

      ),
      body: new Center(
        child: new CustomButton(),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
      onTap: (){
        final Snackbar= new SnackBar(content: new Text("I LOVE YOU ANSHITA"),
        backgroundColor: Theme.of(context).backgroundColor,
        duration: new Duration(hours: 0,minutes: 0,seconds: 0,milliseconds: 1000, microseconds: 0),);

        Scaffold.of(context).showSnackBar(Snackbar);
      },
      onDoubleTap: (){
        final Snackbar1 = new SnackBar(content: new Text("I AM YOURS FOREVER"),backgroundColor: Theme.of(context).backgroundColor,
        duration: new Duration(hours: 0,minutes: 0,seconds: 0,milliseconds: 1000, microseconds: 0) ,);
        Scaffold.of(context).showSnackBar(Snackbar1);
      },
      onLongPress: (){
        final Snackbar2 = new SnackBar(content: new Text("I LOVE YOUR EYES AND YOUR SMILE"),backgroundColor: Theme.of(context).backgroundColor,
          duration: new Duration(hours: 0,minutes: 0,seconds: 0,milliseconds: 1000, microseconds: 0) ,);
        Scaffold.of(context).showSnackBar(Snackbar2);
      },
      child: new Container(
        padding: new EdgeInsets.all(10.0),
        decoration: new BoxDecoration(
          color: Theme.of(context).buttonColor,
          borderRadius: new BorderRadius.circular(6.0)
        ),
        child: new Text("JUST CLICK"),
      ),
    );
  }


}