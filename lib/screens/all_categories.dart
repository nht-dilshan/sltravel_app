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
    {
      'image': 'lib/assets/beach.jpg',
      'title': 'Beach',
      'subtitle': 'Beach Category'
    },
    {
      'image': 'lib/assets/Udawattakele Forest.jpg',
      'title': 'Forest',
      'subtitle': 'Forest Category'
    },
    {
      'image': 'lib/assets/udawalawa.jpg',
      'title': 'Wild Life',
      'subtitle': 'Wild Life Category'
    },
    {
      'image': 'lib/assets/sigiriya.jpg',
      'title': 'Historical',
      'subtitle': 'Historical Category'
    },
    {
      'image': 'lib/assets/knuckles mountain.jpg',
      'title': 'Mountain',
      'subtitle': 'Mountain Category'
    },
    {
      'image': 'lib/assets/village.jpg',
      'title': 'Village',
      'subtitle': 'Village Category'
    },
    {
      'image': 'lib/assets/udarata.jpg',
      'title': 'Cultural',
      'subtitle': 'Cultural Category'
    },
    {
      'image': 'lib/assets/adventure.jpg',
      'title': 'Adventure',
      'subtitle': 'Adventure Category'
    },
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
          childAspectRatio: 0.75,
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
                    MaterialPageRoute(
                        builder: (context) => AllWildLifeScreen()),
                  );
                  break;
                case 'Historical':
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AllHistoricalScreen()),
                  );
                  break;
                case 'Mountain':
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AllMountainScreen()),
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
                    MaterialPageRoute(
                        builder: (context) => AllCulturalScreen()),
                  );
                  break;
                case 'Adventure':
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AllAdventureScreen()),
                  );
                  break;
              }
            },
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(16),
                        ),
                        image: DecorationImage(
                          image: AssetImage(category['image']!),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            category['title']!,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 4),
                          Text(
                            category['subtitle']!,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                            textAlign: TextAlign.center,
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
