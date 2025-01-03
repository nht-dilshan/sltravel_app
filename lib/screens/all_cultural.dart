import 'package:flutter/material.dart';

class AllCulturalScreen extends StatelessWidget {
  final culturalSites = [
  {'name': 'Religions', 'description': "There are several religions interwoven into Sri Lanka’s rich tapestry, but Buddhism is the belief system that lies at the core of the island’s complex culture.\n\nThis philosophy swept across Asia more than 2,000 years ago and since then has influenced many elements of the Sri Lankan way of life.\n\nWith hundreds of temples dotted throughout the country, tended by monks dressed in eye-catching saffron robes, you cannot help but notice the presence of Buddhism when you visit Sri Lanka. In addition to the unmissable architecture paying homage to Lord Buddha, the peace, hospitality, and selflessness at the heart of Buddhist teaching permeates every corner of the island.", 'image': 'lib/assets/religion.jpg'},
  {'name': 'Udarata Dance', 'description': "According to the legend the origin of the dance lies in a dance ritual known as the Kohomba kankariya (named for the deity Kohomba), which is also known as Kohomba yak kankariya or kankariya.\n\nTraditional dance masters believe that originally the king of a place referred to as 'Malaya Rata', and his two brothers performed the first Kohomba kankariya. Some believe that this 'Malaya Rata' was located in India.\n\nAccording to legend, King Malaya came to the island as a result of a trick of the god Śakra in order to cure the king, Panduwasdev, who was suffering from a mysterious illness.\n\nThe king was said to be suffering from a recurring dream in which a leopard was directing its tongue towards the king, believed to be as black magic of Kuveni, the first wife of King Vijaya. After the performance of the Kohomba kankariya the illness vanished, and many natives adopted the dance.", 'image': 'lib/assets/udarata.jpg'},
  {'name': 'Pahatharata', 'description': "The kolam natima belongs to a different category of ritualised mask dance than the yakun natima. Today it is rarely practised and has been gradually losing its importance over the last hundred years.\n\n The early twentieth century writer Otaker Pertold commented that, even in his day, much of the original import of the dance had been lost, and that on the few occasions that it was still performed it was undertaken by laymen rather than edura or those specifically versed in ritual dances. Because some forty masked characters are involved in this elaborate drama, with commensurate offerings expected for certain devils and demons, Pertold cites the great expense involved in staging a full kolam natima as responsible for its gradual abbreviation.", 'image': 'lib/assets/pahatharata.jpg'},
  {'name': 'Sambaragamuwa', 'description': " Much like the pahatharata natum (low country dances) of the coastal region and the udarata natum (up country or Kandyan dances) of the hill country, the Sabaragamuwa dance tradition is thus named because it originated in the Sabaragamuwa Province. \n\n The Sabaragamuwa dances, however, don’t get as much recognition as the up country or low country dances. According to Yohan Punchinilame, a lecturer of the Department of Sabaragamuwa dance at the University of Visual and Performing Arts in Colombo, there are four territorial divisions in terms of Sabaragamuwa dance; namely that of the Ratnapura, Kalawana, Balangoda, and Badulla divisions. Each area has a slightly different version of the ritualistic dances that make up the Sabaragamuwa tradition of dance, but Ratnapura has been historically celebrated as the heart of Sabaragamuwa dance in Sri Lanka. “While the district of Kegalle now falls under the Sabaragamuwa province, during the olden days of the kings, Kegalle was a part of the Kandyan Kingdom. ", 'image': 'lib/assets/sambaragamuwa.jpeg'},
  {'name': 'Theravada Buddhism', 'description': "Theravada Buddhism is a school of Buddhism that originated in India around 500 B.C. and is considered to be the oldest existing school of Buddhism.\n\n  The name Theravada means 'the doctrine of the elders' or 'the way of the elders' in Pali, the sacred language of the school. Theravada Buddhism is practiced in many countries, including: Cambodia, Laos, Myanmar (Burma), Sri Lanka, and Thailand.", 'image': 'lib/assets/theravada buddhism.jpg'},
 
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
                    site['name']!,
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
