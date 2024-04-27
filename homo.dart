import 'package:expense_tracker_app/models/products.dart';
import 'package:flutter/material.dart';

class HomoScreen extends StatefulWidget {
  const HomoScreen({super.key});

  @override
  State<HomoScreen> createState() => _HomoScreenState();
}

class _HomoScreenState extends State<HomoScreen> {
  //list of categoires
  List<String> categories = [
    "Food",
    "Fruits",
    "Vegetable",
  ];
  List<String> selectedCategories = [];

  @override
  Widget build(BuildContext context) {
    final filterProducts = productList
        .where((element) =>
            selectedCategories.isEmpty || selectedCategories.contains(element.category))
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text("Date Filter and stuff"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: categories
                .map((category) => FilterChip(
                      label: Text(category),
                      selected: selectedCategories.contains(category),
                      onSelected: (selected) {
                        setState(() {
                          if (selected) {
                            selectedCategories.add(category);
                            print(selectedCategories);
                          } else {
                            selectedCategories.remove(category);
                            print(selectedCategories);
                          }
                        });
                      },
                    ))
                .toList(),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: filterProducts.length,
                  itemBuilder: (context, index) {
                    final product = filterProducts[index];
                    return Card(
                      margin: EdgeInsets.all(10),
                      elevation: 2.0,
                      color: Colors.blue,
                      child: ListTile(
                        title: Text(
                          product.name,
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(product.category,
                            style: TextStyle(color: Colors.white)),
                      ),
                    );
                  })),
        ],
      ),
    );
  }
}
