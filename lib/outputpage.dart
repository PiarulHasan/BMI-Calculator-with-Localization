import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'inputpage.dart';

class Outputpage extends StatefulWidget {

  Outputpage({this.feedback,this.result,this.sug});

  String result;
  String feedback;
  String sug;

  @override
  _OutputpageState createState() => _OutputpageState();
}

class _OutputpageState extends State<Outputpage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF10446e),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            children: [
              Text("Your Result",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 30,),

              Text(widget.feedback.toString(),
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  )
              ),

              SizedBox(height: 20,),

              Text(widget.result.toString(),
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  )
              ),

              SizedBox(height: 20,),

              Text(widget.sug.toString(),
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  )
              ),

              SizedBox(height: 350,),

              FlatButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Inputpage()));
                  },
                  color: Colors.pinkAccent,
                  splashColor: Colors.green,
                  child: Text("Re-Calculate",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black
                    ),
                  )
              ),

            ],
          ),
        ),
      ),
    );
  }
}
