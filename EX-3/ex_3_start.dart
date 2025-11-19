import 'package:flutter/material.dart';

List<String> images = [
  "assets/w4-s2/bird.jpg",
  "assets/w4-s2/bird2.jpg",
  "assets/w4-s2/insect.jpg",
  "assets/w4-s2/girl.jpg",
  "assets/w4-s2/man.jpg",
];

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false, // Why this line ? Can you explain it ?
      home: Scaffold(
        backgroundColor: Colors.green[50],
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: const Text('Image viewer'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.navigate_before),
              tooltip: 'Go to the previous image',
              onPressed: () => {},
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
              child: IconButton(
                icon: const Icon(Icons.navigate_next),
                tooltip: 'Go to the next image',
                onPressed: () => {},
              ),
            ),
          ],
        ),
        body: Image.asset(images[0]),
      ),
    ));
ex3 
1. debugShowCheckedModeBanner: false,
is used to remove the DEBUG banner on the top-right corner of the screen.

import 'package:flutter/material.dart';

List<String> images = [
  "assets/w4-s2/bird.jpg",
  "assets/w4-s2/bird2.jpg",
  "assets/w4-s2/insect.jpg",
  "assets/w4-s2/girl.jpg",
  "assets/w4-s2/man.jpg",
];

PART 1: Create two functions
void goPrevious() {
  print("Previous button clicked");
}

void goNext() {
  print("Next button clicked");
}

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false, // hides the DEBUG banner
      home: Scaffold(
        backgroundColor: Colors.green[50],
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: const Text('Image viewer'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.navigate_before),
              tooltip: 'Go to the previous image',
              onPressed: goPrevious, // call the function
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
              child: IconButton(
                icon: const Icon(Icons.navigate_next),
                tooltip: 'Go to the next image',
                onPressed: goNext, // call the function
              ),
            ),
          ],
        ),

        // Still showing first image only (Part 1)
        body: Image.asset(images[0]),
      ),
    ));

part2
import 'package:flutter/material.dart';

List<String> images = [
  "assets/w4-s2/bird.jpg",
  "assets/w4-s2/bird2.jpg",
  "assets/w4-s2/insect.jpg",
  "assets/w4-s2/girl.jpg",
  "assets/w4-s2/man.jpg",
];

void main() => runApp(
  MaterialApp(debugShowCheckedModeBanner: false, home: ImageGallery()),
);

class ImageGallery extends StatefulWidget {
  @override
  State<ImageGallery> createState() => _ImageGalleryState();
}

class _ImageGalleryState extends State<ImageGallery> {
  int index = 0; // Q1: This is the state we need to keep

  // Go to previous image (circular)
  void previousImage() {
    setState(() {
      index = (index - 1 + images.length) % images.length;
    });
  }

  // Go to next image (circular)
  void nextImage() {
    setState(() {
      index = (index + 1) % images.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: const Text('Image viewer'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.navigate_before),
            tooltip: 'Go to the previous image',
            onPressed: previousImage,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
            child: IconButton(
              icon: const Icon(Icons.navigate_next),
              tooltip: 'Go to the next image',
              onPressed: nextImage,
            ),
          ),
        ],
      ),

      // Q2: The Scaffold (AppBar + Body) is wrapped inside StatefulWidget
      body: Center(
        child: Image.asset(
          images[index], // Display current image
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
