import 'package:flutter/material.dart';

class AllMountainScreen extends StatelessWidget {
 final mountains = [
   {'name': 'Mount Everest', 'description': 'Highest peak on Earth at 8,848m', 'image': 'lib/assets/everest.jpg'},
   {'name': 'K2', 'description': 'Second highest peak at 8,611m', 'image': 'lib/assets/k2.jpg'},
   {'name': 'Kangchenjunga', 'description': 'Third highest peak at 8,586m', 'image': 'lib/assets/kangchenjunga.jpg'},
   {'name': 'Lhotse', 'description': 'Fourth highest peak at 8,516m', 'image': 'lib/assets/lhotse.jpg'},
   {'name': 'Makalu', 'description': 'Fifth highest peak at 8,485m', 'image': 'lib/assets/makalu.jpg'},
   {'name': 'Cho Oyu', 'description': 'Sixth highest peak at 8,188m', 'image': 'lib/assets/cho_oyu.jpg'},
   {'name': 'Dhaulagiri', 'description': 'Seventh highest peak at 8,167m', 'image': 'lib/assets/dhaulagiri.jpg'},
   {'name': 'Manaslu', 'description': 'Eighth highest peak at 8,163m', 'image': 'lib/assets/manaslu.jpg'},
 ];

 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.white,
       elevation: 0, 
       title: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Text(
             'Mountains',
             style: TextStyle(
               color: Colors.black,
               fontWeight: FontWeight.bold,
             ),
           ),
           CircleAvatar(
             backgroundColor: Colors.grey[200],
             child: Icon(Icons.landscape, color: Colors.grey[600]),
           ),
         ],
       ),
     ),
     body: GridView.builder(
       padding: EdgeInsets.all(16),
       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
         crossAxisCount: 2,
         crossAxisSpacing: 16,
         mainAxisSpacing: 16,
         childAspectRatio: 0.75,
       ),
       itemCount: mountains.length,
       itemBuilder: (context, index) {
         final mountain = mountains[index];
         return Hero(
           tag: '${mountain['name']}_$index',
           child: Material(
             child: InkWell(
               onTap: () {
                 Navigator.push(
                   context,
                   PageRouteBuilder(
                     pageBuilder: (context, animation, secondaryAnimation) =>
                         MountainDetailPage(mountain: mountain),
                     transitionsBuilder: (context, animation, secondaryAnimation, child) {
                       var tween = Tween(begin: Offset(1.0, 0.0), end: Offset.zero)
                           .chain(CurveTween(curve: Curves.easeInOut));
                       return SlideTransition(
                         position: animation.drive(tween),
                         child: child,
                       );
                     },
                   ),
                 );
               },
               child: Container(
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(16),
                   boxShadow: [
                     BoxShadow(
                       color: Colors.grey.withOpacity(0.2),
                       spreadRadius: 2,
                       blurRadius: 5,
                     ),
                   ],
                 ),
                 child: ClipRRect(
                   borderRadius: BorderRadius.circular(16),
                   child: Stack(
                     fit: StackFit.expand,
                     children: [
                       Image.asset(
                         mountain['image']!,
                         fit: BoxFit.cover,
                       ),
                       Container(
                         decoration: BoxDecoration(
                           gradient: LinearGradient(
                             begin: Alignment.topCenter,
                             end: Alignment.bottomCenter,
                             colors: [
                               Colors.transparent,
                               Colors.black.withOpacity(0.7),
                             ],
                           ),
                         ),
                       ),
                       Positioned(
                         bottom: 8,
                         left: 8,
                         right: 8,
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text(
                               mountain['name']!,
                               style: TextStyle(
                                 color: Colors.white,
                                 fontWeight: FontWeight.bold,
                                 fontSize: 14,
                               ),
                             ),
                             Text(
                               mountain['description']!,
                               style: TextStyle(
                                 color: Colors.white70,
                                 fontSize: 12,
                               ),
                               maxLines: 2,
                               overflow: TextOverflow.ellipsis,
                             ),
                           ],
                         ),
                       ),
                     ],
                   ),
                 ),
               ),
             ),
           ),
         );
       },
     ),
   );
 }
}

class MountainDetailPage extends StatelessWidget {
 final Map<String, String> mountain;

 const MountainDetailPage({Key? key, required this.mountain}) : super(key: key);

 @override
 Widget build(BuildContext context) {
   return Scaffold(
     body: CustomScrollView(
       slivers: [
         SliverAppBar(
           expandedHeight: 300,
           pinned: true,
           flexibleSpace: FlexibleSpaceBar(
             title: Text(mountain['name']!),
             background: Hero(
               tag: mountain['name']!,
               child: Image.asset(
                 mountain['image']!,
                 fit: BoxFit.cover,
               ),
             ),
           ),
         ),
         SliverToBoxAdapter(
           child: Padding(
             padding: const EdgeInsets.all(16.0),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(
                   'About',
                   style: TextStyle(
                     fontSize: 24,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
                 SizedBox(height: 8),
                 Text(
                   mountain['description']!,
                   style: TextStyle(
                     fontSize: 16,
                     color: Colors.grey[600],
                   ),
                 ),
               ],
             ),
           ),
         ),
       ],
     ),
   );
 }
}