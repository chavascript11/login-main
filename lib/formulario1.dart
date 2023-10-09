import 'package:flutter/material.dart';
import 'formulario2.dart';

class Formulario1 extends StatefulWidget {
  @override
  _Formulario1State createState() => _Formulario1State();
}

class _Formulario1State extends State<Formulario1> {
  TextEditingController _loginController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void _irAFormulario2() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Formulario2(
          login: _loginController.text,
          password: _passwordController.text,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario 1'),
      ),
      body: Container(
        color: Colors.black, // Fondo negro
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _loginController,
              style: TextStyle(
                color: Colors.white, // Color de letra blanco
                fontFamily: 'Times New Roman',
              ),
              decoration: InputDecoration(
                labelText: 'Login',
                labelStyle: TextStyle(
                  color: Colors.white, // Color del texto del label
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                prefixIcon:
                    Icon(Icons.person, color: Colors.white), // Icono de usuario
              ),
            ),
            TextField(
              controller: _passwordController,
              style: TextStyle(
                color: Colors.white, // Color de letra blanco
                fontFamily: 'Times New Roman',
              ),
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(
                  color: Colors.white, // Color del texto del label
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                prefixIcon:
                    Icon(Icons.lock, color: Colors.white), // Icono de candado
              ),
              obscureText: true,
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _irAFormulario2,
              style: ElevatedButton.styleFrom(
                primary: Colors.white, // Fondo del botón
                onPrimary: Colors.black, // Texto del botón
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.arrow_forward,
                      color: Colors.black), // Icono de flecha hacia adelante
                  SizedBox(width: 10), // Espaciado entre el icono y el texto
                  Text('Siguiente'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
