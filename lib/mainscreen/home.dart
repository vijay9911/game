import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  get groupValue => null;

  get onChanged => null;

  @override
  Widget build(BuildContext context) {
    var value;
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          color: Colors.white,// Your screen background color
        ),
        SingleChildScrollView(
            child: Column(children: <Widget>[
              Container(height: 70.0),

            ])
        ),
        Positioned(
          top: 0.0,
          left: 0.0,
          right: 0.0,
          child: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
            backgroundColor: Colors.white.withOpacity(0.3), //You can make this transparent
            elevation: 0.0, //No shadow
          ),),
        Container(
          margin: const EdgeInsets.only(left: 60.0, top: 80.0),
          child: const Text("How Do you identify?",
            style: TextStyle(color: Colors.black,
                fontSize: 23,
                fontWeight: FontWeight.bold),),),
        Container(
          margin: const EdgeInsets.only(top: 180,),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  children: [
                    Image.asset("assets/male.png",
                      height: 100,
                      width: 100,),
                    Radio(value: value, groupValue: groupValue, onChanged: onChanged),
                    const Text("Male", style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold
                    ),),
                  ],
                ),),
              Expanded(
                  child: Column(
                    children: [
                      Image.asset("assets/fmale.png",
                        height: 100,
                        width: 100,

                        ),
                      Radio(value: value, groupValue: groupValue, onChanged: onChanged, fillColor: value),
                      const Text("Female", style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold, color: Colors.green
                      ),),
                    ],
                  ) )
            ],
          ),
        )
      ],
      ),
    );
  }

 }
