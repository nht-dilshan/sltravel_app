import 'package:flutter/material.dart';
import 'all_places_screen.dart';
import 'all_categories.dart';
import 'all_beach.dart';
import 'all_forest.dart';
import 'all_wild_life.dart';
import 'all_historical.dart';
import 'all_mountain.dart';
import 'all_village.dart';
import 'all_cultural.dart';
import 'all_adventure.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Popular',
                    style: TextStyle(
                      color: Colors.green[900],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AllPlacesScreen()),
                    );
                  },
                  child: Text(
                    'All places',
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CategoriesScreen()),
                    );
                  },
                  child: Text(
                    'Categories',
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                ),
              ],
            ),
            CircleAvatar(
              backgroundColor: Colors.grey[200],
              child: Icon(Icons.person, color: Colors.grey[600]),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 230,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/assets/bg1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              'Hi, Travelers!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              'Explore Sri Lanka',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          children: [
                            const Icon(Icons.search, color: Colors.grey),
                            const SizedBox(width: 8),
                            Expanded(
                              child: TextField(
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Where do you want to go?',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Featured Places',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Most trending places in the last 2 weeks',
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AllPlacesScreen()),
                            );
                          },
                          child: Text(
                            'See all',
                            style: TextStyle(color: Colors.green),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 280,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          final places = [
                            {
                              'image': 'lib/assets/thalpe.jpg',
                              'title': 'Coconut Tree Hill',
                              'location': 'Mirissa'
                            },
                            {
                              'image': 'lib/assets/sigiriya.jpeg',
                              'title': 'Sigiriya Rock',
                              'location': 'Sigiriya'
                            },
                            {
                              'image': 'lib/assets/sri dalada maligawa.jpg',
                              'title': 'Temple of the Tooth',
                              'location': 'Kandy'
                            },
                            {
                              'image': 'lib/assets/yala.jpg',
                              'title': 'Yala National Park',
                              'location': 'Yala'
                            },
                            {
                              'image': 'lib/assets/gall_port.jpg',
                              'title': 'Galle Fort',
                              'location': 'Galle'
                            },
                            {
                              'image': 'lib/assets/nilwella.jpeg',
                              'title': 'Nilwella Blue Beach',
                              'location': 'Thangala'
                            },
                            {
                              'image': 'lib/assets/udawalawa.jpg',
                              'title': 'Udawalawa National Park',
                              'location': 'Udawalawa'
                            },
                            {
                              'image': 'lib/assets/udawattakele.jpg',
                              'title': 'Udawattakele Forest',
                              'location': 'Kandy'
                            },
                            {
                              'image': 'lib/assets/ella.jpg',
                              'title': 'Ella Rock',
                              'location': 'Ella'
                            },
                            {
                              'image': 'lib/assets/red_masjid.jpg',
                              'title': 'Red Masjid',
                              'location': 'Colombo'
                            },
                            {
                              'image': 'lib/assets/mulgirigala rajamaha viharaya.jpg',
                              'title': 'Mulkirigala Raja Maha Viharaya',
                              'location': 'Mulkirigala'
                            },
                            {
                              'image': 'lib/assets/sithulpawwa.jpg',
                              'title': 'Sithulpawwa Rajamaha Viharaya',
                              'location': 'Sithulpawwa'
                            },
                            {
                              'image': 'lib/assets/ruwanweli seya.jpg',
                              'title': 'Ruwanmeli Maha Seya ',
                              'location': 'Anueradhapura'
                            },
                            {
                              'image': 'lib/assets/anuradhapura.jpg',
                              'title': 'Anuradhapura',
                              'location': 'Anuradhapura'
                            },
                            {
                              'image': 'lib/assets/little_england.jpg',
                              'title': 'Littele England',
                              'location': 'Nuwara Eliya'
                            },
                            {
                              'image': 'lib/assets/theravada buddhism.jpg',
                              'title': 'Samadhi Buddha Statue',
                              'location': 'Anuradhapura'
                            },
                            {
                              'image': 'lib/assets/pahatharata.jpg',
                              'title': 'Pahatharata Dance',
                              'location': 'Down South'
                            },
                            {
                              'image': 'lib/assets/udarata.jpg',
                              'title': 'Udatara Dance',
                              'location': 'Hill Country'
                            },
                            {
                              'image': 'lib/assets/sambaragamuwa.jpeg',
                              'title': 'Sabaragamuwa Dance',
                              'location': 'Gem City-Rathnapura'
                            },

                          ];
                          final place = places[index];
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      PlaceDetailPage(place: place),
                                ),
                              );
                            },
                            child: Container(
                              width: 150,
                              margin: const EdgeInsets.only(right: 16),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                image: DecorationImage(
                                  image: AssetImage(place['image']!),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    bottom: 10,
                                    left: 16,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          place['title']!,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          place['location']!,
                                          style: const TextStyle(
                                            color: Colors.white70,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Categories',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CategoriesScreen()),
                            );
                          },
                          child: Text(
                            'See all',
                            style: TextStyle(color: Colors.green),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 0.85,
                      ),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        final categories = [
                          {'image': 'lib/assets/beach.jpg', 'title': 'Beach'},
                          {
                            'image': 'lib/assets/Udawattakele Forest.jpg',
                            'title': 'Forest'
                          },
                          {
                            'image': 'lib/assets/udawalawa.jpg',
                            'title': 'Wild Life'
                          },
                          {
                            'image': 'lib/assets/sigiriya.jpg',
                            'title': 'Historical'
                          },
                        ];
                        final category = categories[index];
                        return GestureDetector(
                          onTap: () {
                            switch (category['title']) {
                              case 'Beach':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            AllBeachScreen()));
                                break;
                              case 'Forest':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            AllForestScreen()));
                                break;
                              case 'Wild Life':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            AllWildLifeScreen()));
                                break;
                              case 'Historical':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            AllHistoricalScreen()));
                                break;
                            }
                          },
                          child: Card(
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(12)),
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
                                    padding: EdgeInsets.all(4),
                                    child: Text(
                                      category['title']!,
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
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
      appBar: AppBar(
        title: Text(place['title']!),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(place['image']!),
            SizedBox(height: 16),
            Text(
              place['title']!,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              place['location']!,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
