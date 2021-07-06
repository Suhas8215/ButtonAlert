// TODO Implement this library.
import 'package:flutter/material.dart';
import 'agreementDialog.dart' as fullDialog;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agreement Example'),
      ),
      // ignore: deprecated_member_use
      body: RaisedButton(
        child: Text(
          'Create Account',
          style: TextStyle(color: Colors.black),
        ),
        onPressed: () {
          _openAgreeDialog(context);
        },
      ),
    );
  }

  Future _openAgreeDialog(context) async {
    String result = await Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) {
          return fullDialog.CreateAgreement();
        },
        //true to display with a dismiss button rather than a return navigation arrow
        fullscreenDialog: true));
    if (result != null) {
      letsDoSomething(result, context);
    } else {
      print('you could do another action here if they cancel');
    }
  }

  letsDoSomething(String result, context) {
    print(result);//prints 'User Agreed'
  }

}
