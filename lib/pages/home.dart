import 'package:flutter/material.dart';

class Home extends StatefulWidget {
    const Home({super.key});

    @override
    State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.white,

            body: Container(
                padding: EdgeInsets.only(top: 50, left: 20, right: 20),

                child: Column(
                    children: [
                        //* Name and Profile Image
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                                //* Name and Profile
                                Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,

                                    //* Name & Message under it
                                    children: [
                                        //* Name Label
                                        Row(
                                            children: [
                                                //* Wave Emoji
                                                Image.asset(
                                                    'assets/wave.png',
                                                    height: 30,
                                                    width: 30,
                                                    fit: BoxFit.cover,
                                                ),

                                                SizedBox(width: 10),

                                                //* Name
                                                Text(
                                                    'Hey Brownie',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 24,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),
                                            ],
                                        ),

                                        SizedBox(height: 15),

                                        //* Message under the name
                                        Text(
                                            'Eat fresh fruits and\nTry to be healthy',
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold
                                            ),
                                        ),
                                    ],
                                ),

                                //* Profile Image
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(30),

                                    child: Image.asset(
                                        'assets/boy.jpg',
                                        height: 60,
                                        width: 60,
                                        fit: BoxFit.cover
                                    ),
                                ),
                            ],
                        ),

                        SizedBox(height: 20),

                        //* Search Box
                        Container(
                            padding: EdgeInsets.only(left: 20, top: 3, bottom: 3),
                            width: MediaQuery.of(context).size.width,

                            decoration: BoxDecoration(
                                color: Color(0xfff5f5f5),
                                borderRadius: BorderRadius.circular(15)
                            ),

                            child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none, // TextField() by default has an underline design, we can remove it by using InputBorder.none
                                    hintText: 'Search Grocery',
                                    suffixIcon: Icon(Icons.search_outlined)
                                ),
                            ),
                        ),

                        SizedBox(height: 20),
                        
                        //* Top Selling Label
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            //* Top Selling Label
                            children: [
                                Text(
                                    'Top Selling',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                    ),
                                ),

                                Text(
                                    'Top Selling',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                    ),
                                ),
                            ],
                        ),

                        SizedBox(height: 20),

                        //* ListView of the Menu
                        Container(
                            height: 261,

                            child: ListView(
                                scrollDirection: Axis.horizontal,
                                
                                children: [
                                    //* All design for a single product
                                    
                                    //* For Strawberry
                                    Container(
                                        padding: EdgeInsets.only(left: 15, top: 10),
                                        margin: EdgeInsets.only(right: 20),

                                        decoration: BoxDecoration(
                                            color: Color(0xffffe08e),
                                            borderRadius: BorderRadius.circular(30)
                                        ),
                                        
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,

                                            //* Name, Price and Image of the product
                                            children: [
                                                //* Name of the product
                                                Text(
                                                    'Strawberry',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),

                                                //* Price of the product
                                                Text(
                                                    '\$2.99',
                                                    style: TextStyle(
                                                        color: Colors.black54,
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),
                                                
                                                //* Image of the product
                                                Image.asset(
                                                    'assets/strawberry.png',
                                                    height: 150,
                                                    width: 150,
                                                    fit: BoxFit.cover,
                                                ),

                                                //* Add (+) Icon
                                                Container(
                                                    padding: EdgeInsets.all(8),
                                                    margin: EdgeInsets.only(left: 104),

                                                    decoration: BoxDecoration(
                                                        color: Colors.green[800],
                                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomRight: Radius.circular(30))
                                                    ),
                                                
                                                    child: Icon(
                                                        Icons.add,
                                                        size: 30,
                                                        color: Colors.white,
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),

                                    //* For Peach
                                    Container(
                                        padding: EdgeInsets.only(left: 15, top: 10),
                                        margin: EdgeInsets.only(right: 20),

                                        decoration: BoxDecoration(
                                            color: Color(0xffffe08e),
                                            borderRadius: BorderRadius.circular(30)
                                        ),
                                        
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,

                                            //* Name, Price and Image of the product
                                            children: [
                                                //* Name of the product
                                                Text(
                                                    'Peach',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),

                                                //* Price of the product
                                                Text(
                                                    '\$2.99',
                                                    style: TextStyle(
                                                        color: Colors.black54,
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),
                                                
                                                //* Image of the product
                                                Image.asset(
                                                    'assets/peach.png',
                                                    height: 150,
                                                    width: 150,
                                                    fit: BoxFit.cover,
                                                ),

                                                //* Add (+) Icon
                                                Container(
                                                    padding: EdgeInsets.all(8),
                                                    margin: EdgeInsets.only(left: 104),

                                                    decoration: BoxDecoration(
                                                        color: Colors.green[800],
                                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomRight: Radius.circular(30))
                                                    ),
                                                
                                                    child: Icon(
                                                        Icons.add,
                                                        size: 30,
                                                        color: Colors.white,
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),

                                    //* For Pear
                                    Container(
                                        padding: EdgeInsets.only(left: 15, top: 10),
                                        margin: EdgeInsets.only(right: 20),

                                        decoration: BoxDecoration(
                                            color: Color(0xffffe08e),
                                            borderRadius: BorderRadius.circular(30)
                                        ),
                                        
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,

                                            //* Name, Price and Image of the product
                                            children: [
                                                //* Name of the product
                                                Text(
                                                    'Pear',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),

                                                //* Price of the product
                                                Text(
                                                    '\$2.99',
                                                    style: TextStyle(
                                                        color: Colors.black54,
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),
                                                
                                                //* Image of the product
                                                Image.asset(
                                                    'assets/pear.png',
                                                    height: 150,
                                                    width: 150,
                                                    fit: BoxFit.cover,
                                                ),

                                                //* Add (+) Icon
                                                Container(
                                                    padding: EdgeInsets.all(8),
                                                    margin: EdgeInsets.only(left: 104),

                                                    decoration: BoxDecoration(
                                                        color: Colors.green[800],
                                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomRight: Radius.circular(30))
                                                    ),
                                                
                                                    child: Icon(
                                                        Icons.add,
                                                        size: 30,
                                                        color: Colors.white,
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),

                                    //* For Pine Apple
                                    Container(
                                        padding: EdgeInsets.only(left: 15, top: 10),
                                        margin: EdgeInsets.only(right: 20),

                                        decoration: BoxDecoration(
                                            color: Color(0xffffe08e),
                                            borderRadius: BorderRadius.circular(30)
                                        ),
                                        
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,

                                            //* Name, Price and Image of the product
                                            children: [
                                                //* Name of the product
                                                Text(
                                                    'Pine Apple',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),

                                                //* Price of the product
                                                Text(
                                                    '\$2.99',
                                                    style: TextStyle(
                                                        color: Colors.black54,
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),
                                                
                                                //* Image of the product
                                                Image.asset(
                                                    'assets/pineapple.png',
                                                    height: 150,
                                                    width: 150,
                                                    fit: BoxFit.cover,
                                                ),

                                                //* Add (+) Icon
                                                Container(
                                                    padding: EdgeInsets.all(8),
                                                    margin: EdgeInsets.only(left: 104),

                                                    decoration: BoxDecoration(
                                                        color: Colors.green[800],
                                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomRight: Radius.circular(30))
                                                    ),
                                                
                                                    child: Icon(
                                                        Icons.add,
                                                        size: 30,
                                                        color: Colors.white,
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),

                                    //* For Orange
                                    Container(
                                        padding: EdgeInsets.only(left: 15, top: 10),
                                        margin: EdgeInsets.only(right: 20),

                                        decoration: BoxDecoration(
                                            color: Color(0xffffe08e),
                                            borderRadius: BorderRadius.circular(30)
                                        ),
                                        
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,

                                            //* Name, Price and Image of the product
                                            children: [
                                                //* Name of the product
                                                Text(
                                                    'Orange',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),

                                                //* Price of the product
                                                Text(
                                                    '\$2.99',
                                                    style: TextStyle(
                                                        color: Colors.black54,
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),
                                                
                                                //* Image of the product
                                                Image.asset(
                                                    'assets/orange.png',
                                                    height: 150,
                                                    width: 150,
                                                    fit: BoxFit.cover,
                                                ),

                                                //* Add (+) Icon
                                                Container(
                                                    padding: EdgeInsets.all(8),
                                                    margin: EdgeInsets.only(left: 104),

                                                    decoration: BoxDecoration(
                                                        color: Colors.green[800],
                                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomRight: Radius.circular(30))
                                                    ),
                                                
                                                    child: Icon(
                                                        Icons.add,
                                                        size: 30,
                                                        color: Colors.white,
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),

                                    //* For Apple
                                    Container(
                                        padding: EdgeInsets.only(left: 15, top: 10),
                                        margin: EdgeInsets.only(right: 20),

                                        decoration: BoxDecoration(
                                            color: Color(0xffffe08e),
                                            borderRadius: BorderRadius.circular(30)
                                        ),
                                        
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,

                                            //* Name, Price and Image of the product
                                            children: [
                                                //* Name of the product
                                                Text(
                                                    'Apple',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),

                                                //* Price of the product
                                                Text(
                                                    '\$2.99',
                                                    style: TextStyle(
                                                        color: Colors.black54,
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),
                                                
                                                //* Image of the product
                                                Image.asset(
                                                    'assets/apple.png',
                                                    height: 150,
                                                    width: 150,
                                                    fit: BoxFit.cover,
                                                ),

                                                //* Add (+) Icon
                                                Container(
                                                    padding: EdgeInsets.all(8),
                                                    margin: EdgeInsets.only(left: 104),

                                                    decoration: BoxDecoration(
                                                        color: Colors.green[800],
                                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomRight: Radius.circular(30))
                                                    ),
                                                
                                                    child: Icon(
                                                        Icons.add,
                                                        size: 30,
                                                        color: Colors.white,
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),

                                    //* For Cherry
                                    Container(
                                        padding: EdgeInsets.only(left: 15, top: 10),
                                        margin: EdgeInsets.only(right: 20),

                                        decoration: BoxDecoration(
                                            color: Color(0xffffe08e),
                                            borderRadius: BorderRadius.circular(30)
                                        ),
                                        
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,

                                            //* Name, Price and Image of the product
                                            children: [
                                                //* Name of the product
                                                Text(
                                                    'Cherry',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),

                                                //* Price of the product
                                                Text(
                                                    '\$2.99',
                                                    style: TextStyle(
                                                        color: Colors.black54,
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),
                                                
                                                //* Image of the product
                                                Image.asset(
                                                    'assets/cherry.png',
                                                    height: 150,
                                                    width: 150,
                                                    fit: BoxFit.cover,
                                                ),

                                                //* Add (+) Icon
                                                Container(
                                                    padding: EdgeInsets.all(8),
                                                    margin: EdgeInsets.only(left: 104),

                                                    decoration: BoxDecoration(
                                                        color: Colors.green[800],
                                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomRight: Radius.circular(30))
                                                    ),
                                                
                                                    child: Icon(
                                                        Icons.add,
                                                        size: 30,
                                                        color: Colors.white,
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),

                                    //* For Grapes
                                    Container(
                                        padding: EdgeInsets.only(left: 15, top: 10),
                                        margin: EdgeInsets.only(right: 20),

                                        decoration: BoxDecoration(
                                            color: Color(0xffffe08e),
                                            borderRadius: BorderRadius.circular(30)
                                        ),
                                        
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,

                                            //* Name, Price and Image of the product
                                            children: [
                                                //* Name of the product
                                                Text(
                                                    'Grapes',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),

                                                //* Price of the product
                                                Text(
                                                    '\$2.99',
                                                    style: TextStyle(
                                                        color: Colors.black54,
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),
                                                
                                                //* Image of the product
                                                Image.asset(
                                                    'assets/grapes.png',
                                                    height: 150,
                                                    width: 150,
                                                    fit: BoxFit.cover,
                                                ),

                                                //* Add (+) Icon
                                                Container(
                                                    padding: EdgeInsets.all(8),
                                                    margin: EdgeInsets.only(left: 104),

                                                    decoration: BoxDecoration(
                                                        color: Colors.green[800],
                                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomRight: Radius.circular(30))
                                                    ),
                                                
                                                    child: Icon(
                                                        Icons.add,
                                                        size: 30,
                                                        color: Colors.white,
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),

                                    //* For Kiwi
                                    Container(
                                        padding: EdgeInsets.only(left: 15, top: 10),
                                        margin: EdgeInsets.only(right: 20),

                                        decoration: BoxDecoration(
                                            color: Color(0xffffe08e),
                                            borderRadius: BorderRadius.circular(30)
                                        ),
                                        
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,

                                            //* Name, Price and Image of the product
                                            children: [
                                                //* Name of the product
                                                Text(
                                                    'Kiwi',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),

                                                //* Price of the product
                                                Text(
                                                    '\$2.99',
                                                    style: TextStyle(
                                                        color: Colors.black54,
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),
                                                
                                                //* Image of the product
                                                Image.asset(
                                                    'assets/kiwi.png',
                                                    height: 150,
                                                    width: 150,
                                                    fit: BoxFit.cover,
                                                ),

                                                //* Add (+) Icon
                                                Container(
                                                    padding: EdgeInsets.all(8),
                                                    margin: EdgeInsets.only(left: 104),

                                                    decoration: BoxDecoration(
                                                        color: Colors.green[800],
                                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomRight: Radius.circular(30))
                                                    ),
                                                
                                                    child: Icon(
                                                        Icons.add,
                                                        size: 30,
                                                        color: Colors.white,
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),

                                    //* For Mango
                                    Container(
                                        padding: EdgeInsets.only(left: 15, top: 10),
                                        margin: EdgeInsets.only(right: 20),

                                        decoration: BoxDecoration(
                                            color: Color(0xffffe08e),
                                            borderRadius: BorderRadius.circular(30)
                                        ),
                                        
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,

                                            //* Name, Price and Image of the product
                                            children: [
                                                //* Name of the product
                                                Text(
                                                    'Mango',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),

                                                //* Price of the product
                                                Text(
                                                    '\$2.99',
                                                    style: TextStyle(
                                                        color: Colors.black54,
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),
                                                
                                                //* Image of the product
                                                Image.asset(
                                                    'assets/mango.png',
                                                    height: 150,
                                                    width: 150,
                                                    fit: BoxFit.cover,
                                                ),

                                                //* Add (+) Icon
                                                Container(
                                                    padding: EdgeInsets.all(8),
                                                    margin: EdgeInsets.only(left: 104),

                                                    decoration: BoxDecoration(
                                                        color: Colors.green[800],
                                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomRight: Radius.circular(30))
                                                    ),
                                                
                                                    child: Icon(
                                                        Icons.add,
                                                        size: 30,
                                                        color: Colors.white,
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),

                                    //* For Lychee
                                    Container(
                                        padding: EdgeInsets.only(left: 15, top: 10),
                                        margin: EdgeInsets.only(right: 20),

                                        decoration: BoxDecoration(
                                            color: Color(0xffffe08e),
                                            borderRadius: BorderRadius.circular(30)
                                        ),
                                        
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,

                                            //* Name, Price and Image of the product
                                            children: [
                                                //* Name of the product
                                                Text(
                                                    'Lychee',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),

                                                //* Price of the product
                                                Text(
                                                    '\$2.99',
                                                    style: TextStyle(
                                                        color: Colors.black54,
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),
                                                
                                                //* Image of the product
                                                Image.asset(
                                                    'assets/lychee.png',
                                                    height: 150,
                                                    width: 150,
                                                    fit: BoxFit.cover,
                                                ),

                                                //* Add (+) Icon
                                                Container(
                                                    padding: EdgeInsets.all(8),
                                                    margin: EdgeInsets.only(left: 104),

                                                    decoration: BoxDecoration(
                                                        color: Colors.green[800],
                                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomRight: Radius.circular(30))
                                                    ),
                                                
                                                    child: Icon(
                                                        Icons.add,
                                                        size: 30,
                                                        color: Colors.white,
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),

                                    //* For Rose Apple
                                    Container(
                                        padding: EdgeInsets.only(left: 15, top: 10),
                                        margin: EdgeInsets.only(right: 20),

                                        decoration: BoxDecoration(
                                            color: Color(0xffffe08e),
                                            borderRadius: BorderRadius.circular(30)
                                        ),
                                        
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,

                                            //* Name, Price and Image of the product
                                            children: [
                                                //* Name of the product
                                                Text(
                                                    'Rose Apple',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),

                                                //* Price of the product
                                                Text(
                                                    '\$2.99',
                                                    style: TextStyle(
                                                        color: Colors.black54,
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),
                                                
                                                //* Image of the product
                                                Image.asset(
                                                    'assets/roseapple.png',
                                                    height: 150,
                                                    width: 150,
                                                    fit: BoxFit.cover,
                                                ),

                                                //* Add (+) Icon
                                                Container(
                                                    padding: EdgeInsets.all(8),
                                                    margin: EdgeInsets.only(left: 104),

                                                    decoration: BoxDecoration(
                                                        color: Colors.green[800],
                                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomRight: Radius.circular(30))
                                                    ),
                                                
                                                    child: Icon(
                                                        Icons.add,
                                                        size: 30,
                                                        color: Colors.white,
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),

                                    //* For Water Melon
                                    Container(
                                        padding: EdgeInsets.only(left: 15, top: 10),
                                        margin: EdgeInsets.only(right: 20),

                                        decoration: BoxDecoration(
                                            color: Color(0xffffe08e),
                                            borderRadius: BorderRadius.circular(30)
                                        ),
                                        
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,

                                            //* Name, Price and Image of the product
                                            children: [
                                                //* Name of the product
                                                Text(
                                                    'Water Melon',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),

                                                //* Price of the product
                                                Text(
                                                    '\$2.99',
                                                    style: TextStyle(
                                                        color: Colors.black54,
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),
                                                
                                                //* Image of the product
                                                Image.asset(
                                                    'assets/watermelon.png',
                                                    height: 150,
                                                    width: 150,
                                                    fit: BoxFit.cover,
                                                ),

                                                //* Add (+) Icon
                                                Container(
                                                    padding: EdgeInsets.all(8),
                                                    margin: EdgeInsets.only(left: 104),

                                                    decoration: BoxDecoration(
                                                        color: Colors.green[800],
                                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomRight: Radius.circular(30))
                                                    ),
                                                
                                                    child: Icon(
                                                        Icons.add,
                                                        size: 30,
                                                        color: Colors.white,
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),

                                    //* For Avocado
                                    Container(
                                        padding: EdgeInsets.only(left: 15, top: 10),
                                        margin: EdgeInsets.only(right: 20),

                                        decoration: BoxDecoration(
                                            color: Color(0xffffe08e),
                                            borderRadius: BorderRadius.circular(30)
                                        ),
                                        
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,

                                            //* Name, Price and Image of the product
                                            children: [
                                                //* Name of the product
                                                Text(
                                                    'Avocado',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),

                                                //* Price of the product
                                                Text(
                                                    '\$2.99',
                                                    style: TextStyle(
                                                        color: Colors.black54,
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),
                                                
                                                //* Image of the product
                                                Image.asset(
                                                    'assets/avocado.png',
                                                    height: 150,
                                                    width: 150,
                                                    fit: BoxFit.cover,
                                                ),

                                                //* Add (+) Icon
                                                Container(
                                                    padding: EdgeInsets.all(8),
                                                    margin: EdgeInsets.only(left: 104),

                                                    decoration: BoxDecoration(
                                                        color: Colors.green[800],
                                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomRight: Radius.circular(30))
                                                    ),
                                                
                                                    child: Icon(
                                                        Icons.add,
                                                        size: 30,
                                                        color: Colors.white,
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),

                                    //* For Banana
                                    Container(
                                        padding: EdgeInsets.only(left: 15, top: 10),
                                        margin: EdgeInsets.only(right: 20),

                                        decoration: BoxDecoration(
                                            color: Color(0xffffe08e),
                                            borderRadius: BorderRadius.circular(30)
                                        ),
                                        
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,

                                            //* Name, Price and Image of the product
                                            children: [
                                                //* Name of the product
                                                Text(
                                                    'Banana',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),

                                                //* Price of the product
                                                Text(
                                                    '\$2.99',
                                                    style: TextStyle(
                                                        color: Colors.black54,
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),
                                                
                                                //* Image of the product
                                                Image.asset(
                                                    'assets/banana.png',
                                                    height: 150,
                                                    width: 150,
                                                    fit: BoxFit.cover,
                                                ),

                                                //* Add (+) Icon
                                                Container(
                                                    padding: EdgeInsets.all(8),
                                                    margin: EdgeInsets.only(left: 104),

                                                    decoration: BoxDecoration(
                                                        color: Colors.green[800],
                                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomRight: Radius.circular(30))
                                                    ),
                                                
                                                    child: Icon(
                                                        Icons.add,
                                                        size: 30,
                                                        color: Colors.white,
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),

                                    //* For Blue Berry
                                    Container(
                                        padding: EdgeInsets.only(left: 15, top: 10),
                                        margin: EdgeInsets.only(right: 20),

                                        decoration: BoxDecoration(
                                            color: Color(0xffffe08e),
                                            borderRadius: BorderRadius.circular(30)
                                        ),
                                        
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,

                                            //* Name, Price and Image of the product
                                            children: [
                                                //* Name of the product
                                                Text(
                                                    'Blue Berry',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),

                                                //* Price of the product
                                                Text(
                                                    '\$2.99',
                                                    style: TextStyle(
                                                        color: Colors.black54,
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),
                                                
                                                //* Image of the product
                                                Image.asset(
                                                    'assets/blueberry.png',
                                                    height: 150,
                                                    width: 150,
                                                    fit: BoxFit.cover,
                                                ),

                                                //* Add (+) Icon
                                                Container(
                                                    padding: EdgeInsets.all(8),
                                                    margin: EdgeInsets.only(left: 104),

                                                    decoration: BoxDecoration(
                                                        color: Colors.green[800],
                                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomRight: Radius.circular(30))
                                                    ),
                                                
                                                    child: Icon(
                                                        Icons.add,
                                                        size: 30,
                                                        color: Colors.white,
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),

                                    //* For Guava
                                    Container(
                                        padding: EdgeInsets.only(left: 15, top: 10),
                                        margin: EdgeInsets.only(right: 20),

                                        decoration: BoxDecoration(
                                            color: Color(0xffffe08e),
                                            borderRadius: BorderRadius.circular(30)
                                        ),
                                        
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,

                                            //* Name, Price and Image of the product
                                            children: [
                                                //* Name of the product
                                                Text(
                                                    'Guava',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),

                                                //* Price of the product
                                                Text(
                                                    '\$2.99',
                                                    style: TextStyle(
                                                        color: Colors.black54,
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),
                                                
                                                //* Image of the product
                                                Image.asset(
                                                    'assets/guava.png',
                                                    height: 150,
                                                    width: 150,
                                                    fit: BoxFit.cover,
                                                ),

                                                //* Add (+) Icon
                                                Container(
                                                    padding: EdgeInsets.all(8),
                                                    margin: EdgeInsets.only(left: 104),

                                                    decoration: BoxDecoration(
                                                        color: Colors.green[800],
                                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomRight: Radius.circular(30))
                                                    ),
                                                
                                                    child: Icon(
                                                        Icons.add,
                                                        size: 30,
                                                        color: Colors.white,
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),

                                    //* For Pomogranate
                                    Container(
                                        padding: EdgeInsets.only(left: 15, top: 10),
                                        margin: EdgeInsets.only(right: 20),

                                        decoration: BoxDecoration(
                                            color: Color(0xffffe08e),
                                            borderRadius: BorderRadius.circular(30)
                                        ),
                                        
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,

                                            //* Name, Price and Image of the product
                                            children: [
                                                //* Name of the product
                                                Text(
                                                    'Pomogranate',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),

                                                //* Price of the product
                                                Text(
                                                    '\$2.99',
                                                    style: TextStyle(
                                                        color: Colors.black54,
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),
                                                
                                                //* Image of the product
                                                Image.asset(
                                                    'assets/pomogranate.png',
                                                    height: 150,
                                                    width: 150,
                                                    fit: BoxFit.cover,
                                                ),

                                                //* Add (+) Icon
                                                Container(
                                                    padding: EdgeInsets.all(8),
                                                    margin: EdgeInsets.only(left: 104),

                                                    decoration: BoxDecoration(
                                                        color: Colors.green[800],
                                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomRight: Radius.circular(30))
                                                    ),
                                                
                                                    child: Icon(
                                                        Icons.add,
                                                        size: 30,
                                                        color: Colors.white,
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),

                                    //* For Star Fruit
                                    Container(
                                        padding: EdgeInsets.only(left: 15, top: 10),
                                        margin: EdgeInsets.only(right: 20),

                                        decoration: BoxDecoration(
                                            color: Color(0xffffe08e),
                                            borderRadius: BorderRadius.circular(30)
                                        ),
                                        
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,

                                            //* Name, Price and Image of the product
                                            children: [
                                                //* Name of the product
                                                Text(
                                                    'Star Fruit',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),

                                                //* Price of the product
                                                Text(
                                                    '\$2.99',
                                                    style: TextStyle(
                                                        color: Colors.black54,
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),
                                                
                                                //* Image of the product
                                                Image.asset(
                                                    'assets/starfruit.png',
                                                    height: 150,
                                                    width: 150,
                                                    fit: BoxFit.cover,
                                                ),

                                                //* Add (+) Icon
                                                Container(
                                                    padding: EdgeInsets.all(8),
                                                    margin: EdgeInsets.only(left: 104),

                                                    decoration: BoxDecoration(
                                                        color: Colors.green[800],
                                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomRight: Radius.circular(30))
                                                    ),
                                                
                                                    child: Icon(
                                                        Icons.add,
                                                        size: 30,
                                                        color: Colors.white,
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),

                                    //* For Raspberry
                                    Container(
                                        padding: EdgeInsets.only(left: 15, top: 10),
                                        margin: EdgeInsets.only(right: 20),

                                        decoration: BoxDecoration(
                                            color: Color(0xffffe08e),
                                            borderRadius: BorderRadius.circular(30)
                                        ),
                                        
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,

                                            //* Name, Price and Image of the product
                                            children: [
                                                //* Name of the product
                                                Text(
                                                    'Raspberry',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),

                                                //* Price of the product
                                                Text(
                                                    '\$2.99',
                                                    style: TextStyle(
                                                        color: Colors.black54,
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),
                                                
                                                //* Image of the product
                                                Image.asset(
                                                    'assets/raspberry.png',
                                                    height: 150,
                                                    width: 150,
                                                    fit: BoxFit.cover,
                                                ),

                                                //* Add (+) Icon
                                                Container(
                                                    padding: EdgeInsets.all(8),
                                                    margin: EdgeInsets.only(left: 104),

                                                    decoration: BoxDecoration(
                                                        color: Colors.green[800],
                                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomRight: Radius.circular(30))
                                                    ),
                                                
                                                    child: Icon(
                                                        Icons.add,
                                                        size: 30,
                                                        color: Colors.white,
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),

                                    //* For Passion Fruit
                                    Container(
                                        padding: EdgeInsets.only(left: 15, top: 10),
                                        margin: EdgeInsets.only(right: 20),

                                        decoration: BoxDecoration(
                                            color: Color(0xffffe08e),
                                            borderRadius: BorderRadius.circular(30)
                                        ),
                                        
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,

                                            //* Name, Price and Image of the product
                                            children: [
                                                //* Name of the product
                                                Text(
                                                    'Passion Fruit',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),

                                                //* Price of the product
                                                Text(
                                                    '\$2.99',
                                                    style: TextStyle(
                                                        color: Colors.black54,
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),
                                                
                                                //* Image of the product
                                                Image.asset(
                                                    'assets/passionfruit.png',
                                                    height: 150,
                                                    width: 150,
                                                    fit: BoxFit.cover,
                                                ),

                                                //* Add (+) Icon
                                                Container(
                                                    padding: EdgeInsets.all(8),
                                                    margin: EdgeInsets.only(left: 104),

                                                    decoration: BoxDecoration(
                                                        color: Colors.green[800],
                                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomRight: Radius.circular(30))
                                                    ),
                                                
                                                    child: Icon(
                                                        Icons.add,
                                                        size: 30,
                                                        color: Colors.white,
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),

                                    //* For Dragon Fruit
                                    Container(
                                        padding: EdgeInsets.only(left: 15, top: 10),
                                        margin: EdgeInsets.only(right: 20),

                                        decoration: BoxDecoration(
                                            color: Color(0xffffe08e),
                                            borderRadius: BorderRadius.circular(30)
                                        ),
                                        
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,

                                            //* Name, Price and Image of the product
                                            children: [
                                                //* Name of the product
                                                Text(
                                                    'Dragon Fruit',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),

                                                //* Price of the product
                                                Text(
                                                    '\$2.99',
                                                    style: TextStyle(
                                                        color: Colors.black54,
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),
                                                
                                                //* Image of the product
                                                Image.asset(
                                                    'assets/dragonfruit.png',
                                                    height: 150,
                                                    width: 150,
                                                    fit: BoxFit.cover,
                                                ),

                                                //* Add (+) Icon
                                                Container(
                                                    padding: EdgeInsets.all(8),
                                                    margin: EdgeInsets.only(left: 104),

                                                    decoration: BoxDecoration(
                                                        color: Colors.green[800],
                                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomRight: Radius.circular(30))
                                                    ),
                                                
                                                    child: Icon(
                                                        Icons.add,
                                                        size: 30,
                                                        color: Colors.white,
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),

                                    
                                ],
                            ),
                        ),
                    ],
                ),
            ),
        );
    }
}