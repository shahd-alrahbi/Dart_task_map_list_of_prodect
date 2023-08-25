import 'dart:io';

main() {
  List<Map<String, dynamic>> Prodects = [
    {'name': 'phone', 'price': 20},
    {'name': 'printer', 'price': 30},
    {'name': 'camera', 'price': 40},
    {'name': 'labtop', 'price': 350},
    {'name': 'watch', 'price': 120}
  ];

  for (int i = 0; i < Prodects.length; i++) {
    print('${i + 1}. ${Prodects[i]['name']}');
  }

  print("Pleses chooes the  prodect");
  String? userInput = stdin.readLineSync()!;

  var selectedProduct = <String, dynamic>{};

  for (var product in Prodects) {
    if (product['name'] == userInput) {
      selectedProduct = product;
      break;
    }
  }
  if (selectedProduct != null) {
    print('The price of product : ${selectedProduct['price']}.');
  } else {
    print('not product here');
  }
}
