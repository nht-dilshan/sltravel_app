import 'package:flutter/material.dart';

class AllVillageScreen extends StatelessWidget {
 final villages = [
   {'name': 'Giethoorn', 'description': 'Venice of the Netherlands, famous for its canals', 'image': 'lib/assets/giethoorn.jpg'},
   {'name': 'Hallstatt', 'description': 'Picturesque Austrian lake village', 'image': 'lib/assets/hallstatt.jpg'}, 
   {'name': 'Shirakawa-go', 'description': 'Historic Japanese mountain village', 'image': 'lib/assets/shirakawa.jpg'},
   {'name': 'Bibury', 'description': 'Quintessential Cotswolds village in England', 'image': 'lib/assets/bibury.jpg'},
   {'name': 'Reine', 'description': 'Fishing village in Norway\'s Lofoten Islands', 'image': 'lib/assets/reine.jpg'},
   {'name': 'Oia', 'description': 'Stunning clifftop village in Santorini', 'image': 'lib/assets/oia.jpg'},
   {'name': 'Colmar', 'description': 'Medieval village in France\'s Alsace region', 'image': 'lib/assets/colmar.jpg'},
   {'name': 'Goreme', 'description': 'Cave village in Cappadocia, Turkey', 'image': 'lib/assets/goreme.jpg'},
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
             'Villages',
             style: TextStyle(
               color: Colors.black,
               fontWeight: FontWeight.bold,
             ),
           ),
           CircleAvatar(
             backgroundColor: Colors.grey[200],
             child: Icon(Icons.home_work, color: Colors.grey[600]),
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
       itemCount: villages.length,
       itemBuilder: (context, index) {
         final village = villages[index];
         return Hero(
           tag: '${village['name']}_$index',
           child: Material(
             child: InkWell(
               onTap: () {
                 Navigator.push(
                   context,
                   PageRouteBuilder(
                     pageBuilder: (context, animation, secondaryAnimation) =>
                         VillageDetailPage(village: village),
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
                         village['image']!,
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
                               village['name']!,
                               style: TextStyle(
                                 color: Colors.white,
                                 fontWeight: FontWeight.bold,
                                 fontSize: 14,
                               ),
                             ),
                             Text(
                               village['description']!,
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

class VillageDetailPage extends StatelessWidget {
 final Map<String, String> village;

 const VillageDetailPage({Key? key, required this.village}) : super(key: key);

 @override
 Widget build(BuildContext context) {
   return Scaffold(
     body: CustomScrollView(
       slivers: [
         SliverAppBar(
           expandedHeight: 300,
           pinned: true,
           flexibleSpace: FlexibleSpaceBar(
             title: Text(village['name']!),
             background: Hero(
               tag: village['name']!,
               child: Image.asset(
                 village['image']!,
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
                   village['description']!,
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