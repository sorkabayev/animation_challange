import 'package:flutter/material.dart';

class Appart{
  String name;
  IconData  icon;

  Appart({required this.name, required this.icon,});}

class AppartList{
  static List<Appart> products = [
    Appart(name: "Temperature", icon:Icons.wb_sunny),
    Appart(name: "Ligths",  icon: Icons.lightbulb_outline),
    Appart(name: "Samsung", icon: Icons.signal_wifi_connected_no_internet_4),
    Appart(name: "Laptop work", icon: Icons.computer),
    Appart(name: "Temperature", icon:Icons.wb_sunny),
    Appart(name: "Ligths", icon: Icons.lightbulb_outline),

     ];
}