import 'package:flutter/material.dart';

class AllBeachScreen extends StatefulWidget {
  @override
  _AllBeachScreenState createState() => _AllBeachScreenState();
}

class _AllBeachScreenState extends State<AllBeachScreen> {
  final List<Map<String, String>> beaches = [
    {
      'name': 'Hambanthota',
      'description':
          'commercialized beaches in Sri Lanka, Hambantota Beach is known for its tranquility and natural beauty, making it an ideal destination for those looking to escape the crowds and experience the unspoiled charm of the island southern shores.The beach is characterized by its wide, sandy shores and the gentle waves of the Indian Ocean, making it a perfect spot for leisurely walks, sunbathing, and relaxation. The area around Hambantota Beach is less developed compared to other popular tourist destinations, which means visitors can enjoy the beauty of the coast without the distractions of heavy tourism infrastructure. The calm and quiet atmosphere makes it a great location for meditation, yoga, or simply unwinding while listening to the soothing sounds of the ocean.',
      'image': 'lib/assets/hambanthota.jpeg'
    },
    {
      'name': 'Bentota',
      'description':
          'Bentota Beach is one of Sri Lanka’s most famous beach destinations, located on the southwestern coast. Known for its golden sands, calm waters, and luxurious resorts, Bentota is a prime location for both relaxation and adventure. With a mix of water sports, cultural attractions, and natural beauty, Bentota Beach offers a wide range of activities for every kind of traveler. Bentota Beach boasts pristine golden sands and calm, clear waters, making it an ideal spot for swimming, sunbathing, and leisurely beach walks. The wide stretches of sand offer plenty of space for both relaxation and beach games.',
      'image': 'lib/assets/benthota.jpg'
    },
    {
      'name': 'Mirissa',
      'description':
          'Mirissa Beach, located on the southern coast of Sri Lanka, is renowned for its stunning scenery, vibrant marine life, and laid-back atmosphere. This picturesque beach is a popular destination for travelers seeking both relaxation and adventure, offering a range of activities from whale watching to surfing. Mirissa Beach features a crescent-shaped stretch of golden sand and crystal-clear waters. It is ideal for sunbathing, swimming, and leisurely beach walks. The beach’s relaxed vibe makes it a perfect spot for unwinding and enjoying the natural beauty.',
      'image': 'lib/assets/mirissa.jpg'
    },
    {
      'name': 'Unawatuna',
      'description':
          'Unawatuna Beach, located on the southern coast of Sri Lanka, is known for its beautiful crescent-shaped bay, golden sands, and vibrant marine life. This beach offers a perfect mix of relaxation, water activities, and cultural experiences, making it a popular destination for travelers seeking both tranquility and adventure. Unawatuna Beach features a picturesque crescent of golden sand with clear, shallow waters. The beach is ideal for swimming, sunbathing, and enjoying leisurely walks. Its gentle waves and calm waters make it suitable for families and those looking for a relaxing beach experience.',
      'image': 'lib/assets/Unawatuna.jpg'
    },
    {
      'name': 'Godawaya',
      'description':
          'Godavaya or Godawaya is a small fishing hamlet located at the mouth of the Walawe river, between Ambalantota and Hambantota in the Hambantota District in southern Sri Lanka. It received its name, originally Goda Pavata Pattana or Gota Pabbata Pattana (meaning "small rock harbour") from a huge rock overlooking the Indian Ocean, at the foot of which it is situated. The original harbour town was an entrepot on the Maritime Silk Road from at least the 2nd century CE. It has been the site of extensive excavations by German and Sri Lanka Archaeologists since 1994.',
      'image': 'lib/assets/godawaya.jpg'
    },
    {
      'name': 'Ussangoda',
      'description':
          'Ussangoda National Park is a Sri Lankan national park and designated archaeological site, situated on the Colombo – Kataragama road near Ambalantota – Nonagama Junction in Hambantota District. It is located in the southern sea turtle breeding zones. Ussangoda is a patch of high ground by the sea and spreads over a significant area. Unlike the rest of the land surrounding, it is only covered with grass and a few pockets of pigmy forests. The summit of Ussangoda area pans like a plateau for a significant length',
      'image': 'lib/assets/ussangoda.jpg'
    },
    {
      'name': 'Tangalle Beach',
      'description':
          'Tangalle (also known as Tangalla) is a large town in Hambantota District, Southern Province, Sri Lanka, governed by an Urban Council. It is one of the largest towns in southern province. It is located 195 km (121 mi) south of Colombo and 35 km (22 mi) east of Matara. It has a mild climate, in comparison to the rest of the district, and sandy beaches. Tangalle is a regionally important fishing port, situated on one of the largest bays in Sri Lanka, which is protected from the ocean by an enclosing reef. It is a centre of tourism and a popular holiday destination on the south coast. In the town centre there is an old Dutch fort which is used as a prison today. The Dutch and subsequently the British used Tangalle as an important anchorage on the southern coast of the island. The Dutch Fort, Rest House and Court House are a few remaining examples of Dutch architecture in Tangalle.',
      'image': 'lib/assets/thangalla.jpg'
    },
    {
      'name': 'Nilwella Blue Beach',
      'description':
          'Blue Beach Island is a beach camping spot in Nilwella, near Dikwella. It is a private island giving amazing views of the sunset in southern Sri Lanka. Many love to camp in the cozy tents here surrounding a blazing campfire. It gives a very unique type of camping experience with the sound of the waves crashing against the shoreline. The experience at Blue Beach Island includes camping at night and snorkelling at sunrise. It is a recent addition to beach and camping adventures in Sri Lanka. It is an isolated island about 50 m away from the mainland which makes it a more secluded area ideal for camping. Camping here also includes a chance to indulge in some amazing seafood dishes, barbecue and various other delicacies.',
      'image': 'lib/assets/nilwella.jpeg'
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
              'All Beaches',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.grey[200],
              child: Icon(Icons.beach_access, color: Colors.grey[600]),
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
        itemCount: beaches.length,
        itemBuilder: (context, index) {
          final beach = beaches[index];
          return Hero(
            tag: '${beach['name']}_$index',
            child: Material(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BeachDetailPage(beach: beach),
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
                          beach['image']!,
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
                                beach['name']!,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                beach['description']!,
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

class BeachDetailPage extends StatelessWidget {
  final Map<String, String> beach;

  const BeachDetailPage({Key? key, required this.beach}) : super(key: key);

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
                tag: beach['name'] ?? 'Beach',
                child: Image.asset(
                  beach['image'] ?? 'lib/assets/placeholder.jpg',
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
                      beach['name'] ?? '',
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
                      beach['description'] ?? '',
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
