import 'package:flutter/material.dart';
import 'package:grocery_shop_app/pages/product_design_card.dart';
import 'package:grocery_shop_app/pages/product_detail_page.dart';

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
                                    //* Go Back, Name and Profile
                                    Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                
                                        //* Name & Message under it
                                        children: [
                                            //* Name Label
                                            Row(
                                                children: [
                                                    //* Go Back
                                                    GestureDetector(
                                                        child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            
                                                            children: [
                                                                GestureDetector(
                                                                    onTap: () {
                                                                        Navigator.pop(context);
                                                                    },
                                                                    child: Icon(Icons.arrow_back_ios_new_outlined)
                                                                ),
                                                            ]
                                                        ),
                                                    ),

                                                    SizedBox(width: 10),

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
                            
                            //! * ListView of the Fruits
                            //* 'Fruits' Label
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

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

                            //* The Fruit List
                            Container(
                                height: 261,
                
                                child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    
                                    //* Fruits
                                    children: [
                                        //* All design for a single product
                                        
                                        //* For Strawberry
                                        ProductCard(
                                            name: 'Strawberry',
                                            imagePath: 'assets/fruits/strawberry.png',
                                            price: 2.99,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Strawberry',
                                                            imagePath: 'assets/fruits/strawberry.png',
                                                            price: 2.99,
                                                            description: 'Sweet and juicy strawberries packed with vitamins.',
                                                            color: Color(0xFFDE3163),
                                                        ),
                                                        
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),
                                        
                                        //* For Peach
                                        ProductCard(
                                            name: 'Peach',
                                            imagePath: 'assets/fruits/peach.png',
                                            price: 1.95,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Peach',
                                                            imagePath: 'assets/fruits/peach.png',
                                                            price: 1.95,
                                                            description: 'Sweet and juicy peaches packed with vitamins.',
                                                            color: Color(0xFFFF7F50),
                                                        ),
                                                        
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),
                                        
                                        //* For Pear
                                        ProductCard(
                                            name: 'Pear',
                                            imagePath: 'assets/fruits/pear.png',
                                            price: 0.97,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Peach',
                                                            imagePath: 'assets/fruits/pear.png',
                                                            price: 0.97,
                                                            description: 'Sweet and juicy pear packed with vitamins.',
                                                            color: Color(0xFFB8EE7B),
                                                        ),
                                                        
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),
                                       
                                        //* For Pine Apple
                                        ProductCard(
                                            name: 'Pine Apple',
                                            imagePath: 'assets/fruits/pineapple.png',
                                            price: 0.89,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Pine Apple',
                                                            imagePath: 'assets/fruits/pineapple.png',
                                                            price: 0.89,
                                                            description: 'Sweet and juicy pine apples packed with vitamins.',
                                                            color: Color(0xFFF4D03F),
                                                        ),
                                                        
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),
                                        
                                        //* For Orange
                                        ProductCard(
                                            name: 'Orange',
                                            imagePath: 'assets/fruits/orange.png',
                                            price: 1.89,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Orange',
                                                            imagePath: 'assets/fruits/orange.png',
                                                            price: 1.89,
                                                            description: 'Sweet and juicy oranges packed with vitamins.',
                                                            color: Color(0xFFFFC04D),
                                                        ),
                                                        
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),
                                        
                                        //* For Apple
                                        ProductCard(
                                            name: 'Apple',
                                            imagePath: 'assets/fruits/apple.png',
                                            price: 2.10,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Apple',
                                                            imagePath: 'assets/fruits/apple.png',
                                                            price: 2.10,
                                                            description: 'Sweet and juicy apples packed with vitamins.',
                                                            color: Color(0xFFF1948A),
                                                        ),
                                                        
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),
                                        
                                        //* For Cherry
                                        ProductCard(
                                            name: 'Cherry',
                                            imagePath: 'assets/fruits/cherry.png',
                                            price: 3.00,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Cherry',
                                                            imagePath: 'assets/fruits/cherry.png',
                                                            price: 3.00,
                                                            description: 'Sweet and juicy cherries packed with vitamins.',
                                                            color: Color(0xFFE74C3C),
                                                        ),
                                                        
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),
                                        
                                        //* For Grapes
                                        ProductCard(
                                            name: 'Grapes',
                                            imagePath: 'assets/fruits/grapes.png',
                                            price: 2.49,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Grapes',
                                                            imagePath: 'assets/fruits/grapes.png',
                                                            price: 2.49,
                                                            description: 'Sweet and juicy grapes packed with vitamins.',
                                                            color: Color(0xFFA569BD),
                                                        ),
                                                        
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),

                                        //* For Kiwi
                                        ProductCard(
                                            name: 'Kiwi',
                                            imagePath: 'assets/fruits/kiwi.png',
                                            price: 1.29,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Kiwi',
                                                            imagePath: 'assets/fruits/kiwi.png',
                                                            price: 1.29,
                                                            description: 'Sweet and juicy kiwis packed with vitamins.',
                                                            color: Color(0xFFB4E364),
                                                        ),
                                                        
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),
                                        
                                        //* For Mango
                                        ProductCard(
                                            name: 'Mango',
                                            imagePath: 'assets/fruits/mango.png',
                                            price: 1.50,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Mango',
                                                            imagePath: 'assets/fruits/mango.png',
                                                            price: 1.50,
                                                            description: 'Sweet and juicy mangoes packed with vitamins.',
                                                            color: Color(0xFFE8D27A),
                                                        ),
                                                        
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),
                                        
                                        //* For Lychee
                                        ProductCard(
                                            name: 'Lychee',
                                            imagePath: 'assets/fruits/lychee.png',
                                            price: 2.00,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Lychee',
                                                            imagePath: 'assets/fruits/lychee.png',
                                                            price: 2.00,
                                                            description: 'Sweet and juicy lychees packed with vitamins.',
                                                            color: Color(0xFFF2B8A0),
                                                        ),
                                                        
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),
                                        
                                        //* For Rose Apple
                                        ProductCard(
                                            name: 'Rose Apple',
                                            imagePath: 'assets/fruits/roseapple.png',
                                            price: 2.49,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Rose Apple',
                                                            imagePath: 'assets/fruits/roseapple.png',
                                                            price: 2.49,
                                                            description: 'Sweet and juicy grapes packed with vitamins.',
                                                            color: Color(0xFFE27B87),
                                                        ),
                                                        
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),
                                        
                                        //* For Water Melon
                                        ProductCard(
                                            name: 'Water Melon',
                                            imagePath: 'assets/fruits/watermelon.png',
                                            price: 1.20,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Water Melon',
                                                            imagePath: 'assets/fruits/watermelon.png',
                                                            price: 1.20,
                                                            description: 'Sweet and juicy watermelons packed with vitamins.',
                                                            color: Color(0xFFFF6F61),
                                                        ),
                                                        
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),
                                        
                                        //* For Avocado
                                        ProductCard(
                                            name: 'Avocado',
                                            imagePath: 'assets/fruits/avocado.png',
                                            price: 2.20,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Avocado',
                                                            imagePath: 'assets/fruits/avocado.png',
                                                            price: 2.20,
                                                            description: 'Sweet and juicy avocados packed with vitamins.',
                                                            color: Color(0xFF7AC68B),
                                                        ),
                                                        
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),
                                        
                                        //* For Banana
                                        ProductCard(
                                            name: 'Banana',
                                            imagePath: 'assets/fruits/banana.png',
                                            price: 1.00,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Banana',
                                                            imagePath: 'assets/fruits/banana.png',
                                                            price: 1.00,
                                                            description: 'Sweet and juicy bananas packed with vitamins.',
                                                            color: Color(0xFFF7E56A),
                                                        ),
                                                        
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),
                                        
                                        //* For Blue Berry
                                        ProductCard(
                                            name: 'Blue Berry',
                                            imagePath: 'assets/fruits/blueberry.png',
                                            price: 2.50,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Blue Berry',
                                                            imagePath: 'assets/fruits/blueberry.png',
                                                            price: 2.50,
                                                            description: 'Sweet and juicy blueberries packed with vitamins.',
                                                            color: Color(0xFF5A77A1),
                                                        ),
                                                        
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),
                                        
                                        //* For Guava
                                        ProductCard(
                                            name: 'Guava',
                                            imagePath: 'assets/fruits/guava.png',
                                            price: 1.30,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Guava',
                                                            imagePath: 'assets/fruits/guava.png',
                                                            price: 1.30,
                                                            description: 'Sweet and juicy guavas packed with vitamins.',
                                                            color: Color(0xFFA8D18D),
                                                        ),
                                                        
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),
                                        
                                        //* For Pomogranate
                                        ProductCard(
                                            name: 'Pomogranate',
                                            imagePath: 'assets/fruits/pomogranate.png',
                                            price: 2.85,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Pomogranate',
                                                            imagePath: 'assets/fruits/pomogranate.png',
                                                            price: 2.85,
                                                            description: 'Sweet and juicy pomogranates packed with vitamins.',
                                                            color: Color(0xFFC7384F),
                                                        ),
                                                        
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),
                                        
                                        //* For Star Fruit
                                        ProductCard(
                                            name: 'Star Fruit',
                                            imagePath: 'assets/fruits/starfruit.png',
                                            price: 1.75,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Star Fruit',
                                                            imagePath: 'assets/fruits/starfruit.png',
                                                            price: 1.75,
                                                            description: 'Sweet and juicy starfruits packed with vitamins.',
                                                            color: Color(0xFFF2E661),
                                                        ),
                                                        
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),
                                        
                                        //* For Raspberry
                                        ProductCard(
                                            name: 'Raspberry',
                                            imagePath: 'assets/fruits/raspberry.png',
                                            price: 2.40,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Raspberry',
                                                            imagePath: 'assets/fruits/raspberry.png',
                                                            price: 2.40,
                                                            description: 'Sweet and juicy raspberries packed with vitamins.',
                                                            color: Color(0xFFD93A67),
                                                        ),
                                                        
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),
                                        
                                        //* For Passion Fruit
                                        ProductCard(
                                            name: 'Passion Fruit',
                                            imagePath: 'assets/fruits/passionfruit.png',
                                            price: 2.10,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Passion Fruit',
                                                            imagePath: 'assets/fruits/passionfruit.png',
                                                            price: 2.10,
                                                            description: 'Sweet and juicy passionfruits packed with vitamins.',
                                                            color: Color(0xFFE3B93E),
                                                        ),
                                                        
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),
                                        
                                        //* For Dragon Fruit
                                        ProductCard(
                                            name: 'Dragon Fruit',
                                            imagePath: 'assets/fruits/dragonfruit.png',
                                            price: 2.50,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Dragon Fruit',
                                                            imagePath: 'assets/fruits/dragonfruit.png',
                                                            price: 2.50,
                                                            description: 'Sweet and juicy dragonfruits packed with vitamins.',
                                                            color: Color(0xFFF06292),
                                                        ),
                                                        
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),
                                        
                                        //* For Lemon
                                        ProductCard(
                                            name: 'Lemon',
                                            imagePath: 'assets/fruits/lemon.png',
                                            price: 1.20,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Lemon',
                                                            imagePath: 'assets/fruits/lemon.png',
                                                            price: 1.20,
                                                            description: 'Fresh Lemon packed with vitamins.',
                                                            color: Color(0xfff9e34b),
                                                        ),
                                                        
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
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

                            //* The Vegetable List
                            Container(
                                height: 261,

                                child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    
                                    children: [
                                        //* All design for a single product
                                        
                                        //* For Capsicum
                                        ProductCard(
                                            name: 'Capsicum',
                                            imagePath: 'assets/vegetables/capsicum.png',
                                            price: 1.60,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Capsicum',
                                                            imagePath: 'assets/vegetables/capsicum.png',
                                                            price: 1.60,
                                                            description: 'Fresh capsicum packed with vitamins.',
                                                            color: Color(0xFF4B7B3F),
                                                        ),
                                                        
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),

                                        //* Potato
                                        ProductCard(
                                            name: 'Potato',
                                            imagePath: 'assets/vegetables/potato.png',
                                            price: 0.90,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Potato',
                                                            imagePath: 'assets/vegetables/potato.png',
                                                            price: 0.90,
                                                            description: 'Fresh and starchy potatoes, perfect for any dish.',
                                                            color: Color(0xFF8B6E3B),
                                                        ),
                                                        
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),

                                        //* Tomato
                                        ProductCard(
                                            name: 'Tomato',
                                            imagePath: 'assets/vegetables/tomato.png',
                                            price: 1.10,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Tomato',
                                                            imagePath: 'assets/vegetables/tomato.png',
                                                            price: 1.10,
                                                            description: 'Juicy red tomatoes, great for salads and sauces.',
                                                            color: Color(0xFFC63727), // richer shade for detail page
                                                        ),
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),

                                        //* Garlic
                                        ProductCard(
                                            name: 'Garlic',
                                            imagePath: 'assets/vegetables/garlic.png',
                                            price: 1.50,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Garlic',
                                                            imagePath: 'assets/vegetables/garlic.png',
                                                            price: 1.50,
                                                            description: 'Aromatic garlic bulbs to flavor your dishes.',
                                                            color: Color(0xffcfc7bd),
                                                        ),
                                                        
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),

                                        //* Ginger
                                        ProductCard(
                                            name: 'Ginger',
                                            imagePath: 'assets/vegetables/ginger.png',
                                            price: 1.30,
                                            color: Color(0xffffe08e),  // lighter shade for card
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Ginger',
                                                            imagePath: 'assets/vegetables/ginger.png',
                                                            price: 1.30,
                                                            description: 'Fresh ginger root to add zest and flavor.',
                                                            color: Color(0xFFCDAD71), // richer shade for detail page
                                                        ),
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),

                                        //* Onion
                                        ProductCard(
                                            name: 'Onion',
                                            imagePath: 'assets/vegetables/onion.png',
                                            price: 0.80,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Onion',
                                                            imagePath: 'assets/vegetables/onion.png',
                                                            price: 0.80,
                                                            description: 'Crisp and flavorful onions for every recipe.',
                                                            color: Color(0xffde3163),
                                                        ),
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),

                                        //* Carrot
                                        ProductCard(
                                            name: 'Carrot',
                                            imagePath: 'assets/vegetables/carrot.png',
                                            price: 1.00,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Carrot',
                                                            imagePath: 'assets/vegetables/carrot.png',
                                                            price: 1.00,
                                                            description: 'Crunchy and sweet carrots, perfect for snacks.',
                                                            color: Color(0xffcd6600),
                                                        ),
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),

                                        //* Beetroot
                                        ProductCard(
                                            name: 'Beetroot',
                                            imagePath: 'assets/vegetables/beetroot.png',
                                            price: 1.20,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Beetroot',
                                                            imagePath: 'assets/vegetables/beetroot.png',
                                                            price: 1.20,
                                                            description: 'Earthy and sweet beetroots, rich in nutrients.',
                                                            color: Color(0xff9c2547),
                                                        ),
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),

                                        //* For Mushroom
                                        ProductCard(
                                            name: 'Mushroom',
                                            imagePath: 'assets/vegetables/mushroom.png',
                                            price: 1.10,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Mushroom',
                                                            imagePath: 'assets/vegetables/mushroom.png',
                                                            price: 1.10,
                                                            description: 'Fresh mushrooms packed with vitamins.',
                                                            color: Color(0xFFB7A48C),
                                                        ),
                                                        
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),

                                        //* Eggplant
                                        ProductCard(
                                            name: 'Eggplant',
                                            imagePath: 'assets/vegetables/eggplant.png',
                                            price: 1.30,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Eggplant',
                                                            imagePath: 'assets/vegetables/eggplant.png',
                                                            price: 1.30,
                                                            description: 'Smooth and tender eggplants, ideal for grilling.',
                                                            color: Color(0xff6f3975),
                                                        ),
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),

                                        //* Cucumber
                                        ProductCard(
                                            name: 'Cucumber',
                                            imagePath: 'assets/vegetables/cucumber.png',
                                            price: 0.75,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Cucumber',
                                                            imagePath: 'assets/vegetables/cucumber.png',
                                                            price: 0.75,
                                                            description: 'Cool and refreshing cucumbers for salads.',
                                                            color: Color(0xff689f38),
                                                        ),
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),

                                        //* Jalapeno
                                        ProductCard(
                                            name: 'Jalapeno',
                                            imagePath: 'assets/vegetables/jalapeno.png',
                                            price: 1.60,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Jalapeno',
                                                            imagePath: 'assets/vegetables/jalapeno.png',
                                                            price: 1.60,
                                                            description: 'Spicy jalapenos to add heat to your meals.',
                                                            color: Color(0xff357a38),
                                                        ),
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),

                                        //* Pumpkin
                                        ProductCard(
                                            name: 'Pumpkin',
                                            imagePath: 'assets/vegetables/pumpkin.png',
                                            price: 1.10,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Pumpkin',
                                                            imagePath: 'assets/vegetables/pumpkin.png',
                                                            price: 1.10,
                                                            description: 'Sweet pumpkin, perfect for soups and pies.',
                                                            color: Color(0xffb26500),
                                                        ),
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),

                                        //* Cabbage
                                        ProductCard(
                                            name: 'Cabbage',
                                            imagePath: 'assets/vegetables/cabbage.png',
                                            price: 0.85,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Cabbage',
                                                            imagePath: 'assets/vegetables/cabbage.png',
                                                            price: 0.85,
                                                            description: 'Crunchy cabbage, great for salads and cooking.',
                                                            color: Color(0xff7ba66d),
                                                        ),
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),

                                        //* Cauliflower
                                        ProductCard(
                                            name: 'Cauliflower',
                                            imagePath: 'assets/vegetables/cauliflower.png',
                                            price: 1.00,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Cauliflower',
                                                            imagePath: 'assets/vegetables/cauliflower.png',
                                                            price: 1.00,
                                                            description: 'Fresh cauliflower heads, perfect for healthy meals.',
                                                            color: Color(0xffb4b4b4),
                                                        ),
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),

                                        //* Broccoli
                                        ProductCard(
                                            name: 'Broccoli',
                                            imagePath: 'assets/vegetables/broccoli.png',
                                            price: 1.25,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Broccoli',
                                                            imagePath: 'assets/vegetables/broccoli.png',
                                                            price: 1.25,
                                                            description: 'Fresh broccoli rich in vitamins and minerals.',
                                                            color: Color(0xff567d29),
                                                        ),
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),

                                        //* Ladyfinger
                                        ProductCard(
                                            name: 'Ladyfinger',
                                            imagePath: 'assets/vegetables/ladyfinger.png',
                                            price: 1.00,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Ladyfinger',
                                                            imagePath: 'assets/vegetables/ladyfinger.png',
                                                            price: 1.00,
                                                            description: 'Fresh ladyfinger pods, great for stews and curries.',
                                                            color: Color(0xff3e704d),
                                                        ),
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),

                                        //* Lettuce
                                        ProductCard(
                                            name: 'Lettuce',
                                            imagePath: 'assets/vegetables/lettuce.png',
                                            price: 0.90,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Lettuce',
                                                            imagePath: 'assets/vegetables/lettuce.png',
                                                            price: 0.90,
                                                            description: 'Fresh lettuce leaves, perfect for salads.',
                                                            color: Color(0xff5da36f),
                                                        ),
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),

                                        //* Parsley
                                        ProductCard(
                                            name: 'Parsley',
                                            imagePath: 'assets/vegetables/parsley.png',
                                            price: 1.10,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Parsley',
                                                            imagePath: 'assets/vegetables/parsley.png',
                                                            price: 1.10,
                                                            description: 'Fresh parsley leaves to garnish and flavor dishes.',
                                                            color: Color(0xff4b7b26),
                                                        ),
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
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

                            //* The Bakery List
                            Container(
                                height: 261,

                                child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    
                                    children: [
                                        //* All design for a single product
                                        
                                        //* For Cupcake
                                        ProductCard(
                                            name: 'Cupcake',
                                            imagePath: 'assets/bakeries/cupcake.png',
                                            price: 1.20,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Cupcake',
                                                            imagePath: 'assets/bakeries/Cupcake.png',
                                                            price: 1.20,
                                                            description: 'Fresh different flavored cupcakes.',
                                                            color: Color(0xFFDE3163),
                                                        ),
                                                        
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),

                                        //* For Muffin
                                        ProductCard(
                                            name: 'Muffin',
                                            imagePath: 'assets/bakeries/muffin.png',
                                            price: 1.10,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Muffin',
                                                            imagePath: 'assets/bakeries/muffin.png',
                                                            price: 1.10,
                                                            description: 'Soft and fluffy muffins in assorted flavors.',
                                                            color: Color(0xffd2691e),
                                                        ),
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),

                                        //* For Cookies
                                        ProductCard(
                                            name: 'Cookies',
                                            imagePath: 'assets/bakeries/cookie.png',
                                            price: 0.90,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Cookies',
                                                            imagePath: 'assets/bakeries/cookie.png',
                                                            price: 0.90,
                                                            description: 'Crunchy cookies loaded with chocolate chips.',
                                                            color: Color(0xffcd853f),
                                                        ),
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),

                                        //* For Donut
                                        ProductCard(
                                            name: 'Donut',
                                            imagePath: 'assets/bakeries/donut.png',
                                            price: 1.30,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Donut',
                                                            imagePath: 'assets/bakeries/donut.png',
                                                            price: 1.30,
                                                            description: 'Glazed donuts with sweet and colorful toppings.',
                                                            color: Color(0xffff69b4),
                                                        ),
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),

                                        //* For Waffle
                                        ProductCard(
                                            name: 'Waffle',
                                            imagePath: 'assets/bakeries/waffle.png',
                                            price: 1.50,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Waffle',
                                                            imagePath: 'assets/bakeries/waffle.png',
                                                            price: 1.50,
                                                            description: 'Crispy golden waffles served warm.',
                                                            color: Color(0xffe3a857),
                                                        ),
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),

                                        //* For Chocolate Slices Cake
                                        ProductCard(
                                            name: 'Cake Slice',
                                            imagePath: 'assets/bakeries/chocolatecakeslice.png',
                                            price: 1.80,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Cake Slice',
                                                            imagePath: 'assets/bakeries/chocolatecakeslice.png',
                                                            price: 1.80,
                                                            description: 'Rich and moist chocolate cake slices.',
                                                            color: Color(0xff5c4033),
                                                        ),
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),

                                        //* For Chocolate Cake
                                        ProductCard(
                                            name: 'Chocolate Cake',
                                            imagePath: 'assets/bakeries/chocolatecake.png',
                                            price: 2.50,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Chocolate Cake',
                                                            imagePath: 'assets/bakeries/chocolatecake.png',
                                                            price: 2.50,
                                                            description: 'Decadent chocolate cake layered with ganache.',
                                                            color: Color(0xff381819),
                                                        ),
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),

                                        //* For Pancake
                                        ProductCard(
                                            name: 'Pancake',
                                            imagePath: 'assets/bakeries/pancake.png',
                                            price: 1.40,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Pancake',
                                                            imagePath: 'assets/bakeries/pancake.png',
                                                            price: 1.40,
                                                            description: 'Fluffy pancakes served with maple syrup.',
                                                            color: Color(0xffd2b48c)
                                                        ),
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
                                        ),

                                        //* For Red Velvet Cake
                                        ProductCard(
                                            name: 'Red Velvet Cake',
                                            imagePath: 'assets/bakeries/redvelvetcake.png',
                                            price: 2.20,
                                            color: Color(0xffffe08e),
                                            onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        pageBuilder: (_, animation, __) => ProductDetailPage(
                                                            name: 'Red Velvet Cake',
                                                            imagePath: 'assets/bakeries/redvelvetcake.png',
                                                            price: 2.20,
                                                            description: 'Classic red velvet cake with cream cheese frosting.',
                                                            color: Color(0xffb22222),
                                                        ),
                                                        transitionsBuilder: (_, animation, __, child) {
                                                            return SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
                                                                child: child,
                                                            );
                                                        },
                                                    ),
                                                );
                                            },
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
