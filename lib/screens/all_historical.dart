import 'package:flutter/material.dart';

class AllHistoricalScreen extends StatelessWidget {
 final historicalSites = [
   {'name': 'sigirya', 'description': "Sigiriya or Sinhagiri is an ancient rock fortress located in the northern Matale District near the town of Dambulla in the Central Province, Sri Lanka.\n\n It is a site of historical and archaeological significance that is dominated by a massive column of granite approximately 180 m high.", 'image': 'lib/assets/sigiriya.jpg'},
   {'name': 'sri dalada maligawa', 'description': 'Sri Dalada Maligawa, commonly known in English as the Temple of the Sacred Tooth Relic, is a Buddhist temple in Kandy, Sri Lanka.\n\n  It is located in the Royal Palace Complex of the former Kingdom of Kandy, which houses the relic of the tooth of the Buddha.\n\n  Since ancient times, the relic has played an important role in local politics because it is believed that whoever holds the relic holds the governance of the country. The relic was historically held by Sinhalese kings. The temple of the tooth is a World.', 'image': 'lib/assets/sri dalada maligawa.jpg'},
   {'name': 'Galle dutch fort', 'description': "The fort has a colourful history, and today has a multi-ethnic and multi-religious population.\n\n The Sri Lankan government and many Dutch people who still own some of the properties inside the fort are looking at making this one of the modern wonders of the world.\n \n  The heritage value of the fort has been recognized by the UNESCO and the site has been inscribed as a cultural heritage UNESCO World Heritage Site under criteria iv, for its unique exposition of 'an urban ensemble which illustrates the interaction of European architecture and South Asian traditions from the 16th to the 19th centuries'.", 'image': 'lib/assets/galle dutch fort.jpg'},
   {'name': 'Dambulla temple', 'description': "Dambulla is the largest and best-preserved cave temple complex in Sri Lanka. \n\n The rock towers 160 m over the surrounding plains. There are more than 80 documented caves in the surrounding area. Major attractions are spread over five caves, which contain statues and paintings. \n\n These paintings and statues are related to Gautama Buddha and his life. There are a total of 153 Buddha statues, three statues of Sri Lankan kings and four statues of gods and goddesses. The latter include Vishnu and the Ganesha.\n\n The murals cover an area of 2,100 square metres (23,000 sq ft). Depictions on the walls of the caves include the temptation by the demon Mara, and Buddha's first sermon.", 'image': 'lib/assets/dambulla temple.jpg'},
   {'name': 'Ruwanweli seya', 'description': "The Ruwanweli Maha Seya, also known as the Maha Thupa (lit. 'the Great Thupa'), is a stupa (a hemispherical structure containing relics) in Anuradhapura, Sri Lanka.\n\n Two quarts or one Dona of the Buddha's relics are enshrined in the stupa, making it the largest collection of his relics anywhere. It was built by Sinhalese King Dutugemunu in c. 140 B.C., who became king of Sri Lanka after a war in which the Chola King Elāra (Ellalan) was defeated. It is also known as Swarnamali Seya, Svaṇṇamāli Mahaceti (in Pali) and Rathnamali Seya.", 'image': 'lib/assets/ruwanweli seya.jpg'},
   {'name': 'Polonnaruwa', 'description': "Poḷonnaruwa, (Sinhala: පොළොන්නරුව, romanized: Poḷonnaruva; Tamil: பொலன்னறுவை, romanized: Polaṉṉaṟuvai) also referred as Pulathisipura and Vijayarajapura in ancient times, is the main town of Polonnaruwa District in North Central Province, Sri Lanka.\n\nThe modern town of Polonnaruwa is also known as New Town, and the other part of Polonnaruwa remains as the royal ancient city of the Kingdom of Polonnaruwa.\n\nThe second oldest of all Sri Lanka's kingdoms, Polonnaruwa was first established as a military post by the Sinhalese kingdom. It was renamed Jananathamangalam by the Chola dynasty after their successful invasion of the country's then capital, Anuradhapura, in the 10th century. The Ancient City of Polonnaruwa has been declared a World Heritage Site.", 'image': 'lib/assets/polonnaruwa.jpg'},
   {'name': 'Anuradhapura', 'description': "Anuradhapura (Sinhala: අනුරාධපුරය, romanized: Anurādhapuraya; Tamil: அனுராதபுரம், romanized: Aṉurātapuram) is a major city located in the north central plain of Sri Lanka. \n\n It is the capital city of North Central Province and the capital of Anuradhapura District. The city lies 205 kilometers (127 mi) north of the current capital of Colombo in the North Central Province, on the banks of the historic Malwathu Oya.\n\n The city is now a World Heritage Site famous for its well-preserved ruins of the ancient Sinhalese civilisation.", 'image': 'lib/assets/anuradhapura.jpg'},
 {'name': "Adam's Peak", 'description': " Adam's Peak is a 2,243 m (7,359 ft) tall conical sacred mountain located in central Sri Lanka.\n\n It is well known for the Sri Pada (Śrī Pāda ; Sinhala: ශ්‍රී පාද, 'sacred footprint'), a 1.8 m (5 ft 11 in) rock formation near the summit whose name is also used for the mountain itself.\n\n In Buddhist tradition the print is held to be the footprint of the Buddha, in Sri Lankan Hindu tradition that of Hanuman or Shiva (its Tamil name, சிவனொளிபாதமலை, Sivanolipaathamalai, means 'Mountain of Shiva's Light'), and in some Islamic and Christian traditions that of Adam or St. Thomas.\n\n The mountain is also known as Mount Malaya in Buddhist sources, particularly the Mahayana Lankavatara Sutra, which states that the Buddha preached this sutra on top of the mountain. According to this sutra, the mountain was the abode of Rāvanā, overlord of the Raskshasas and ruler of Laṅkā. Other names in Sanskrit sources include Mount Lanka, Ratnagiri (Mountain of Gems), Malayagiri (Mount Malaya) or Mount Rohana.", 'image': 'lib/assets/sri padaya.jpg'},
 {'name': "Mulgirigala raja maha viharaya", 'description': "Mulkirigala Raja Maha Vihara (also known as Mulgirigala Raja Maha Vihara) (Sinhala: මුල්කිරිගල රජමහා විහාරය) is an ancient Buddhist temple in Mulkirigala, Sri Lanka. \n\n It has been built on a 205 m (673 ft) high natural rock, surrounded with another four rocks known as Benagala, Kondagala, Bisogala and Seelawathiegala.\n\n  The temple site is located about 2 km (1.2 mi) from the Mulkirigala junction and can be reached from either Dikwella or Tangalle towns. The temple has been formally recognised by the Government as an archaeological site in Sri Lanka. The designation was declared on 8 April 1988 under the government Gazette number 501.", 'image': 'lib/assets/mulgirigala rajamaha viharaya.jpg'},
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
             'Historical Sites',
             style: TextStyle(
               color: Colors.black,
               fontWeight: FontWeight.bold,
             ),
           ),
           CircleAvatar(
             backgroundColor: Colors.grey[200],
             child: Icon(Icons.apartment, color: Colors.grey[600]),
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
       itemCount: historicalSites.length,
       itemBuilder: (context, index) {
         final site = historicalSites[index];
         return Hero(
           tag: '${site['name']}_$index',
           child: Material(
             child: InkWell(
               onTap: () {
                 Navigator.push(
                   context,
                   PageRouteBuilder(
                     pageBuilder: (context, animation, secondaryAnimation) =>
                         SiteDetailPage(site: site),
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

class SiteDetailPage extends StatelessWidget {
 final Map<String, String> site;

 const SiteDetailPage({Key? key, required this.site}) : super(key: key);

 @override
 Widget build(BuildContext context) {
   return Scaffold(
     body: CustomScrollView(
       slivers: [
         SliverAppBar(
           expandedHeight: 300,
           pinned: true,
           flexibleSpace: FlexibleSpaceBar(
            //  title: Text(site['name']!),
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