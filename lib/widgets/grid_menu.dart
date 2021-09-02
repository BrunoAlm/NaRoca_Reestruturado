import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class GridMenu extends StatelessWidget {
  const GridMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,
      childAspectRatio: 2,
      children: [
        TextButton.icon(
          onPressed: () => Navigator.pushNamed(context, '/MostrarClientes'),
          icon: const Icon(
            Icons.groups,
            size: 80,
            color: Colors.green,
          ),
          label: const Text(
            'Clientes',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.2,
            ),
          ),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(
            Ionicons.shirt,
            size: 50,
          ),
          label: const Text('teste'),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(
            Ionicons.person_add,
            size: 50,
          ),
          label: const Text(''),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(
            Ionicons.person_add,
            size: 50,
          ),
          label: const Text(''),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(
            Ionicons.person_add,
            size: 50,
          ),
          label: const Text(''),
        ),
      ],
    );
  }
}
