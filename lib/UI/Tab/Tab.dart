//
// import 'package:flutter/material.dart';
//
// import '../BottomTab/bottomTab.dart';
//
//
//
//
//
// class TabsPage extends StatefulWidget {
//   int selectedIndex = 0;
//   TabsPage(this.selectedIndex);
//
//   @override
//   _TabsPageState createState() => _TabsPageState();
// }
//
// class _TabsPageState extends State<TabsPage> {
//   int _selectedIndex = 0;
//
//   int initial = 0;
//
//   void _onItemTapped(int index) {
//     setState(() {
//       widget.selectedIndex = index;
//       _selectedIndex = widget.selectedIndex;
//     });
//   }
//
//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//   }
//
//   @override
//   void initState() {
//     _onItemTapped(widget.selectedIndex);
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: IndexedStack(index: widget.selectedIndex, children: [
//         for (final tabItem in TabNavigationItem.items) tabItem.page,
//       ]),
//       bottomNavigationBar: SizedBox(
//         child: BottomNavigationBar(
//             selectedLabelStyle: const TextStyle(),
//             unselectedLabelStyle: const TextStyle(),
//             type: BottomNavigationBarType.fixed,
//             showUnselectedLabels: true,
//             backgroundColor: Colors.white,
//
//             items: const <BottomNavigationBarItem>[
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.home),
//                 label: 'Home',
//               ),
//               BottomNavigationBarItem(
//                   icon: Icon(Icons.favorite),
//                   label: 'Hot Trends'),
//               BottomNavigationBarItem(
//                   icon: Icon(Icons.flash_on_outlined),
//                   label: 'New'),
//               BottomNavigationBarItem(
//                   icon: Icon(Icons.tag_faces),
//                   label: 'Brands'),
//               BottomNavigationBarItem(
//                   icon: Icon(Icons.person),
//                   label: 'Profile'),
//             ],
//             currentIndex: _selectedIndex,
//             selectedItemColor: Colors.pinkAccent,
//             unselectedItemColor: Colors.grey,
//             selectedFontSize: 12,
//             unselectedFontSize: 12,
//             iconSize: 25,
//             onTap: _onItemTapped),
//       ),
//     );
//   }
// }