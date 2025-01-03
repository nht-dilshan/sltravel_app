import 'package:flutter/material.dart';

class AllWildLifeScreen extends StatelessWidget {
  final wildLifeParks = [
    {'name': 'udawalawa', 'description': 'Udawalawe National Park is a destination to see elephants. Other animals in the park include leopards, jungle cats, monkeys.', 'image': 'lib/assets/udawalawa.jpg'},
    {'name': 'Yala National Park', 'description': 'Spot the almighty leopard in this safari adventure at Yala National Park. Take an adventure to see elephants, buffalo, snakes, sloths, jackals, and more.', 'image': 'lib/assets/yala.jpg'},
    {'name': 'Tea Plantation ella', 'description': 'You can walk through the tea estates in Ella as it is enriched with full of tea plantations. You will see the pluckers are busy with their jobs.', 'image': 'lib/assets/Tea plantation ella.png'},
    {'name': 'maduru oya national park', 'description': "The park lies entirely in the dry zone although the park's southern boundary is near the intermediate zone.", 'image': 'lib/assets/maduru oya.jpg'},
    {'name': 'ella rock', 'description': 'Discover the three iconic sights in Ella on this full day organized tour. Your guide and driver will take you from point to point, explaining the history and significance of each.', 'image': 'lib/assets/ELLAROCK.jpg'},
    {'name': 'sigiriya', 'description': "Visit two of Sri Lanka's most important UNESCO World Heritage Sites in just one day with this guided trip to Dambulla and Sigiriya Rock.", 'image': 'lib/assets/sigiriya.jpg'},
    {'name': 'minneriya', 'description': "Visit either Minneriya National Park or Kaudulla National Park during this full-day private tour.", 'image': 'lib/assets/minneriya.jpg'},
    {'name': 'Wasgamuwa National Park', 'description': "Experience the magic of Wasgamuwa National Park on this safari. See the famous Sri Lankan elephants, and catch sight of a huge range of native bird species.", 'image': 'lib/assets/wasgamuwa.jpg'},
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
              'All Wildlife Parks',
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
        itemCount: wildLifeParks.length,
        itemBuilder: (context, index) {
          final park = wildLifeParks[index];
          return Hero(
            tag: '${park['name']}_$index',
            child: Material(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          ParkDetailPage(park: park),
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
                          park['image']!,
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
                                park['name']!,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                park['description']!,
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

class ParkDetailPage extends StatelessWidget {
  final Map<String, String> park;

  const ParkDetailPage({Key? key, required this.park}) : super(key: key);

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
                tag: park['name']!,
                child: Image.asset(
                  park['image']!,
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
                    park['name']!,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  SizedBox(height: 8),
                  Text(
                    park['description']!,
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