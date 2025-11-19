ex2
part 1
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Favorite cards"),
        ),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade300,
                    width: 1.0,
                  ),
                ),
              ),
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'title',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'description',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    onPressed: () {},
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    ));

part 2
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Favorite cards"),
        ),
        body: Column(
          children: const [
            FavoriteCard(
              title: 'First Card',
              description: 'This is the first card',
              isFavorite: true,
            ),
            FavoriteCard(
              title: 'Second Card',
              description: 'This is the second card',
              isFavorite: false,
            ),
            FavoriteCard(
              title: 'Third Card',
              description: 'This is the third card',
              isFavorite: true,
            ),
          ],
        ),
      ),
    ));

class FavoriteCard extends StatelessWidget {
  final String title;
  final String description;
  final bool isFavorite;

  const FavoriteCard({
    Key? key,
    required this.title,
    required this.description,
    this.isFavorite = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.shade300,
            width: 1.0,
          ),
        ),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              size: 24.0,
            ),
            color: isFavorite ? Colors.red : Colors.grey,
            onPressed: () {},
            iconSize: 24.0,
          ),
        ],
      ),
    );
  }
}

part3
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Favorite cards"),
      ),
      body: Column(
        children: const [
          FavoriteCard(
            title: 'First Card',
            description: 'This is the first card',
            isFavorite: true,
          ),
          FavoriteCard(
            title: 'Second Card',
            description: 'This is the second card',
            isFavorite: false,
          ),
          FavoriteCard(
            title: 'Third Card',
            description: 'This is the third card',
            isFavorite: true,
          ),
        ],
      ),
    ),
  ),
);

class FavoriteCard extends StatefulWidget {
  final String title;
  final String description;
  final bool isFavorite;

  const FavoriteCard({
    Key? key,
    required this.title,
    required this.description,
    this.isFavorite = false,
  }) : super(key: key);

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
  late bool isFavorite;

  @override
  void initState() {
    super.initState();
    isFavorite = widget.isFavorite;
  }

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade300, width: 1.0),
        ),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  widget.description,
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ),
          IconButton(
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              size: 24.0,
            ),
            color: isFavorite ? Colors.red : Colors.grey,
            onPressed: toggleFavorite,
            iconSize: 24.0,
          ),
        ],
      ),
    );
  }
}
