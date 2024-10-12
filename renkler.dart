import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Renk Değiştirme',
      home: ColorChangeScreen(),
    );
  }
}

class ColorChangeScreen extends StatefulWidget {
  @override
  _ColorChangeScreenState createState() => _ColorChangeScreenState();
}

class _ColorChangeScreenState extends State<ColorChangeScreen> {
  bool _isYellow = true;  // Başlangıçta sarı olarak ayarlanır.

  void _changeColor() {
    setState(() {
      _isYellow = !_isYellow;  // Renk her tıklamada değiştirilir.
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _isYellow ? Colors.yellow : Colors.blue[900],  // Sarı veya lacivert arka plan
      body: Center(
        child: ElevatedButton(
          onPressed: _changeColor,  // Butona basıldığında renk değiştirilir.
          child: Text(
            'Renk Değiştir',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
