import 'package:flutter/material.dart';

class CadastroCliente extends StatelessWidget {
  const CadastroCliente({Key? key}) : super(key: key);

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  tamanhoDaTela
                      // DESKTOP
                      ? Container(
                          width: 136,
                          height: 47,
                          margin: const EdgeInsets.fromLTRB(60, 60, 0, 0),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFAFAFA),
                            borderRadius: BorderRadius.circular(20),
                            // border: Border.all(color: Colors.black, width: 4),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x00000000).withOpacity(0.5),
                                blurRadius: 10,
                                offset: const Offset(0, 0),
                              )
                            ],
                          ),
                          child: TextButton.icon(
                            onPressed: () => Navigator.pop(context),
                            icon: const Icon(Icons.arrow_back,
                                color: Colors.black),
                            label: Text(
                              'Início',
                              style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        )
                      // MOBILE
                      : Container(
                          width: 80,
                          height: 80,
                          margin: const EdgeInsets.fromLTRB(30, 30, 0, 0),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFAFAFA),
                            borderRadius: BorderRadius.circular(100),
                            // border: Border.all(color: Colors.black, width: 4),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x00000000).withOpacity(0.5),
                                blurRadius: 10,
                                offset: const Offset(0, 0),
                              )
                            ],
                          ),
                          child: IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: const Icon(Icons.arrow_back,
                                color: Colors.black),
                            iconSize: 46,
                          ),
                        )
                ],
              ),
              const SizedBox(height: 10),
              tamanhoDaTela
                  // DESKTOP
                  ? Expanded(
                      child: SingleChildScrollView(
                        child: SizedBox(
                          width: 800,
                          child: GridView.count(
                            shrinkWrap: true,
                            crossAxisCount: 3,
                            crossAxisSpacing: 36,
                            mainAxisSpacing: 36,
                            padding: const EdgeInsets.fromLTRB(90, 10, 90, 0),
                            children: const [
                             
                            ],
                          ),
                        ),
                      ),
                    )

                  // MOBILE
                  : Expanded(
                      child: SingleChildScrollView(
                        child: SizedBox(
                          width: 600,
                          child: GridView.count(
                            shrinkWrap: true,
                            crossAxisCount: 2,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20,
                            padding: const EdgeInsets.fromLTRB(39, 110, 39, 53),
                            children: [
                            ]
                          ),
                        ),
                      ),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
