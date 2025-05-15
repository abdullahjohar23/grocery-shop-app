import 'package:flutter/material.dart';

class OrangeDetail extends StatefulWidget {
    const OrangeDetail({super.key});

    @override
    State<OrangeDetail> createState() => _OrangeDetailState();
}

class _OrangeDetailState extends State<OrangeDetail> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.white,

            body: SingleChildScrollView(
                child: Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                
                        children: [
                            //! Product Image
                            Stack(
                                children: [
                                    Container(
                                        padding: EdgeInsets.only(top: 40, left: 10),
                                        
                                        height: MediaQuery.of(context).size.height/4,
                                        width: MediaQuery.of(context).size.width,
                                        
                                        decoration: BoxDecoration(
                                            color: Color(0xffffe08e),
                                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)),
                                        ),

                                        //* Go Back
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
                
                                    Padding(
                                        padding: const EdgeInsets.only(top: 50),
                                        child: Center(
                                            child: Image.asset(
                                                'assets/fruits/orange.png',
                                                height: 300,
                                                width: 300,
                                                fit: BoxFit.cover,
                                            ),
                                        ),
                                    ),
                                ],
                            ),
                
                            //! Product Details
                            Padding(
                                padding: const EdgeInsets.all(20),
                
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                
                                    children: [
                                        //* Product Name
                                        Text(
                                            'Orange',
                                            style: TextStyle(
                                                color: Colors.orange,
                                                fontSize: 32,
                                                fontWeight: FontWeight.bold
                                            ),
                                        ),
                
                                        //* Product Weight
                                        Text(
                                            'Each (500g - 700g)',
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold
                                            ),
                                        ),
                
                                        SizedBox(height: 20),
                
                                        //* Product Description
                                        Text(
                                            'Oranges are juicy, sweet, and packed with vitamin C, making them a refreshing and healthy snack. Perfect for juicing or eating fresh, they boost immunity and energy naturally',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold
                                            ),
                                        ),
                
                                        SizedBox(height: 10),
                
                                        //* Delivery Time
                                        Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            
                                            children: [
                                                Container(
                                                    padding: EdgeInsets.all(10),
                
                                                    decoration: BoxDecoration(
                                                        color: Colors.orange,
                                                        borderRadius: BorderRadius.circular(10)
                                                    ),
                                                    child: Icon(
                                                        Icons.alarm,
                                                        color: Colors.white,
                                                        size: 35,
                                                    ),
                                                ),
                
                                                SizedBox(width: 20),
                
                                                Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                
                                                    children: [
                                                        Text(
                                                            'Delivery Time',
                                                            style: TextStyle(
                                                                color: Colors.black,
                                                                fontSize: 18,
                                                                fontWeight: FontWeight.bold
                                                            ),
                                                        ),
                
                                                        Text(
                                                            '20 - 30 Minutes',
                                                            style: TextStyle(
                                                                color: Colors.black54,
                                                                fontSize: 18,
                                                                fontWeight: FontWeight.w500
                                                            ),
                                                        ),
                                                    ],
                                                ),
                                            ],
                                        ),
                                        
                                        SizedBox(height: 20),
                
                                        //* Price and Add/Remove
                                        Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                            children: [
                                                // Price
                                                Text(
                                                    '\$1.99',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 28,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),

                                                // Add or Remove
                                                Container(
                                                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Colors.black26
                                                        ),
                                                        borderRadius: BorderRadius.circular(15)
                                                    ),

                                                    child: Row(
                                                        children: [
                                                            Icon(Icons.remove),

                                                            SizedBox(width: 20),

                                                            Text(
                                                                '01',
                                                                style: TextStyle(
                                                                    color: Colors.black,
                                                                    fontSize: 22,
                                                                    fontWeight: FontWeight.bold
                                                                ),
                                                            ),

                                                            SizedBox(width: 20),

                                                            Icon(Icons.add),
                                                        ]
                                                    ),
                                                ),
                                            ],
                                        ),

                                        SizedBox(height: 20),

                                        //* Add Button
                                        Container(
                                            padding: EdgeInsets.symmetric(vertical: 8),

                                            decoration: BoxDecoration(
                                                color: Color(0xffffe08e),
                                                borderRadius: BorderRadius.circular(11)
                                            ),

                                            width: MediaQuery.of(context).size.width,

                                            child: Center(
                                                child: Text(
                                                    'Add To Cart',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 22,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                        ],
                    ),
                ),
            ),
        );
    }
}