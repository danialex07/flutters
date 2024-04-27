import 'package:flutter/material.dart';

class PageStart extends StatelessWidget {
  const PageStart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
        backgroundColor: Colors.purple[200],
        actions: [
          TextButton(
            onPressed: () {
            },
            child: const Text(
              'Designer',
              style: TextStyle(color: Colors.white),
            ),
          ),
          TextButton(
            onPressed: () {
            },
            child: const Text(
              'Category',
              style: TextStyle(color: Colors.white),
            ),
          ),
          TextButton(
            onPressed: () {
            },
            child: const Text(
              'Attention',
              style: TextStyle(color: Colors.white),
            ),
          ),
          TextButton(
            onPressed: () {
            },
            child: const Icon(
              Icons.menu,
              color: Colors.white,
            ), // Ícono de tres líneas
          ),
        ],
    ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 10), // Espacio arriba del primer contenedor
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(10),
              children: [
              _buildContainer('David Borg', 'Title: Flying wings', 1, Colors.lightBlue[200]!),
              const SizedBox(height: 10),
              _buildContainer('Lucy', 'Growing up trouble', 2, Colors.orange),
              const SizedBox(height: 10), 
              _buildContainer('Jerry Cool West', 'Title: Scultptors diary', 3, Colors.redAccent),
              const SizedBox(height: 10), 
              _buildContainer('Bold', 'Title: Ilustration of little girl', 4, Color.fromARGB(255, 171, 137, 230)),
            ],
            ),
          ),
        ],
      ),
    );
  }

Widget _buildContainer(String name, String title, int ranking, Color color) {
  String imageUrl = 'https://source.unsplash.com/200x200/?person';

  return Container(
    width: double.infinity,
    margin: const EdgeInsets.symmetric(horizontal: 450),
    decoration: BoxDecoration(
      color: color,
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(10),
    ),
    padding: const EdgeInsets.all(10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          imageUrl,
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const SizedBox(height: 5),
              Text(
                title,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        //-------------------------------------------------
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.star, color: Colors.yellow),
                Text(ranking.toString(), style: const TextStyle(color: Colors.white)),
                const SizedBox(width: 5), 
                IconButton(
                  icon: const Icon(Icons.more_vert, color: Colors.white),
                  onPressed: () {
                    
                  },
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.thumb_up),
                  color: Colors.white,
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.share),
                  color: Colors.white,
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.bookmark),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

}






