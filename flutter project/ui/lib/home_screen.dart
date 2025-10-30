import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16),
            Container(
              height: 150,
              margin: const EdgeInsets.symmetric(horizontal: 4),
              color: const Color.fromARGB(85, 138, 229, 247),
            ),
            const SizedBox(height: 14),
            Row(
              children: [
                Container(
                  width: 30,
                  height: 22,
                  color: Colors.grey[300],
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Container(
                    height: 22,
                    color: Colors.grey[300],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              height: 2,
              color: Colors.grey[300],
            ),
            const SizedBox(height: 14),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Container(
                        height: 35,
                        color: Colors.green[300],
                      ),
                      const SizedBox(height: 4),
                      Container(
                        height: 35,
                        color: Colors.green[300],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 75,
                          color: Colors.orange[300],
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: Container(
                          height: 75,
                          color: Colors.orange[300],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 100,
                    color: Colors.purple[200],
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Container(
                        height: 46,
                        color: const Color.fromARGB(255, 217, 168, 226),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        height: 46,
                        color: const Color.fromARGB(255, 223, 141, 238),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 100,
                    color: Colors.purple[100],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 60,
                    color: const Color.fromARGB(255, 87, 206, 184),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Container(
                    height: 60,
                    color: const Color.fromARGB(255, 18, 162, 143),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14),
            Container(
              height: 40,
              color: Colors.grey[300],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
