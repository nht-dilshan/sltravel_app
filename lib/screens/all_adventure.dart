import 'package:flutter/material.dart';

class AllAdventureScreen extends StatefulWidget {
  @override
  _AllAdventureScreenState createState() => _AllAdventureScreenState();
}

class _AllAdventureScreenState extends State<AllAdventureScreen> {
  final List<Map<String, String>> adventures = [
    {'name': 'Skydiving', 'description': 'Experience the thrill of free fall.', 'image': 'lib/assets/skydiving.jpg'},
    {'name': 'Bungee Jumping', 'description': 'Leap into the adventure of a lifetime.', 'image': 'lib/assets/bungee.jpg'},
    {'name': 'Mountain Climbing', 'description': 'Conquer majestic peaks.', 'image': 'lib/assets/mountain.jpg'},
    {'name': 'Scuba Diving', 'description': 'Explore the underwater world.', 'image': 'lib/assets/scuba.jpg'},
    {'name': 'White Water Rafting', 'description': 'Navigate thrilling river rapids.', 'image': 'lib/assets/rafting.jpg'},
    {'name': 'Paragliding', 'description': 'Soar high above the ground.', 'image': 'lib/assets/paragliding.jpg'},
    {'name': 'Zip Lining', 'description': 'Glide through treetops at high speeds.', 'image': 'lib/assets/zipline.jpg'},
    {'name': 'Caving', 'description': 'Discover hidden underground wonders.', 'image': 'lib/assets/caving.jpg'},
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
              'All Adventures',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.grey[200],
              child: Icon(Icons.sports_handball, color: Colors.grey[600]),
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
          childAspectRatio: 0.8,
        ),
        itemCount: adventures.length,
        itemBuilder: (context, index) {
          final adventure = adventures[index];
          return Hero(
            tag: '${adventure['name']}_$index',
            child: Material(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AdventureDetailPage(adventure: adventure),
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
                          adventure['image'] ?? 'lib/assets/placeholder.jpg',
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
                                adventure['name'] ?? 'Adventure',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                adventure['description'] ?? '',
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

class AdventureDetailPage extends StatelessWidget {
  final Map<String, String> adventure;

  const AdventureDetailPage({Key? key, required this.adventure}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(adventure['name'] ?? 'Adventure'),
              background: Hero(
                tag: adventure['name'] ?? 'Adventure',
                child: Image.asset(
                  adventure['image'] ?? 'lib/assets/placeholder.jpg',
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
                    adventure['description'] ?? '',
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
