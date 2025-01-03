import 'package:flutter/material.dart';

class AllHistoricalScreen extends StatelessWidget {
 final historicalSites = [
   {'name': 'Pyramids of Giza', 'description': 'Ancient Egyptian pyramids and burial complex', 'image': 'lib/assets/pyramids.jpg'},
   {'name': 'Stonehenge', 'description': 'Prehistoric monument in Wiltshire, England', 'image': 'lib/assets/stonehenge.jpg'},
   {'name': 'Angkor Wat', 'description': 'Ancient temple complex in Cambodia', 'image': 'lib/assets/angkor.jpg'},
   {'name': 'Machu Picchu', 'description': 'Incan city in the Andes Mountains', 'image': 'lib/assets/machu.jpg'},
   {'name': 'Great Wall of China', 'description': 'Ancient defensive wall spanning China', 'image': 'lib/assets/greatwall.jpg'},
   {'name': 'Colosseum', 'description': 'Ancient Roman amphitheater in Rome', 'image': 'lib/assets/colosseum.jpg'},
   {'name': 'Petra', 'description': 'Ancient city carved into rose-colored rock', 'image': 'lib/assets/petra.jpg'},
   {'name': 'Taj Mahal', 'description': 'Ivory-white marble mausoleum in India', 'image': 'lib/assets/taj.jpg'},
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
             'Historical Sites',
             style: TextStyle(
               color: Colors.black,
               fontWeight: FontWeight.bold,
             ),
           ),
           CircleAvatar(
             backgroundColor: Colors.grey[200],
             child: Icon(Icons.apartment, color: Colors.grey[600]),
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
       itemCount: historicalSites.length,
       itemBuilder: (context, index) {
         final site = historicalSites[index];
         return Hero(
           tag: '${site['name']}_$index',
           child: Material(
             child: InkWell(
               onTap: () {
                 Navigator.push(
                   context,
                   PageRouteBuilder(
                     pageBuilder: (context, animation, secondaryAnimation) =>
                         SiteDetailPage(site: site),
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
                         site['image']!,
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
                               site['name']!,
                               style: TextStyle(
                                 color: Colors.white,
                                 fontWeight: FontWeight.bold,
                                 fontSize: 14,
                               ),
                             ),
                             Text(
                               site['description']!,
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

class SiteDetailPage extends StatelessWidget {
 final Map<String, String> site;

 const SiteDetailPage({Key? key, required this.site}) : super(key: key);

 @override
 Widget build(BuildContext context) {
   return Scaffold(
     body: CustomScrollView(
       slivers: [
         SliverAppBar(
           expandedHeight: 300,
           pinned: true,
           flexibleSpace: FlexibleSpaceBar(
             title: Text(site['name']!),
             background: Hero(
               tag: site['name']!,
               child: Image.asset(
                 site['image']!,
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
                   site['description']!,
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