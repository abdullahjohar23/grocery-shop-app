import 'package:flutter/material.dart';

class Landing extends StatefulWidget {
    const Landing({super.key});

    @override
    State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.white,

            body: Container(
                padding: EdgeInsets.only(top: 70, left: 20, right: 20),

                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                        Image.asset(
                            'assets/landingpage.png',
                            fit: BoxFit.cover,
                        ),

                        SizedBox(height: 30),

                        Text(
                            'Order Your\nFavourite Fruits!',
                            style: TextStyle(
                                color: Colors.redAccent[700],
                                fontSize: 34,
                                fontWeight: FontWeight.bold
                            ),
                        ),
                        
                        SizedBox(height: 20),
                        
                        Text(
                            'Eat fresh fruits and try to be healthy',
                            style: TextStyle(
                                color: Colors.redAccent[200],
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),
                        ),

                        SizedBox(height: 30),

                        //* 'Next' button
                        Center(
                            child: Material(
                                elevation: 3,
                                borderRadius: BorderRadius.circular(25),
                            
                                child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                                
                                    decoration: BoxDecoration(
                                        color: Colors.amber,
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                
                                    child: Text(
                                        'Next',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 34,
                                            fontWeight: FontWeight.w500
                                        ),
                                    ),
                                ),
                            ),
                        )
                    ],
                ),
            ),
        );
    }
}