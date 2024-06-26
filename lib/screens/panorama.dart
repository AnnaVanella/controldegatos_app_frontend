import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import '../widgets/widgets.dart';

class PanoramaScreen extends StatelessWidget {
  const PanoramaScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Color(0xFFD9D9D9),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.menu,
                    color: Color(0xFF000000),
                    size: 40,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Menú',
                    style: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),

            //AQUI VA LA IMAGEN DEL USUARIO
            const CircularAvatar(
                assetImagePath: 'assets/avatar.jpg', radius: 70),
            const SizedBox(height: 8),

            //AQUI VA EL NOMBRE DEL USUARIO
            const Text(
              'Mariela Campusano',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat',
              ),
            ),

            const SizedBox(
              height: 18,
            ),
            // Aquí agregamos la línea
            CustomPaint(
              size: const Size(double.infinity, 2),
              painter: LinePainter(),
            ),

            const SizedBox(
              height: 10,
            ),

            CustomTextButton(
                icon: Icons.key_outlined,
                buttonText: 'Modificar datos',
                textColor: Colors.black,
                onPressed: () {
                  Navigator.pushNamed(context, 'cambiar_datos');
                }),

            CustomTextButton(
                icon: Icons.edit,
                buttonText: 'Cambiar contraseña',
                textColor: Colors.black,
                onPressed: () {
                  Navigator.pushNamed(context, 'cambiar_contra');
                }),

            //aqui las opciones del menu
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints:
              BoxConstraints(minHeight: MediaQuery.of(context).size.height),

          // height: MediaQuery.of(context).size.height,
          child: IntrinsicHeight(
            child: Column(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      // Fondo de la imagen
                      Container(
                        width: double.infinity,
                        height: 492.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/home1.jpg'),
                            alignment: Alignment.topCenter,
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Colors.grey.withOpacity(0.3),
                                BlendMode.srcOver),
                          ),
                        ),
                      ),

                      const Positioned(
                        top: 270,
                        // bottom: 0,
                        left: 0,
                        right: 0,

                        child: CustomContainer(
                          color: Colors.white,
                          child: Column(
                            children: [
                              IconoTexto(
                                icon: Icons.mode_of_travel,
                                text: 'Panorama de vacaciones',
                                iconColor: Color(0xFF149A61),
                                iconSize: 36,
                                textColor: Color(0xFF149A61),
                                textSize: 28,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              SubtextoScreen(
                                texto:
                                    'Aquí puedes ver todos lugares visitados dentro de tus vacaciones:',
                                leftPadding: 0.1,
                                rightPadding: 0.1,
                                topPadding: 0.32,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              SingleChildScrollView(
                                child: ColumnTablePanorama(
                                  column1Data: [
                                    '16:24 pm',
                                    '16:13 pm',
                                    '16:04 pm',
                                    '15:28 pm',
                                    '15:47 pm',
                                    '14:12 pm',
                                    '1:34 pm'
                                  ],
                                  column2Data: [
                                    'Heladeria Crosft',
                                    'Zara',
                                    'Zara',
                                    'Zara',
                                    'Yakissbo Mundial',
                                    'Wanderlunst bar e cozinha',
                                    'Zara',
                                    'Yakissbo Mundial'
                                  ],
                                  column3Data: [
                                    '02-12-2024',
                                    '04-12-2024',
                                    '05-12-2024',
                                    '05-12-2024',
                                    '09-12-2024',
                                    '11-12-2024',
                                    '11-12-2024',
                                    '15-12-2024'
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Positioned(
                        top: 70,
                        left: 54,
                        right: 54,
                        child: Center(
                          child: Container(
                            constraints: const BoxConstraints(
                              maxWidth: 330,
                              maxHeight: 500,
                            ),
                            // Ancho máximo del texto
                            child: const Text(
                              '!Como van las vacaciones!',
                              textAlign: TextAlign
                                  .center, // Alinear el texto al centro
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                          ),
                        ),
                      ),

                      //AVATAR A LA DERECHA
                      Positioned(
                        top: 10, // Ajusta la posición según sea necesario
                        right: MediaQuery.of(context).size.width *
                            0.02, // Centra horizontalmente
                        child: const CircularAvatar(
                          assetImagePath: 'assets/avatar.jpg',
                          radius: 24,
                        ),
                      ),

                      //Icono del menu
                      const CustomMenuButton(),

                      //BOTONES DEL HOME
                      const Positioned(
                        top: 130,
                        left: 0,
                        right: 0,
                        child: MyWidget1(),
                      ),

                      CustomElevatedButton(
                        buttonText: 'cerrar',
                        onPressed: () {
                          Navigator.pushNamed(context, 'home');
                        },
                        top: 900,
                        right: 84,
                      ),
                    ], // Aquí se cierra el children del Stack
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
