import 'package:flutter/material.dart';

class AllCulturalScreen extends StatelessWidget {
  final culturalSites = [
    {'name': 'Machu Picchu', 'description': 'Ancient Inca city in Peru', 'image': 'lib/assets/machu_picchu.jpg'},
    {'name': 'Great Wall of China', 'description': 'Historic wall stretching across China', 'image': 'lib/assets/great_wall.jpg'},
    {'name': 'Taj Mahal', 'description': 'Iconic mausoleum in India', 'image': 'lib/assets/taj_mahal.jpg'},
    {'name': 'Colosseum', 'description': 'Roman amphitheater in Italy', 'image': 'lib/assets/colosseum.jpg'},
    {'name': 'Petra', 'description': 'Rock-carved city in Jordan', 'image': 'lib/assets/petra.jpg'},
    {'name': 'Christ the Redeemer', 'description': 'Famous statue in Brazil', 'image': 'lib/assets/christ_redeemer.jpg'},
    {'name': 'Chichen Itza', 'description': 'Mayan pyramid in Mexico', 'image': 'lib/assets/chichen_itza.jpg'},
    {'name': 'Acropolis of Athens', 'description': 'Ancient citadel in Greece', 'image': 'lib/assets/acropolis.jpg'},
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
              'Cultural Sites',
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            CircleAvatar(
              backgroundColor: Colors.grey[200],
                child: Icon(Icons.museum, color: Colors.grey[600]),
            
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
        itemCount: culturalSites.length,
        itemBuilder: (context, index) {
          final site = culturalSites[index];
          return Hero(
            tag: '${site['name']}_$index',
            child: Material(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          CulturalDetailPage(site: site),
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

class CulturalDetailPage extends StatelessWidget {
  final Map<String, String> site;

  const CulturalDetailPage({Key? key, required this.site}) : super(key: key);

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
