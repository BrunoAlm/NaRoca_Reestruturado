import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:na_roca_diferenciado/routes.dart';
import 'package:na_roca_diferenciado/widgets/estilo_do_texto.dart';

class Entrar extends StatelessWidget {
  const Entrar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    TextTitulo(
                      letraN: 'N',
                      letraA: 'A',
                      letraR: 'R',
                      letraO: 'O',
                      letraC: 'Ç',
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.menu);
                    },
                    child: Container(
                      height: 50,
                      width: 137,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(157, 175, 43, 1),
                            Color.fromRGBO(147, 164, 42, 1),
                            Color.fromRGBO(147, 164, 42, 1),
                            Color.fromRGBO(157, 175, 43, 1),
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(25.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.green.withOpacity(0.2),
                            spreadRadius: 4,
                            blurRadius: 5,
                            offset: const Offset(0, 0),
                          )
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'ENTRAR',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.lato(
                            fontWeight: FontWeight.w800,
                            fontSize: 16,
                            letterSpacing: 0.0,
                            color: Colors.white,
                            shadows: [
                              const Shadow(
                                color: Color.fromARGB(80, 0, 0, 0),
                                blurRadius: 3,
                                offset: Offset(0, 4),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
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
