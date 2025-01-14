import 'package:flutter/material.dart';

class AllVillageScreen extends StatelessWidget {
  final villages = [
    {
      'name': 'Little England',
      'description':
          'Little England by Joes is the perfect place to stay for a family holiday, a romantic break or a group getaway Surrounded with lush greenery of the Nuwara Eliya. This showcases the elegance of British architecture infused with Sri Lankan charm. The Cottage holds a majestic view of the tea fields  and the Blue Mountains. \n\n A perfect combination of company architecture and nature’s serenity, Little England by Joes is crafted for a peaceful dwelling. This artistic space brings Five luxurious bedrooms with attached baths and modern amenities to ensure comfort.',
      'image': 'lib/assets/little_england.jpg'
    },
    {
      'name': 'Meemure',
      'description':
          'Meemure is a village with a population of about 420 people living in it It is located near the border between Kandy District and Matale District in the Knuckles Mountain Range. Meemure is one of the most remote villages in Sri Lanka with the only access via a 14 km (8.7 mi) trail from the town of Loolwatte. There is no cellular service available in the village,[3] but a CDMA telephone service is available. There is no direct mail delivery to the village; a villager journeys each day to Thapal Junction to exchange incoming and outgoing postal mail with a postman.',
      'image': 'lib/assets/meemure.jpg'
    },
    {
      'name': 'Galle',
      'description':
          'Galle was known as Gimhathiththa before the arrival of the Portuguese in the 16th century, when it was the main port on the island. Ibn Batuta, a Moroccan Berber Muslim traveller in the 14th century, referred to it as Qali.[2] Galle reached the height of its development in the 18th century, during the Dutch colonial period. Galle is the best example of a fortified city built by the Portuguese in South and Southeast Asia, showing the interaction between Portuguese architectural styles and native traditions. The city was extensively fortified by the Dutch during the 17th century from 1649 onwards. The Galle fort is a World Heritage Site and is the largest remaining fortress in Asia built by European occupiers.',
      'image': 'lib/assets/galle.jpg'
    },
    {
      'name': 'Sembuwatta',
      'description':
          'Sembuwatta Lake is a tourist attraction situated at Elkaduwa in the Matale District of Sri Lanka, adjacent to the Campbell’s Lane Forest Reserve. Sembuwatta Lake is a man-made lake created from natural spring water. Alongside the lake is a natural swimming pool.Sembuwatta Lake is believed to be 9 m (30 ft) to 12 m (39 ft) deep. Currently the lake belongs to the Elkaduwa Plantations and produces electricity for the nearby villagers.',
      'image': 'lib/assets/sembuwatta.JPG'
    },
    {
      'name': 'Narampanawa',
      'description':
          'In the Ceylon census of 1911, Naranpanawa is listed along with the villages of Naranpanawa Dembatagolla, Naranpanawa Egodagammedda, Naranpanawa Kandegammedda, Naranpanawa Disanekgammedda and Naranpanawa Karagasteima as being under the jurisdiction of one village headman. For administration, all were in the Pallispattu West sub-division of Pata Dumbara in Kandy District.',
      'image': 'lib/assets/narampanawa.jpg'
    },
    {
      'name': 'Trinkomalee',
      'description':
          'Trincomalee historically known as Gokanna and Gokarna, is the administrative headquarters of the Trincomalee District and major resort port city of Eastern Province, Sri Lanka. Located on the east coast of the island overlooking the Trincomalee Harbour, Trincomalee has been one of the main centres of Sri Lankan Tamil speaking culture on the island for nearly a millennium. \n\n With a population of 99,135, the city is built on a peninsula of the same name, which divides its inner and outer harbours. It is home to the famous Koneswaram temple from where it developed and earned its historic Tamil name Thirukonamalai. The town is home to other historical monuments such as the Bhadrakali Amman Temple, Trincomalee, the Trincomalee Hindu Cultural Hall and, opened in 1897, the Trincomalee Hindu College. Trincomalee is also the site of the Trincomalee railway station and an ancient ferry service to Jaffna and the south side of the harbour at Muttur.',
      'image': 'lib/assets/trinkomalee.jpg'
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
              'Villages',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.grey[200],
              child: Icon(Icons.home_work, color: Colors.grey[600]),
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
        itemCount: villages.length,
        itemBuilder: (context, index) {
          final village = villages[index];
          return Hero(
            tag: '${village['name']}_$index',
            child: Material(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          VillageDetailPage(village: village),
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
                          village['image']!,
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
                                village['name']!,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                village['description']!,
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

class VillageDetailPage extends StatelessWidget {
  final Map<String, String> village;

  const VillageDetailPage({Key? key, required this.village}) : super(key: key);

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
                tag: village['name'] ?? 'Village',
                child: Image.asset(
                  village['image'] ?? 'lib/assets/placeholder.jpg',
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
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.green.shade50,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      village['name'] ?? '',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.green.shade800,
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.green.shade200),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      village['description'] ?? '',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.green.shade700,
                        height: 1.5,
                      ),
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
