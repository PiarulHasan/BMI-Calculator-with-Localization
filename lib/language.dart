import 'package:calculator/inputpage.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';


class Language extends StatefulWidget {
  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Language Select"),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton(
                  color: Colors.blueAccent,
                  onPressed: (){
                    setState(() {
                    EasyLocalization.of(context).locale = Locale("bn", "BN");
                    });
                  },
                  child: Text("বাংলা")),
              FlatButton(
                color: Colors.blueAccent,
                  onPressed: (){
                    setState(() {
                      EasyLocalization.of(context).locale = Locale("en", "EN");
                    });
                  },
                  child: Text("English")),
              FlatButton(
                  color: Colors.blueAccent,
                  onPressed: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Inputpage()));

                    });
                  },
                  child: Text("next page")),
            ],
          )
      ),
    );
  }
}
