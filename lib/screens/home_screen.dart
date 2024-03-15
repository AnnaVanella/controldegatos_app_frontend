import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              // Fondo de la imagen
              Positioned(
                // left: 0,
                // top: 0,
                child: Image.asset(
                  'assets/home1.jpg',
                  alignment: Alignment.topCenter,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  height: 492.0,
                ),
              ),

              const Positioned(
                top: 440,
                // bottom: 0,
                left: 0,
                right: 0,
                child: CustomContainer(
                  child: Column(
                    children: [
                      TextoLoginScreen(
                        texto:
                            '¡Bienvenido a tu gestor de gastos personalizado para tus vacaciones!',
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextoDes2Screen(
                        texto:
                            'Por favor, proporciona la información requerida para crear tu cuenta.',
                        leftPadding: 0.1,
                        rightPadding: 0.1,
                        topPadding: 0.32,
                      ),
                    ],
                  ),
                ),
              ),

              const Positioned(
                top: 100,
                left: 54,
                right: 54,
                child: Center(
                  child: Text(
                    '!Como van las vacaciones! en Argentina',
                    textAlign: TextAlign.center, // Alinear el texto al centro
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight
                          .w600, // Utilizar FontWeight.w600 para un peso de fuente de 600
                      color:
                          Colors.white, // Cambiar el color del texto a blanco
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
              ),

              Positioned(
                top: 10, // Ajusta la posición según sea necesario
                right: MediaQuery.of(context).size.width *
                    0.02, // Centra horizontalmente
                child: const CircularAvatar(
                  assetImagePath: 'assets/avatar.jpg',
                  radius: 24,
                ),
              ),
            ], // Aquí se cierra el children del Stack
          ),
        ),
      ),
    );
  }
}
