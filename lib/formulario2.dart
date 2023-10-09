import 'package:flutter/material.dart';

class Formulario2 extends StatefulWidget {
  final String login;
  final String password;

  Formulario2({required this.login, required this.password});

  @override
  _Formulario2State createState() => _Formulario2State(login, password);
}

class _Formulario2State extends State<Formulario2> {
  final String login;
  final String password;

  _Formulario2State(this.login, this.password);

  Future<void> _verificarUsuario(BuildContext context) async {
    // Lista de usuarios válidos (simulación).
    final Map<String, String> usuariosValidos = {
      'salvador': '12345',
      'usuario2': '12345',
      'usuario3': '12345',
    };

    if (usuariosValidos.containsKey(login) &&
        usuariosValidos[login] == password) {
      // El usuario es válido, muestra un diálogo.
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Usuario Autorizado'),
            content: Text('¡Bienvenido, $login!'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context); // Cerrar el diálogo.
                  Navigator.pop(context); // Volver al formulario 1.
                },
                child: Text('Cerrar'),
              ),
            ],
          );
        },
      );
    } else {
      // El usuario no es válido, muestra un diálogo de error.
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Usuario No Autorizado'),
            content: Text('Las credenciales ingresadas no son válidas.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context); // Cerrar el diálogo.
                },
                child: Text('Cerrar'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario 2'),
      ),
      body: Container(
        color: Colors.black, // Fondo negro
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Login: $login',
                style: TextStyle(
                  color: Colors.white, // Color de letra blanco
                  fontFamily: 'Times New Roman',
                ),
              ),
              Text(
                'Password: $password',
                style: TextStyle(
                  color: Colors.white, // Color de letra blanco
                  fontFamily: 'Times New Roman',
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton.icon(
                onPressed: () => _verificarUsuario(context),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white, // Fondo del botón
                  onPrimary: Colors.black, // Texto del botón
                ),
                icon: Icon(Icons.check,
                    color: Colors.black), // Icono de marca de verificación
                label: Text('Verificar Usuario'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
