import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
    final String name;
    final String imagePath;
    final double price;
    final String description;
    final Color color;

    const ProductDetailPage({
        super.key,
        required this.name,
        required this.imagePath,
        required this.price,
        required this.description,
        required this.color,
    });

    @override
    Widget build(BuildContext context) {
        return GestureDetector(
            onHorizontalDragEnd: (details) {
                if (details.primaryVelocity! > 0) {
                    Navigator.pop(context);
                }
            },

            child: Scaffold(
                backgroundColor: Colors.white,
                
                body: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                            Stack(
                                children: [
                                    //* Background Color
                                    Container(
                                        padding: const EdgeInsets.only(top: 40, left: 10),
                                        height: MediaQuery.of(context).size.height / 4,
                                        width: double.infinity,
                                        
                                        decoration: BoxDecoration(
                                            color: color,
                                            borderRadius: const BorderRadius.only(
                                                bottomLeft: Radius.circular(40),
                                                bottomRight: Radius.circular(40),
                                            ),
                                        ),
                                    ),

                                    //* Product Image
                                    Padding(
                                        padding: const EdgeInsets.only(top: 50),
                                        
                                        child: Center(
                                            child: Image.asset(
                                                imagePath,
                                                height: 300,
                                                width: 300,
                                                fit: BoxFit.cover,
                                            ),
                                        ),
                                    ),

                                    //* Go Back
                                    // GestureDetector(
                                    //     onHorizontalDragEnd: (details) {
                                    //         if (details.primaryVelocity! > 0) {
                                    //             Navigator.pop(context);
                                    //         }
                                    //     },
                                    // ),
                                    /*
                                    Container(
                                        margin: EdgeInsets.only(top:40, left: 10),
                                        child: GestureDetector(
                                            onTap: () => Navigator.pop(context),
                                            child: const Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black,),
                                        ),
                                    ),
                                    */
                                ],
                            ),

                            //* Deatils
                            Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        //* Product Name
                                        Text(
                                            name,
                                            style: TextStyle(
                                                color: color,
                                                fontSize: 32,
                                                fontWeight: FontWeight.bold
                                            )
                                        ),
                                        
                                        //* Product Weight
                                        const Text(
                                            'Each (500g - 700g)',
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold
                                            ),
                                        ),
                                        
                                        const SizedBox(height: 20),
                                        
                                        //* Product Description
                                        Text(
                                            description,
                                            style: const TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold
                                            ),
                                        ),
                                
                                        const SizedBox(height: 10),
                                        
                                        //* Delivery Time and Icon
                                        Row(
                                            children: [
                                                // Icon
                                                Container(
                                                    padding: const EdgeInsets.all(10),
                                                    
                                                    decoration: BoxDecoration(
                                                        color: color,
                                                        borderRadius: BorderRadius.circular(10)
                                                    ),
                                                    
                                                    child: const Icon(
                                                        Icons.alarm,
                                                        color: Colors.white,
                                                        size: 35
                                                    ),
                                                ),
                                                
                                                const SizedBox(width: 20),
                                                
                                                // Delivery Time
                                                Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: const [
                                                        Text(
                                                            'Delivery Time',
                                                            style: TextStyle(
                                                                fontSize: 18,
                                                                fontWeight: FontWeight.bold
                                                            )
                                                        ),
                                                        
                                                        Text(
                                                            '20 - 30 Minutes',
                                                            style: TextStyle(
                                                                color: Colors.black54,
                                                                fontSize: 18
                                                            )
                                                        ),
                                                    ],
                                                ),
                                            ],
                                        ),
                                
                                        const SizedBox(height: 20),
                                        
                                        //* Price and Quantity
                                        Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            
                                            children: [
                                                // Price
                                                Text(
                                                    '\$${price.toStringAsFixed(2)}',
                                                    style: const TextStyle(
                                                        fontSize: 28,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),
                                                
                                                // Quantity
                                                Container(
                                                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                                                    
                                                    decoration: BoxDecoration(
                                                        border: Border.all(color: Colors.black26),
                                                        borderRadius: BorderRadius.circular(15),
                                                    ),

                                                    child: const Row(
                                                        children: [
                                                            Icon(Icons.remove),
                                                            SizedBox(width: 20),
                                                            Text(
                                                                '01',
                                                                style: TextStyle(
                                                                    fontSize: 22,
                                                                    fontWeight: FontWeight.bold
                                                                ),
                                                            ),
                                                            SizedBox(width: 20),
                                                            Icon(Icons.add),
                                                        ],
                                                    ),
                                                ),
                                            ],
                                        ),
                                        
                                        const SizedBox(height: 20),
                                        
                                        //* Add To Cart Button
                                        Material(
                                            elevation: 3,
                                            borderRadius: BorderRadius.circular(11),
                                            child: Container(
                                                padding: const EdgeInsets.symmetric(vertical: 8),
                                                width: double.infinity,
                                                
                                                decoration: BoxDecoration(
                                                    color: color,
                                                    borderRadius: BorderRadius.circular(11)
                                                ),
                                                
                                                child: const Center(
                                                    child: Text(
                                                        'Add To Cart',
                                                        style: TextStyle(
                                                            fontSize: 22,
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.white
                                                        ),
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
