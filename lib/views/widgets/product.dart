import 'package:flutter/material.dart';
import 'package:homework_4/models/product.dart';

class ProductWidget extends StatelessWidget {
  Product product;
  Function() delete;
  ProductWidget({required this.product, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(16),
        height: 200,
        width: 180,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const InkWell(
                  // onTap: () {
                  //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>EditProduct(product: product)));
                  // },
                  child: Icon(
                    Icons.edit,
                    color: Colors.blue,
                  ),
                ),
                InkWell(
                  onTap: delete,
                  child: Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            Text(
              "name: ${product.productName}",
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "price: \$${product.price}",
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              product.inStock ? "Available" : "Not Available",
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
