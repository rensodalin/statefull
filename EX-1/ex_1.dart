//part 1
// 1.It gives the button a fixed size (width 400, height 100).
// 2.It is a raised button in Flutter used for actions, with a shadow and a built-in click animation.

//part 2
// import 'package:flutter/material.dart';

// void main() => runApp(MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Custom buttons")),
//         body: Center(child: SelectableButton()),
//       ),
//     ));

// class SelectableButton extends StatefulWidget {
//   const SelectableButton({super.key});

//   @override
//   State<SelectableButton> createState() => _SelectableButtonState();
// }

// class _SelectableButtonState extends State<SelectableButton> {
//   bool selected = false;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 400,
//       height: 100,
//       child: ElevatedButton(
//         onPressed: () {
//           setState(() => selected = !selected);
//         },
//         style: ElevatedButton.styleFrom(
//           backgroundColor: selected ? Colors.blue[500] : Colors.blue[50],
//         ),
//         child: Center(
//           child: Text(
//             selected ? "Selected" : "Not Selected",
//             style: TextStyle(
//               color: selected ? Colors.white : Colors.black,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

//part 3
// import 'package:flutter/material.dart';

// void main() => runApp(
//   MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(title: Text("Custom buttons")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: const [
//             SelectableButton(),
//             SizedBox(height: 20),
//             SelectableButton(),
//             SizedBox(height: 20),
//             SelectableButton(),
//           ],
//         ),
//       ),
//     ),
//   ),
// );

// class SelectableButton extends StatefulWidget {
//   const SelectableButton({super.key});

//   @override
//   State<SelectableButton> createState() => _SelectableButtonState();
// }

// class _SelectableButtonState extends State<SelectableButton> {
//   bool selected = false;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 300,
//       height: 70,
//       child: ElevatedButton(
//         onPressed: () {
//           setState(() => selected = !selected);
//         },
//         style: ElevatedButton.styleFrom(
//           backgroundColor: selected ? Colors.blue[500] : Colors.blue[50],
//         ),
//         child: Text(
//           selected ? "Selected" : "Not Selected",
//           style: TextStyle(color: selected ? Colors.white : Colors.black),
//         ),
//       ),
//     );
//   }
// }


