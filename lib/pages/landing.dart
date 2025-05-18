import 'package:flutter/material.dart';
import 'package:grocery_shop_app/pages/home.dart';

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
                        //* Cover Image
                        Image.asset(
                            'assets/others/landingpage.png',
                            fit: BoxFit.cover,
                        ),

                        SizedBox(height: 30),

                        Text(
                            'Order Your\nFavourite Food!',
                            style: TextStyle(
                                color: Colors.redAccent[700],
                                fontSize: 34,
                                fontWeight: FontWeight.bold
                            ),
                        ),
                        
                        SizedBox(height: 20),
                        
                        Text(
                            'Eat Fresh, Live Healthy',
                            style: TextStyle(
                                color: Colors.redAccent[200],
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),
                        ),

                        SizedBox(height: 30),

                        //* 'Next' button
                        // Go Back
                        GestureDetector(
                            onTap: () {
                                Navigator.of(context).push(
                                    PageRouteBuilder(
                                        pageBuilder: (context, animation, secondaryAnimation) => Home(),
                                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                            return SlideTransition(
                                                position: Tween<Offset>(
                                                    begin: Offset(1.0, 0.0), // from right to left
                                                    end: Offset.zero,
                                                ).animate(animation),
                                                    
                                                child: child,
                                            );
                                        },
                                    ),
                                );
                            },

                            // Next Button
                            child: Center(
                                child: Material(
                                    elevation: 3,
                                    borderRadius: BorderRadius.circular(25),
                                
                                    child: Container(
                                        padding: EdgeInsets.symmetric(horizontal: 60, vertical: 5),
                                    
                                        decoration: BoxDecoration(
                                            color: Colors.amber,
                                            borderRadius: BorderRadius.circular(25)
                                        ),
                                    
                                        child: Text(
                                            'Next',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 30,
                                                fontWeight: FontWeight.w500
                                            ),
                                        ),
                                    ),
                                ),
                            ),
                        ),
                    ],
                ),
            ),
        );
    }
}