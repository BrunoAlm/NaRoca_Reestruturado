import 'package:flutter/material.dart';
import 'package:na_roca_diferenciado/widgets/tipografia.dart';

class TextTitulo extends StatelessWidget {
  final String letraN;
  final String letraA;
  final String letraR;
  final String letraO;
  final String letraC;

  const TextTitulo({
    Key? key,
    required this.letraN,
    required this.letraA,
    required this.letraR,
    required this.letraO,
    required this.letraC,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Container(
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Row(
          children: [
            RichText(text: TextSpan(text: letraN, style: tituloTextStyleN)),
            RichText(text: TextSpan(text: letraA, style: tituloTextStyleA)),
            const SizedBox(width: 40),
            RichText(text: TextSpan(text: letraR, style: tituloTextStyleR)),
            RichText(text: TextSpan(text: letraO, style: tituloTextStyleO)),
            RichText(text: TextSpan(text: letraC, style: tituloTextStyleC)),
            RichText(text: TextSpan(text: letraA, style: tituloTextStyleA)),
          ],
        ),
      ),
    );
  }
}
