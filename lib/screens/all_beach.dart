import 'package:flutter/material.dart';

class AllBeachScreen extends StatefulWidget {
  @override
  _AllBeachScreenState createState() => _AllBeachScreenState();
}

class _AllBeachScreenState extends State<AllBeachScreen> {
  final List<Map<String, String>> beaches = [
    {'name': 'hambanthota', 'description': 'Hambantota beach is a scenic area. Ample parking available as well. However it is highly recommended not to get in to the sea for bathing. ', 'image': 'lib/assets/hambanthota.jpeg'},
    {'name': 'Bentota', 'description': 'This beach has miles of golden sand and calm waters from the Indian Ocean.', 'image': 'lib/assets/benthota.jpg'},
    {'name': 'Mirissa', 'description': 'A popular destination for surfers and budget travelers, Mirissa has a crescent bay with shallow water and an on-duty lifeguard.', 'image': 'lib/assets/mirissa.jpg'},
    {'name': 'Unawatuna', 'description': ' good choice for families, this beach is accessible by a small road lined with shops and restaurants. ', 'image': 'lib/assets/Unawatuna.jpg'},
    {'name': 'godawaya', 'description': 'A clam beach with a small fishing harbor. Quite nice in the morning because the sailors are coming back from the sea.', 'image': 'lib/assets/godawaya.jpg'},
    {'name': 'South Beach', 'description': 'Vibrant beach in Miami, USA', 'image': 'lib/assets/southbeach.jpg'},
    {'name': 'Venice Beach', 'description': 'Unique beach in California, USA', 'image': 'lib/assets/venice.jpg'},
    {'name': 'Malibu Beach', 'description': 'Exclusive beach in California, USA', 'image': 'lib/assets/malibu.jpg'},
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
                tag: beach['name']!,
                child: Image.asset(
                  beach['image']!,
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
                    beach['name']!,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    beach['description']!,
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
