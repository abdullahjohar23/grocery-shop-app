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

            body: SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.only(top: 50, left: 20, right: 20),
                
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

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
                                                        'assets/others/wave.png',
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
                                            'assets/others/boy.jpg',
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
                                padding: EdgeInsets.only(left: 20, top: 3),
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
                            
                            //! * ListView of the Fruis
                            //* 'Fruits' Label
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                                //* Top Selling Label
                                children: [
                                    Text(
                                        'Fruits',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                        ),
                                    ),
                                ],
                            ),
                
                            SizedBox(height: 20),
                   
                            Container(
                                height: 261,
                
                                child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    
                                    //* Fruits
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
                                                        'assets/fruits/strawberry.png',
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
                                                        'assets/fruits/peach.png',
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
                                                        'assets/fruits/pear.png',
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
                                                        'assets/fruits/pineapple.png',
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
                                                        'assets/fruits/orange.png',
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
                                                        'assets/fruits/apple.png',
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
                                                        'assets/fruits/cherry.png',
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
                                                        'assets/fruits/grapes.png',
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
                                                        'assets/fruits/kiwi.png',
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
                                                        'assets/fruits/mango.png',
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
                                                        'assets/fruits/lychee.png',
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
                                                        'assets/fruits/roseapple.png',
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
                                                        'assets/fruits/watermelon.png',
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
                                                        'assets/fruits/avocado.png',
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
                                                        'assets/fruits/banana.png',
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
                                                        'assets/fruits/blueberry.png',
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
                                                        'assets/fruits/guava.png',
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
                                                        'assets/fruits/pomogranate.png',
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
                                                        'assets/fruits/starfruit.png',
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
                                                        'assets/fruits/raspberry.png',
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
                                                        'assets/fruits/passionfruit.png',
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
                                                        'assets/fruits/dragonfruit.png',
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
                            //! * End of ListView of Fruits
                
                            SizedBox(height: 20),
                        
                            //! * Start of ListView of Vegetables
                            //* 'Vegetable' Label
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                //* Vegetables
                                children: [
                                    Text(
                                        'Vegetables',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                        ),
                                    ),
                                ],
                            ),

                            SizedBox(height: 20),

                            Container(
                                height: 261,

                                child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    
                                    children: [
                                        //* All design for a single product
                                        
                                        //* For Mushroom
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
                                                        'Mushroom',
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
                                                        'assets/vegetables/mushroom.png',
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

                                        //* For Capsicum
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
                                                        'Capsicum',
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
                                                        'assets/vegetables/capsicum.png',
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

                                        //* For Lemon
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
                                                        'Lemon',
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
                                                        'assets/vegetables/lemon.png',
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

                                        //* For Potato
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
                                                        'Potato',
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
                                                        'assets/vegetables/potato.png',
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

                                        //* For Tomato
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
                                                        'Tomato',
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
                                                        'assets/vegetables/tomato.png',
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

                                        //* For Garlic
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
                                                        'Garlic',
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
                                                        'assets/vegetables/garlic.png',
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

                                        //* For Ginger
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
                                                        'Ginger',
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
                                                        'assets/vegetables/ginger.png',
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

                                        //* For Onion
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
                                                        'Onion',
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
                                                        'assets/vegetables/onion.png',
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

                                        //* For Carrot
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
                                                        'Carrot',
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
                                                        'assets/vegetables/carrot.png',
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

                                        //* For Beetroot
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
                                                        'Beetroot',
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
                                                        'assets/vegetables/beetroot.png',
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

                                        //* For Eggplant
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
                                                        'Eggplant',
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
                                                        'assets/vegetables/eggplant.png',
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

                                        //* For Cucumber
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
                                                        'Cucumber',
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
                                                        'assets/vegetables/cucumber.png',
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

                                        //* For Jalapeno
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
                                                        'Jalapeno',
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
                                                        'assets/vegetables/jalapeno.png',
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

                                        //* For Pumpkin
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
                                                        'Pumpkin',
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
                                                        'assets/vegetables/pumpkin.png',
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

                                        //* For Cabbage
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
                                                        'Cabbage',
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
                                                        'assets/vegetables/cabbage.png',
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

                                        //* For Cauliflower
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
                                                        'Cauliflower',
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
                                                        'assets/vegetables/cauliflower.png',
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

                                        //* For Broccoli
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
                                                        'Broccoli',
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
                                                        'assets/vegetables/broccoli.png',
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

                                        //* For Ladyfinger
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
                                                        'Ladyfinger',
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
                                                        'assets/vegetables/ladyfinger.png',
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

                                        //* For Lettuce
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
                                                        'Lettuce',
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
                                                        'assets/vegetables/lettuce.png',
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

                                        //* For Parsley
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
                                                        'Parsley',
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
                                                        'assets/vegetables/parsley.png',
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

                                        //* Add other If you want                                        
                                    ],
                                ),
                            ),
                            //! End of ListView of Vegetables

                            SizedBox(height: 20),

                            //! * Start of ListView of Bakery Items
                            //* 'Bakery Items' Label
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                //* Bakery Items
                                children: [
                                    Text(
                                        'Bakery Items',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                        ),
                                    ),
                                ],
                            ),

                            SizedBox(height: 20),

                            Container(
                                height: 261,

                                child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    
                                    children: [
                                        //* All design for a single product
                                        
                                        //* For Cupcake
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
                                                        'Cupcake',
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
                                                        'assets/bakeries/cupcake.png',
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

                                        //* For Muffins
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
                                                        'Muffin',
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
                                                        'assets/bakeries/muffin.png',
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

                                        //* For Cookies
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
                                                        'Cookies',
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
                                                        'assets/bakeries/cookie.png',
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

                                        //* For Donut
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
                                                        'Donuts',
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
                                                        'assets/bakeries/donut.png',
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

                                        //* For Waffle
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
                                                        'Waffle',
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
                                                        'assets/bakeries/waffle.png',
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

                                        //* For Chocolate Cake Slice
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
                                                        'Cake Slice',
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
                                                        'assets/bakeries/chocolatecakeslice.png',
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

                                        //* For Chocolate Cake
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
                                                        'Chocolate Cake',
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
                                                        'assets/bakeries/chocolatecake.png',
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

                                        //* For Pancake
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
                                                        'Pancake',
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
                                                        'assets/bakeries/panecake.png',
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

                                        //* For Red Velvet Cake
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
                                                        'Redvelvet Cake',
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
                                                        'assets/bakeries/redvelvetcake.png',
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

                                        //* Add other If you want                                        
                                    ],
                                ),
                            ),
                            //! End of ListView of Bakery Items

                            SizedBox(height: 20),

                            //! *Near You
                            Text(
                                'Near You',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold
                                ),
                            ),

                            //!
                            Text(
                                '28+ Shops',
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                            ),

                            SizedBox(height: 10),

                            //! Start of Shop1 details
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(20),

                                        child: Image.asset(
                                            'assets/others/grocery1.jpg',
                                            height: 90,
                                            width: 90,
                                            fit: BoxFit.cover,
                                        ),
                                    ),

                                    SizedBox(width: 10),

                                    //* Shop Name and Time
                                    Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,

                                        children: [
                                            Text(
                                                'Food 365 Vlley',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold
                                                ),
                                            ),

                                            SizedBox(height: 3),

                                            Text(
                                                '9 am to 11 pm',
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold
                                                ),
                                            ),

                                            SizedBox(height: 5),

                                            Row(
                                                children: [
                                                    Icon(
                                                        Icons.star,
                                                        color: Colors.black
                                                    ),
                                                    
                                                    Text(
                                                        '4.8 | ',
                                                        style: TextStyle(
                                                            color: Colors.black54,
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.bold
                                                        ),
                                                    ),

                                                    Icon(
                                                        Icons.location_on,
                                                        color: Colors.black
                                                    ),
                                                    
                                                    Text(
                                                        '1.5 km',
                                                        style: TextStyle(
                                                            color: Colors.black54,
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.bold
                                                        ),
                                                    ),
                                                ],
                                            ),
                                        ],
                                    ),
                                ],
                            ),

                            SizedBox(height: 20),

                            //! Start of Shop2 details
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(20),

                                        child: Image.asset(
                                            'assets/others/grocery2.jpg',
                                            height: 90,
                                            width: 90,
                                            fit: BoxFit.cover,
                                        ),
                                    ),

                                    SizedBox(width: 10),

                                    //* Shop Name and Time
                                    Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,

                                        children: [
                                            Text(
                                                'Basket Super Shop',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold
                                                ),
                                            ),

                                            SizedBox(height: 3),

                                            Text(
                                                '9 am to 10 pm',
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold
                                                ),
                                            ),

                                            SizedBox(height: 5),

                                            Row(
                                                children: [
                                                    Icon(
                                                        Icons.star,
                                                        color: Colors.black
                                                    ),
                                                    
                                                    Text(
                                                        '4.7',
                                                        style: TextStyle(
                                                            color: Colors.black54,
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.bold
                                                        ),
                                                    ),

                                                    Icon(
                                                        Icons.location_on,
                                                        color: Colors.black
                                                    ),
                                                    
                                                    Text(
                                                        '2.2 km',
                                                        style: TextStyle(
                                                            color: Colors.black54,
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.bold
                                                        ),
                                                    ),
                                                ],
                                            ),
                                        ],
                                    ),
                                ],
                            ),

                            SizedBox(height: 20),

                            //! Start of Shop3 details
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(20),

                                        child: Image.asset(
                                            'assets/others/grocery3.jpg',
                                            height: 90,
                                            width: 90,
                                            fit: BoxFit.cover,
                                        ),
                                    ),

                                    SizedBox(width: 10),

                                    //* Shop Name and Time
                                    Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,

                                        children: [
                                            Text(
                                                'Grocery King',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold
                                                ),
                                            ),

                                            SizedBox(height: 3),

                                            Text(
                                                '9 am to 12 am',
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold
                                                ),
                                            ),

                                            SizedBox(height: 5),

                                            Row(
                                                children: [
                                                    Icon(
                                                        Icons.star,
                                                        color: Colors.black
                                                    ),
                                                    
                                                    Text(
                                                        '4.9',
                                                        style: TextStyle(
                                                            color: Colors.black54,
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.bold
                                                        ),
                                                    ),

                                                    Icon(
                                                        Icons.location_on,
                                                        color: Colors.black
                                                    ),
                                                    
                                                    Text(
                                                        '0.7 km',
                                                        style: TextStyle(
                                                            color: Colors.black54,
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.bold
                                                        ),
                                                    ),
                                                ],
                                            ),
                                        ],
                                    ),
                                ],
                            ),

                            SizedBox(height: 20),

                            //! Start of Shop4 details
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(20),

                                        child: Image.asset(
                                            'assets/others/grocery2.jpg',
                                            height: 90,
                                            width: 90,
                                            fit: BoxFit.cover,
                                        ),
                                    ),

                                    SizedBox(width: 10),

                                    //* Shop Name and Time
                                    Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,

                                        children: [
                                            Text(
                                                'Freshland',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold
                                                ),
                                            ),

                                            SizedBox(height: 3),

                                            Text(
                                                '9 am to 11 pm',
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold
                                                ),
                                            ),

                                            SizedBox(height: 5),

                                            Row(
                                                children: [
                                                    Icon(
                                                        Icons.star,
                                                        color: Colors.black
                                                    ),
                                                    
                                                    Text(
                                                        '4.5',
                                                        style: TextStyle(
                                                            color: Colors.black54,
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.bold
                                                        ),
                                                    ),

                                                    Icon(
                                                        Icons.location_on,
                                                        color: Colors.black
                                                    ),
                                                    
                                                    Text(
                                                        '2.3 km',
                                                        style: TextStyle(
                                                            color: Colors.black54,
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.bold
                                                        ),
                                                    ),
                                                ],
                                            ),
                                        ],
                                    ),
                                ],
                            ),

                            SizedBox(height: 100),
                        ],
                    ),
                ),
            ),
        );
    }
}