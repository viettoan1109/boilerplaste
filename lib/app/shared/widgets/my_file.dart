import 'package:flutter/material.dart';

import 'file_info_card_grid_view.dart';

class MyFile extends StatelessWidget {
  const MyFile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "My Files",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text("Add New"),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 16)),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        FileInforCardGridView(childAspectRatio: size.width < 1400 ? 1.1 : 1.4),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
