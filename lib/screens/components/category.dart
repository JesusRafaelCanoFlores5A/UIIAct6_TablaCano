import 'package:canotabla/model/product_model.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.65),
        itemBuilder: (context, index) => CategoryCard(
              product: products[index],
            ));
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: product.color, borderRadius: BorderRadius.circular(15.0)),
        child: Column(
          children: [
            Image.asset(
              product.image,
              height: 100,
            ),
            const SizedBox(),
            Text(
              product.nombre_producto,
              style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(),
            Text(
              "Precio: ${product.precio} mxn",
              style: const TextStyle(fontSize: 15, color: Colors.white),
            ),
            Text(
              "Descuento: ${product.descuento}%",
              style: const TextStyle(fontSize: 15, color: Colors.white),
            ),
            Text(
              "Categoría: ${product.categoria}%",
              style: const TextStyle(fontSize: 15, color: Colors.white),
            ),
            Text(
              "Existencias: ${product.numero_existencias}",
              style: const TextStyle(fontSize: 15, color: Colors.white),
            ),
            Text(
              "Proveedor: ${product.proveedor}",
              style: const TextStyle(fontSize: 15, color: Colors.white),
            ),
            Text(
              "Fecha: ${product.fecha_llegada}",
              style: const TextStyle(fontSize: 15, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
