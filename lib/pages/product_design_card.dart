import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
    final String name;
    final String imagePath;
    final double price;
    final Color color;
    final VoidCallback onTap;

    const ProductCard({
        super.key,
        required this.name,
        required this.imagePath,
        required this.price,
        required this.color,
        required this.onTap,
    });

    @override
    Widget build(BuildContext context) {
        return GestureDetector(
            onTap: onTap,
            
            child: Container(
                padding: const EdgeInsets.only(left: 15, top: 10),
                margin: const EdgeInsets.only(right: 20),
                
                decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(30),
                ),
                
                //* Product Name, Price, Image and + (Add) Button
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    
                    children: [
                        // Product Name
                        Text(
                            name,
                            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        
                        // Price
                        Text(
                            '\$${price.toStringAsFixed(2)}',
                            style: const TextStyle(color: Colors.black54, fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        
                        // Price
                        Image.asset(
                            imagePath,
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                        ),
                        
                        // + (Add) button
                        Container(
                            padding: const EdgeInsets.all(8),
                            margin: const EdgeInsets.only(left: 104),
                            
                            decoration: BoxDecoration(
                                color: Colors.green[800],
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10), bottomRight: Radius.circular(30)
                                ),
                            ),
                            
                            child: const Icon(Icons.add, size: 30, color: Colors.white),
                        ),
                    ],
                ),
            ),
        );
    }
}
