import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
        id: 'p1',
        title: 'white Shoes ',
        description:
            'Puma shoes are white in color, with a durable upper and rubber outsole for traction. They have a sporty design.',
        price: 49.89,
        imageUrl:
            'https://i8.amplience.net/i/jpl/jd_148981_a?qlt=92&w=950&h=1212&v=1&fmt=auto'),
    Product(
        id: 'p2',
        title: 'sport T-shirt ',
        description:
            'Nike t-shirt is blue in color and made of comfortable, breathable material. It features the iconic Nike logo prominently on the chest.',
        price: 79.90,
        imageUrl:
            'https://i8.amplience.net/i/jpl/jd_597198_d?qlt=92&w=950&h=1212&v=1&fmt=auto'),
    Product(
      id: 'p3',
      title: 'Gym Water Bottle',
      description:
          'Pink Gym Water Bottle is a water bottle designed for use at the gym or during physical activity. It is typically made of durable plastic and is available in the color pink',
      price: 20.00,
      imageUrl:
          'https://i8.amplience.net/i/jpl/jd_158972_a?qlt=92&w=950&h=1212&v=1&fmt=auto',
    ),
    Product(
        id: 'p4',
        title: 'black cap',
        description:
            'A black cap is a head covering that is typically made of a durable, lightweight material such as cotton, nylon, or polyester. ',
        price: 47.99,
        imageUrl:
            'https://i8.amplience.net/i/jpl/jd_179067_b?qlt=92&w=950&h=1212&v=1&fmt=auto'),
    Product(
        id: 'p5',
        title: ' light brown Polo',
        description:
            'The BOSS Paddy Polo Shirt is a stylish and sophisticated polo shirt made by the luxury fashion brand BOSS.',
        price: 49.99,
        imageUrl:
            'https://i8.amplience.net/i/jpl/jd_574214_c?qlt=92&w=950&h=1212&v=1&fmt=auto'),
    Product(
        id: 'p6',
        title: 'blue polo',
        description:
            'The BOSS Paddy Polo Shirt is a stylish and sophisticated polo shirt made by the luxury fashion brand BOSS.',
        price: 22.99,
        imageUrl:
            'https://i8.amplience.net/i/jpl/jd_609321_b?qlt=92&w=950&h=1212&v=1&fmt=auto'),
    Product(
        id: 'p7',
        title: ' black Hoddie',
        description: 'adidas Originals Trefoil Essential Fleece Hoodie.',
        price: 59.99,
        imageUrl:
            'https://i8.amplience.net/i/jpl/jd_578551_a?qlt=92&w=950&h=1212&v=1&fmt=auto'),
    Product(
      id: 'p8',
      title: 'light grey Hoddie',
      description: 'adidas Originals Trefoil Essential Fleece Hoodie.',
      price: 45.99,
      imageUrl:
          'https://i8.amplience.net/i/jpl/jd_578566_b?qlt=92&w=950&h=1212&v=1&fmt=auto',
    ),
    Product(
        id: 'p9',
        title: 'Gazelle',
        description: 'adidas Originals Gazelle.',
        price: 79.99,
        imageUrl:
            'https://i8.amplience.net/i/jpl/jd_066498_a?qlt=92&w=950&h=673&v=1&fmt=auto'),
    Product(
      id: 'p10',
      title: 'adidas Originals Gazelle',
      description:
          'The Adidas Originals White is a classic and clean look, the white colorway of the shoes or clothing from this line, often feature the signature Adidas stripes and logo in contrasting colors',
      price: 39.99,
      imageUrl:
          'https://i8.amplience.net/t/jpl/jd_product_list?plu=jd_020680_bl&qlt=85&qlt=92&w=726&h=726&v=1&fmt=auto',
    ),
    Product(
      id: 'p11',
      title: 'adidas Originals Gazelle',
      description:
          'The Adidas Originals White is a classic and clean look, the white colorway of the shoes or clothing from this line, often feature the signature Adidas stripes and logo in contrasting colors',
      price: 39.99,
      imageUrl:
          'https://i8.amplience.net/t/jpl/jd_product_list?plu=jd_101080_bl&qlt=85&qlt=92&w=726&h=726&v=1&fmt=auto',
    ),
    Product(
      id: 'p12',
      title: 'adidas Originals Gazelle',
      description:
          'The Adidas Originals White is a classic and clean look, the white colorway of the shoes or clothing from this line, often feature the signature Adidas stripes and logo in contrasting colors',
      price: 39.99,
      imageUrl:
          'https://i8.amplience.net/t/jpl/jd_product_list?plu=jd_020680_bl&qlt=85&qlt=92&w=726&h=726&v=1&fmt=auto',
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  // var _showFavouriteOnly = false;

  List<Product> get favouriteItem {
    return _items.where((element) => element.isFavourite).toList();
  }

  Product findById(String id) =>
      _items.firstWhere((element) => element.id == id);

  void addProduct(Product product) {
    final newProduct = Product(
        id: DateTime.now().toString(),
        title: product.title,
        description: product.description,
        price: product.price,
        imageUrl: product.imageUrl);
    _items.add(newProduct);
    notifyListeners();
  }

  void updateProduct(String id, Product newProduct) {
    final prodIndex = _items.indexWhere((element) => element.id == id);
    if (prodIndex >= 0) {
      _items[prodIndex] = newProduct;
      notifyListeners();
    } else {
      //print('...');
    }
  }

  void deleteProduct(String id) {
    _items.removeWhere((element) => element.id == id);
    notifyListeners();
  }
}
