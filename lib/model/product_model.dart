import 'package:flutter/material.dart';

class Product {
  final String image,
      nombre_producto,
      categoria,
      proveedor,
      fecha_llegada,
      precio,
      descuento,
      numero_existencias;
  final int id, id_producto;
  final Color color;
  Product({
    required this.image,
    required this.nombre_producto,
    required this.color,
    required this.id,
    required this.id_producto,
    required this.precio,
    required this.descuento,
    required this.categoria,
    required this.numero_existencias,
    required this.proveedor,
    required this.fecha_llegada,
  });
}

List<Product> products = [
  Product(
    id: 1,
    id_producto: 1,
    nombre_producto: "Amor",
    precio: "250",
    descuento: "10",
    categoria: "Pop 2024",
    numero_existencias: "500",
    proveedor: "Comex",
    fecha_llegada: "12/abr/2024",
    image: "assets/images/Amor.jpg",
    color: Color(0xffd43434),
  ),
  Product(
    id: 2,
    id_producto: 2,
    nombre_producto: "Beso",
    precio: "180",
    descuento: "5",
    categoria: "Pop 2024",
    numero_existencias: "467",
    proveedor: "Comex",
    fecha_llegada: "03/dic/2023",
    image: "assets/images/Beso.jpg",
    color: Color(0xffe7879c),
  ),
  Product(
    id: 3,
    id_producto: 3,
    nombre_producto: "Descanso",
    precio: "460",
    descuento: "20",
    categoria: "Pop 2023",
    numero_existencias: "325",
    proveedor: "Comex",
    fecha_llegada: "09/jul/2023",
    image: "assets/images/Descanso.jpg",
    color: Color(0xff179c86),
  ),
  Product(
    id: 4,
    id_producto: 4,
    nombre_producto: "Orizaba",
    precio: "340",
    descuento: "15",
    categoria: "Pop 2023",
    numero_existencias: "120",
    proveedor: "Comex",
    fecha_llegada: "30/nov/2023",
    image: "assets/images/Orizaba.jpg",
    color: Color(0xff3d192b),
  ),
];
