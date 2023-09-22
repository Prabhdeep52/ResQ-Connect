// import 'package:flutter/material.dart';

// import 'moreinfo.dart';

// class DisasterInfo extends StatefulWidget {
//   const DisasterInfo({super.key});

//   @override
//   State<DisasterInfo> createState() => _DisasterInfoState();
// }

// class _DisasterInfoState extends State<DisasterInfo> {
//   List<String> _dropdownItems = ['Ongoing', 'Closed', 'On Hold'];
//   String _selectedItem = ' Ongoing';
//   @override
//   Widget build(BuildContext context) {
//     final _color = const Color.fromARGB(255, 50, 52, 65);
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             children: [
//               const SizedBox(
//                 height: 20,
//               ),
//               const Center(
//                 child: Text(
//                   "Report Your Disaster",
//                   style: TextStyle(
//                     fontFamily: "Montserrat",
//                     fontSize: 22,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
// <<<<<<< asad
//               // TextFormField(
//               //   cursorColor: const Color.fromARGB(31, 78, 77, 77),
//               //   decoration: InputDecoration(
//               //     hintText: "Search Location",
//               //     border: OutlineInputBorder(
//               //         borderSide:
//               //             const BorderSide(color: Color(0xFFF4727A), width: 2.0),
//               //         borderRadius: BorderRadius.circular(10)),
//               //   ),
//               //   maxLines: 1,
//               // ),
//               const SizedBox(
//                 height: 10,
//               ),
//               // const Align(
//               //   alignment: Alignment.centerLeft,
//               //   child: Text(
//               //     "Type",
//               //     style: TextStyle(
//               //       fontFamily: "Montserrat",
//               //       fontSize: 18,
//               //       fontWeight: FontWeight.bold,
//               //     ),
//               //   ),
//               // ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.of(context).push(MaterialPageRoute(
//                           builder: (context) => const MoreInfoOrg()));
//                     },
//                     child: Container(
//                       height: 120,
//                       width: 120,
//                       decoration: BoxDecoration(
//                         border: Border.all(color: _color),
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: Column(
//                         children: [
//                           const SizedBox(
//                             height: 40,
//                           ),
//                           Icon(
//                             Icons.water,
//                             color: _color,
//                           ),
//                           const SizedBox(
//                             height: 20,
//                           ),
//                           Text(
//                             "Water Shortage",
//                             style: TextStyle(
//                                 color: _color,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 12),
//                           )
//                         ],
//                       ),
//                     ),
// =======
//               TextFormField(
//                 cursorColor: const Color.fromARGB(31, 78, 77, 77),
//                 decoration: InputDecoration(
//                   hintText: "Search Location",
//                   border: OutlineInputBorder(
//                       borderSide: const BorderSide(
//                           color: Color(0xFFF4727A), width: 2.0),
//                       borderRadius: BorderRadius.circular(10)),
//                 ),
//                 maxLines: 1,
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               const Align(
//                 alignment: Alignment.centerLeft,
//                 child: Text(
//                   "Type",
//                   style: TextStyle(
//                     fontFamily: "Montserrat",
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
// >>>>>>> main
//                   ),
                  
// //                   GestureDetector(
// //                     onTap: () {
// //                       Navigator.of(context).push(MaterialPageRoute(
// //                           builder: (context) => const MoreInfoOrg()));
// //                     },
// //                     child: Container(
// //                       height: 120,
// //                       width: 120,
// //                       decoration: BoxDecoration(
// //                         border: Border.all(color: _color),
// //                         borderRadius: BorderRadius.circular(10),
// //                       ),
// //                       child: Column(
// //                         children: [
// //                           const SizedBox(
// //                             height: 40,
// //                           ),
// //                           Icon(
// //                             Icons.local_dining,
// //                             color: _color,
// //                           ),
// //                           const SizedBox(
// //                             height: 20,
// //                           ),
// //                           Text(
// //                             "Famine",
// //                             style: TextStyle(
// //                                 color: _color,
// //                                 fontWeight: FontWeight.bold,
// //                                 fontSize: 12),
// //                           )
// //                         ],
// //                       ),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// <<<<<<< asad
//               const SizedBox(
//                 height: 20,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.of(context).push(MaterialPageRoute(
//                           builder: (context) => const MoreInfoOrg()));
//                     },
//                     child: Container(
//                       height: 120,
//                       width: 120,
//                       decoration: BoxDecoration(
//                         border: Border.all(color: _color),
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: Column(
//                         children: [
//                           const SizedBox(
//                             height: 40,
//                           ),
//                           Icon(
//                             Icons.flood_outlined,
//                             color: _color,
//                           ),
//                           const SizedBox(
//                             height: 20,
//                           ),
//                           Text(
//                             "Flood",
//                             style: TextStyle(
//                                 color: _color,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 12),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.of(context).push(MaterialPageRoute(
//                           builder: (context) => const MoreInfoOrg()));
//                     },
//                     child: Container(
//                       height: 120,
//                       width: 120,
//                       decoration: BoxDecoration(
//                         border: Border.all(color: _color),
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: Column(
//                         children: [
//                           const SizedBox(
//                             height: 40,
//                           ),
//                           Icon(
//                             Icons.public_outlined,
//                             color: _color,
//                           ),
//                           const SizedBox(
//                             height: 20,
//                           ),
//                           Text(
//                             "Earthqauke",
//                             style: TextStyle(
//                                 fontFamily: "Montserrat",
//                                 color: _color,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 12),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.of(context).push(MaterialPageRoute(
//                           builder: (context) => const MoreInfoOrg()));
//                     },
//                     child: Container(
//                       height: 120,
//                       width: 120,
//                       decoration: BoxDecoration(
//                         border: Border.all(color: _color),
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: Column(
//                         children: [
//                           const SizedBox(
//                             height: 40,
//                           ),
//                           Icon(
//                             Icons.cyclone,
//                             color: _color,
//                           ),
//                           const SizedBox(
//                             height: 20,
//                           ),
//                           Text(
//                             "Cyclone",
//                             style: TextStyle(
//                                 color: _color,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 12),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.of(context).push(MaterialPageRoute(
//                           builder: (context) => const MoreInfoOrg()));
//                     },
//                     child: Container(
//                       height: 120,
//                       width: 120,
//                       decoration: BoxDecoration(
//                         border: Border.all(color: _color),
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: Column(
//                         children: [
//                           const SizedBox(
//                             height: 40,
//                           ),
//                           Icon(
//                             Icons.fire_truck_outlined,
//                             color: _color,
//                           ),
//                           const SizedBox(
//                             height: 20,
//                           ),
//                           Text(
//                             "Fire Hazard",
//                             style: TextStyle(
//                                 color: _color,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 12),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.of(context).push(MaterialPageRoute(
//                           builder: (context) => const MoreInfoOrg()));
//                     },
//                     child: Container(
//                       height: 120,
//                       width: 120,
//                       decoration: BoxDecoration(
//                         border: Border.all(color: _color),
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: Column(
//                         children: [
//                           const SizedBox(
//                             height: 40,
//                           ),
//                           Icon(
//                             Icons.landslide_outlined,
//                             color: _color,
//                           ),
//                           const SizedBox(
//                             height: 20,
//                           ),
//                           Text(
//                             "Landslide",
//                             style: TextStyle(
//                                 color: _color,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 12),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.of(context).push(MaterialPageRoute(
//                           builder: (context) => const MoreInfoOrg()));
//                     },
//                     child: Container(
//                       height: 120,
//                       width: 120,
//                       decoration: BoxDecoration(
//                         border: Border.all(color: _color),
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: Column(
//                         children: [
//                           const SizedBox(
//                             height: 40,
//                           ),
//                           Icon(
//                             Icons.alarm,
//                             color: _color,
//                           ),
//                           const SizedBox(
//                             height: 20,
//                           ),
//                           Text(
//                             "Others",
//                             style: TextStyle(
//                                 color: _color,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 12),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
// =======
//               SizedBox(
//                 child: GridView.builder(
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 3,
//                     mainAxisSpacing: 10.0,
//                     crossAxisSpacing: 10.0,
//                   ),
//                   physics: const AlwaysScrollableScrollPhysics(),
//                   shrinkWrap: true,
//                   itemCount: 6,
//                   itemBuilder: (context, index) {
//                     return Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Container(
//                         height: 100,
//                         width: 100,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           border: Border.all(width: 1),
//                         ),
//                         child: const Icon(Icons.water_drop_outlined),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//               SizedBox(
//                   height: 45,
//                   width: double.infinity,
//                   child: ElevatedButton(
//                       onPressed: () {}, child: const Text("Upload Photos")))
// >>>>>>> main
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
