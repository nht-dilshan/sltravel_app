import 'package:flutter/material.dart';

class AllMountainScreen extends StatelessWidget {
  final mountains = [
    {
      'name': 'Mount Everest',
      'description':
          "Pidurutalagala (Sinhala: පිදුරුතලාගල, pronounced [ˌpidurutaˈlaːɡələ], Straw Plateau Rock), or previously Mount Pedro in English, is the highest mountain in Sri Lanka, at 2,524 m (8,281 ft). \n\nIt is situated North-North-East from the town of Nuwara Eliya and is easily visible from most areas of the Central Province. Its summit is home to the central communications array of the Government of Sri Lanka and armed forces and serves as an important point in the country's radar system. The peak is currently designated as an 'ultra-high security zone', and protected by a large military base; the peak is strictly off-limits to the general public.",
      'image': 'lib/assets/pidurutalagala.jpg'
    },
    {
      'name': 'rassagala',
      'description':
          "It was the fairyland-like scenery that we had seen from atop Batalegala in our inaugural hike, of a distant water fall gushing down between two rocky ridges that prompted us to hike there one day. That hike made us feel that we should go still beyond to explore the mountain range above the fall.\n\nThus having reached the top of the waterfall one day, we set out to cover the mountain range beyond the waterfall and reach a place called Rassagala. We were treated to a panoramic view of the scenery around from the top of the waterfall, while in the cool refreshing water.",
      'image': 'lib/assets/rassagala.jpg'
    },
    {
      'name': 'lakegala',
      'description':
          "Lakegala mountain is situated in Sri Lanka about 175 kilometres (109 mi) away from the capital Colombo. This mountain is situated in Meemure village.\n\nLakegala is situated near the Border between Kandy and Matale Districts. There are several access points to Lakegala rock but the safest access road is from Meemure Village.\n\n'The Rock of Lanka' is the meaning of 'Lakegala' in Sinhala language. The rock is about 1310m high and it is in the Knuckles mountain range aka 'Dumbara Mitiyawatha'.",
      'image': 'lib/assets/lakegala.jpg'
    },
    {
      'name': 'knuckles mountain',
      'description':
          "The Dumbara Mountain Range lies in central Sri Lanka, in the Districts of Matale and Kandy.\n\n The Sinhalese residents have traditionally referred to the area as Dumbara Kanduvetiya meaning Mist-laden Mountain Range.\n\n Early British surveyors gave the name knuckles, referring to a series of recumbent folds and peaks in the west of the massif which resemble the knuckles of clenched fist when viewed from certain locations in the Kandy District.",
      'image': 'lib/assets/knuckles mountain.jpg'
    },
    {
      'name': 'haggala',
      'description':
          " Hakgala is a mountain situated in the Nuwara Eliya district of Sri Lanka at 2,169 m (7,116 ft) above mean sea level, most parts of the mountain are covered with forest belonging to Hakgala Strict Nature Reserve.\n\n  Hakgala Botanical Garden is situated on the northeastern slope of the Hakgala Mountain. The southwestern side of the mountain has a wet climate compared to the northeastern slope since the southwestern part faces directly to the southwest Monsoon.",
      'image': 'lib/assets/haggala.jpg'
    },
    {
      'name': 'namunukula',
      'description':
          "Namunukula, literally 'Nine Peaks' in Sinhala language, is the name of a mountain range in Sri Lanka's province of Uva.\n\n  Its main peak is 2,036 metres (6,679.8 ft) high. The nearby town is also sometimes called Namunukula Town.\n\nDuring the Ming treasure voyages of the 15th century, the Chinese fleet led by Admiral Zheng He made use of this geographical feature in their navigation to Sri Lanka, as the mountain is the first visible landmark of Sri Lanka after departing from Sumatra.",
      'image': 'lib/assets/namunukula.jpg'
    },
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
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        var tween =
                            Tween(begin: Offset(1.0, 0.0), end: Offset.zero)
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

  const MountainDetailPage({Key? key, required this.mountain})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              //  title: Text(mountain['name']!),
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
                    mountain['name']!,
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
