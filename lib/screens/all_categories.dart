import 'package:flutter/material.dart';
import 'all_beach.dart';
import 'all_adventure.dart';
import 'all_cultural.dart';
import 'all_forest.dart';
import 'all_historical.dart';
import 'all_mountain.dart';
import 'all_village.dart';
import 'all_wild_life.dart';

class CategoriesScreen extends StatelessWidget {
  final categories = [
    {'image': 'lib/assets/beach.jpg', 'title': 'Beach'},
    {'image': 'lib/assets/Udawattakele Forest.jpg', 'title': 'Forest'},
    {'image': 'lib/assets/udawalawa.jpg', 'title': 'Wild Life'},
    {'image': 'lib/assets/sigiriya.jpg', 'title': 'Historical'},
    {'image': 'lib/assets/knuckles mountain.jpg', 'title': 'Mountain'},
    {'image': 'lib/assets/c2.jpg', 'title': 'Village'},
    {'image': 'lib/assets/c2.jpg', 'title': 'Cultural'},
    {'image': 'lib/assets/c2.jpg', 'title': 'Adventure'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Categories',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return GestureDetector(
            onTap: () {
              switch (category['title']) {
                case 'Beach':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AllBeachScreen()),
                  );
                  break;
                case 'Forest':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AllForestScreen()),
                  );
                  break;
                case 'Wild Life':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AllWildLifeScreen()),
                  );
                  break;
                case 'Historical':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AllHistoricalScreen()),
                  );
                  break;
                case 'Mountain':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AllMountainScreen()),
                  );
                  break;
                case 'Village':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AllVillageScreen()),
                  );
                  break;
                case 'Cultural':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AllCulturalScreen()),
                  );
                  break;
                case 'Adventure':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AllAdventureScreen()),
                  );
                  break;
                default:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlaceDetailPage(
                        place: category,
                        heroTag: '${category['title']}_$index',
                      ),
                    ),
                  );
              }
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: AssetImage(category['image']!),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 16,
                    left: 16,
                    child: Text(
                      category['title']!,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            blurRadius: 10.0,
                            color: Colors.black,
                            offset: Offset(2.0, 2.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
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
  final String heroTag;

  const PlaceDetailPage({Key? key, required this.place, required this.heroTag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place['title']!),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: heroTag,
              child: Image.asset(place['image']!),
            ),
            SizedBox(height: 16),
            Text(
              place['title']!,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Description of ${place['title']}',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}