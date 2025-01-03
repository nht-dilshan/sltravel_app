import 'package:flutter/material.dart';

class AllPlacesScreen extends StatefulWidget {
  @override
  _AllPlacesScreenState createState() => _AllPlacesScreenState();
}

class _AllPlacesScreenState extends State<AllPlacesScreen> {
  final places = [
    {'name': 'Beach', 'description': 'Beautiful beaches in Sri Lanka', 'image': 'lib/assets/thalpe.jpg'},
    {'name': 'Wildlife', 'description': 'Amazing wildlife experiences', 'image': 'lib/assets/thalpe.jpg'},
    {'name': 'Heritage', 'description': 'Rich cultural heritage sites', 'image': 'lib/assets/thalpe.jpg'},
    {'name': 'Waterfalls', 'description': 'Stunning waterfalls', 'image': 'lib/assets/thalpe.jpg'},
    {'name': 'Mountains', 'description': 'Breathtaking mountain views', 'image': 'lib/assets/thalpe.jpg'},
    {'name': 'Temples', 'description': 'Ancient Buddhist temples', 'image': 'lib/assets/thalpe.jpg'},
    {'name': 'Cities', 'description': 'Modern city experiences', 'image': 'lib/assets/thalpe.jpg'},
    {'name': 'Food', 'description': 'Local culinary delights', 'image': 'lib/assets/thalpe.jpg'},
    {'name': 'Culture', 'description': 'Traditional cultural sites', 'image': 'lib/assets/thalpe.jpg'},
    {'name': 'Cities', 'description': 'Modern city experiences', 'image': 'lib/assets/thalpe.jpg'},
    {'name': 'Food', 'description': 'Local culinary delights', 'image': 'lib/assets/thalpe.jpg'},
    {'name': 'Culture', 'description': 'Traditional cultural sites', 'image': 'lib/assets/thalpe.jpg'},
    {'name': 'Beach', 'description': 'Beautiful beaches in Sri Lanka', 'image': 'lib/assets/thalpe.jpg'},
    {'name': 'Wildlife', 'description': 'Amazing wildlife experiences', 'image': 'lib/assets/thalpe.jpg'},
    {'name': 'Heritage', 'description': 'Rich cultural heritage sites', 'image': 'lib/assets/thalpe.jpg'},
    {'name': 'Waterfalls', 'description': 'Stunning waterfalls', 'image': 'lib/assets/thalpe.jpg'},
    {'name': 'Mountains', 'description': 'Breathtaking mountain views', 'image': 'lib/assets/thalpe.jpg'},
    {'name': 'Temples', 'description': 'Ancient Buddhist temples', 'image': 'lib/assets/thalpe.jpg'},
    {'name': 'Cities', 'description': 'Modern city experiences', 'image': 'lib/assets/thalpe.jpg'},
    {'name': 'Food', 'description': 'Local culinary delights', 'image': 'lib/assets/thalpe.jpg'},
    {'name': 'Culture', 'description': 'Traditional cultural sites', 'image': 'lib/assets/thalpe.jpg'},
    {'name': 'Cities', 'description': 'Modern city experiences', 'image': 'lib/assets/thalpe.jpg'},
    {'name': 'Food', 'description': 'Local culinary delights', 'image': 'lib/assets/thalpe.jpg'},
    {'name': 'Culture', 'description': 'Traditional cultural sites', 'image': 'lib/assets/thalpe.jpg'},
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
              'Explore Places',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.grey[200],
              child: Icon(Icons.person, color: Colors.grey[600]),
            ),
          ],
        ),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.75,
        ),
        itemCount: places.length,
        itemBuilder: (ctx, index) {
          final place = places[index];
          return Hero(
            tag: '${place['name']}_$index',
            child: Material(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) => PlaceDetailPage(place: place),
                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                        var begin = Offset(1.0, 0.0);
                        var end = Offset.zero;
                        var curve = Curves.easeInOut;
                        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
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
                          place['image']!,
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
                                place['name']!,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                place['description']!,
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

class PlaceDetailPage extends StatelessWidget {
  final Map<String, String> place;

  const PlaceDetailPage({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: place['name']!,
                child: Image.asset(
                  place['image']!,
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
                    place['name']!,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  SizedBox(height: 8),
                  Text(
                    place['description']!,
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