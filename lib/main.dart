import 'package:flutter/material.dart';
import 'package:swiggg/const.dart';
import 'package:swiggg/toggle.dart';


void main() {
  runApp(const MyApp());
}

String? selectedValue;
List<String> items = ['Chennai', 'Bangalore', 'Madurai'];


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:
        Scaffold(
            backgroundColor: Colors.transparent,
            extendBodyBehindAppBar: true,
            body:
            Container(
              decoration:kDecor,
              constraints: BoxConstraints.expand(),
              child: SafeArea(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      TextButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.arrow_circle_left_rounded,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ),


                      TextButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.file_upload_outlined,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ),
                    ],
                  ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[Image
                          (image:
                        AssetImage("image/WhatsApp Image 2024-03-02 at 10.49.45_ae28bc69.jpg"),
                          height: 250.0,
                          width: 250.0,
                          color: Colors.grey.withOpacity(0.49),
                          colorBlendMode:BlendMode.multiply,
                        ),
                        ],
                      ),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                          Container(
                           height: 25.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),

                              color: Colors.white,
              ),
                            child:DropdownButton<String>(
                              value: selectedValue, // The currently selected value
                              onChanged: (String? newValue) {
                                setState() {
                                  selectedValue = newValue!;
                                };
                              },
                              items: items.map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              hint: const Text('  CHENNAI',
                              style:TextStyle(
                                fontSize: 13.0,
                              ),
                              ), // Text shown before selection

                            ),
                          )

                      ],
                    ),
                      Row( mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          TextButton(
                            onPressed: () {},
                            child: Text('LIVE',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            ),
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.pink,
                            ),
                          ),
                          Container(
                            margin:EdgeInsets.only(left:15.0) ,
                              child: Text("Anand Bhavan is currently leading in the vote count"),
                          ),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Center(
                            child: SizedBox(
                              height: 45.0,
                              child: ToggleButton(
                                // ... other properties
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(padding:EdgeInsets.only(top:2.0),),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:<Widget>[
                            ColoredBox(
                              color:Colors.white,
                              child: Column(
                               children:<Widget> [
                                 Image(
                                   image:AssetImage("image/icecream.png"),
                                 ),
                                 Text("Ice-Creams"),
                                 Text("14.1k Votes",
                                   style:TextStyle(
                                     color: Colors.blueGrey,
                                     fontSize: 10.0,
                                   ) ,
                                 ),
                                 Padding(padding:EdgeInsets.only(top:1.0,left:165.0),),
                                 TextButton(onPressed:(){},
                                     child: Text("Vote Now >",
                                     style: TextStyle(
                                       color: Colors.white,
                                     ),
                                     ),
                                   style: TextButton.styleFrom(
                                     backgroundColor: Colors.black,
                                   ),
                                 )
                               ],
                              ),
                            ),

                            Padding(padding: EdgeInsets.only(left:15.0),),

                            ColoredBox(
                              color:Colors.white,
                              child: Column(
                                children:<Widget> [
                                  Image(
                                    image:AssetImage("image/southindian.png"),
                                  ),
                                  Text("South-Indian"),
                                  Text("21.2k Votes",
                                    style:TextStyle(
                                      color: Colors.blueGrey,
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.bold,
                                    ) ,
                                  ),
                                  Padding(padding:EdgeInsets.only(top:1.0,left:165.0),),
                                  TextButton(onPressed:(){},
                                    child: Text("Vote Now >",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),),
                                    style: TextButton.styleFrom(
                                      backgroundColor: Colors.black,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),

                      Padding(padding:EdgeInsets.only(bottom:10.0,top:2.0),),
                ],
                  )
    )
    )
    )
    );

  }
}
