import 'package:flutter/material.dart';

Container searchInput() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    child: const TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))),
        hintText: 'Search',
        prefixIcon: Icon(Icons.search),
      ),
    ),
  );
}
