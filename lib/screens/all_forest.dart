import 'package:flutter/material.dart';

class AllForestScreen extends StatelessWidget {
 final forests = [
   {'name': 'Amazon Rainforest', 'description': 'The largest rainforest on Earth', 'image': 'lib/assets/amazon.jpg'},
   {'name': 'Black Forest', 'description': 'A mountainous region in Germany', 'image': 'lib/assets/black_forest.jpg'},
   {'name': 'Daintree Rainforest', 'description': 'A tropical rainforest in Australia', 'image': 'lib/assets/daintree.jpg'},
   {'name': 'Redwood National Park', 'description': 'Home to giant redwood trees', 'image': 'lib/assets/redwood.jpg'},
   {'name': 'Tongass National Forest', 'description': 'The largest forest in the USA', 'image': 'lib/assets/tongass.jpg'},
   {'name': 'Sundarbans', 'description': 'The largest tidal halophytic forest', 'image': 'lib/assets/sundarbans.jpg'},
   {'name': 'Monteverde Cloud Forest', 'description': 'A unique cloud forest in Costa Rica', 'image': 'lib/assets/monteverde.jpg'},
   {'name': 'Borneo Rainforest', 'description': 'One of the oldest rainforests in the world', 'image': 'lib/assets/borneo.jpg'},
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
         'All Forest',
         style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
         ),
       ),
       CircleAvatar(
         backgroundColor: Colors.grey[200],
         child: Icon(Icons.forest, color: Colors.grey[600]),
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
       itemCount: forests.length,
       itemBuilder: (context, index) {
         final forest = forests[index];
         return Hero(
           tag: '${forest['name']}_$index',
           child: Material(
             child: InkWell(
               onTap: () {
                 Navigator.push(
                   context,
                   PageRouteBuilder(
                     pageBuilder: (context, animation, secondaryAnimation) =>
                         ForestDetailPage(forest: forest),
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
                         forest['image']!,
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
                               forest['name']!,
                               style: TextStyle(
                                 color: Colors.white,
                                 fontWeight: FontWeight.bold,
                                 fontSize: 14,
                               ),
                             ),
                             Text(
                               forest['description']!,
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

class ForestDetailPage extends StatelessWidget {
 final Map<String, String> forest;

 const ForestDetailPage({Key? key, required this.forest}) : super(key: key);

 @override
 Widget build(BuildContext context) {
   return Scaffold(
     body: CustomScrollView(
       slivers: [
         SliverAppBar(
           expandedHeight: 300,
           pinned: true,
           flexibleSpace: FlexibleSpaceBar(
             title: Text(forest['name']!),
             background: Hero(
               tag: forest['name']!,
               child: Image.asset(
                 forest['image']!,
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
                   forest['description']!,
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