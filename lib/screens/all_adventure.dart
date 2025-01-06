import 'package:flutter/material.dart';

class AllAdventureScreen extends StatefulWidget {
  @override
  _AllAdventureScreenState createState() => _AllAdventureScreenState();
}

class _AllAdventureScreenState extends State<AllAdventureScreen> {
  final List<Map<String, String>> adventures = [
    {
      'name': 'Baloon Ride',
      'description':
          'You’ve never experienced true magic, until you’ve flown in a Hot Air Balloon over Sri Lanka – Paradise Island. The climate in Dambulla – Kandalama is exceptional for flying balloons, due to its extremely calm and predictable nature. \n\n Sri Lanka Balloon Rides generally take place in the early morning (because the weather is more stable), and the average distance we cover, in accordance with the wind speed and direction, is anywhere from one to ten miles. The height at which we fly will vary from tree top level – where we enjoy contour flying at low level to several thousand feet up: the perfect vantage point to observe the majesty of Dambulla – Kandalama area.',
      'image': 'lib/assets/baloon.jpg'
    },
    {
      'name': 'Kithulgala Mountain Climbing',
      'description':
          'Trek to to the famous Katarangala streams to find yourself sliding down streams and jumping off rocks followed by a breathtaking descend down a 100 ft waterfall. Truly something remarkable to have ticked off the bucket list.',
      'image': 'lib/assets/mountain_climb.jpg'
    },
    {
      'name': 'Kithulgala Boat Ride',
      'description':
          'Experience the thrill of 5 major rapids and 4 minor rapids along the Kelaniya river of Sri Lanka and then trek to to the famous Katarangala streams to find yourself sliding down streams and jumping off rocks! ',
      'image': 'lib/assets/boat_ride.jpg'
    },
    {
      'name': 'Surfine',
      'description':
          'I have spent my life meeting, surfing and working with travellers and surfers from all over the world here in sri lanka. I have an enormous amount of knowledge about this beautiful country, It`s history, culture and secret surf points! I established Lanka Surf Trips a reliable, professional family run company, with fun, honesty and friendship being our priority. If you want to visit and share our passion for Sri Lanka. In 2016 I expanded the company and launched LST Adventures to include all outdoor adventures, including Motorcycle Tours, Wakeboarding, Paddle boarding, white water rafting, river safari, cycling, scooter/hiking tours, whale watching, national parks.',
      'image': 'lib/assets/surf.jpeg'
    },
    {
      'name': 'Flyboarding',
      'description':
          'Riverside Araliya is a hotel which also offers the new sport of flyboarding in Sri Lanka. Watersports is one of our main attractions at Riverside Araliya with the Bentota river right next to the hotel. Wakeboarding, jet ski, stand up paddle boarding, diving, and waterskiing are also on offer along with boat tours of the river and the mangroves, as well as trips to and from the beaches on the other side of the river.',
      'image': 'lib/assets/flyboard.jpg'
    },
    {
      'name': 'Swimming with Turtles',
      'description':
          'Sri Lanka, being an island nation, is surrounded by seas. It has many rivers and waterfalls, making it the perfect place to engage you in different water-based activities which includes some thrilling water sports. If you are someone who loves to dash and have some fun in the water, try out the various adrenaline-pumping and calming water sports in Sri Lanka. No matter how old or young you are, there is something or the other in store for you.',
      'image': 'lib/assets/swimming_turtles.jpg'
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
                      builder: (context) =>
                          AdventureDetailPage(adventure: adventure),
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

  const AdventureDetailPage({Key? key, required this.adventure})
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
                    adventure['name'] ?? '',
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
