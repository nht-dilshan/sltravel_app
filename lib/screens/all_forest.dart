import 'package:flutter/material.dart';

class AllForestScreen extends StatelessWidget {
  final forests = [
    {
      'name': 'Sinharaja Forest',
      'description':
          "Sinharaja Forest Reserve is a forest reserve and a biodiversity hotspot in Sri Lanka. It is of international significance and has been designated a Biosphere Reserve and World Heritage Site by UNESCO. According to International Union for Conservation of Nature (IUCN), Sinharaja is the country's last viable area of primary tropical rainforest. Over 60% of the trees are endemic, many of them considered rare. 50% of Sri Lankan's endemics species of animals (especially butterfly, amphibians, birds, snakes and fish species)[clarification needed]. It is home to 95% endemic birds. \n\n The hilly virgin rainforest, part of the Sri Lanka lowland rain forests ecoregion, was saved from the worst of commercial logging by its inaccessibility, and was designated a World Biosphere Reserve in 1978 and a World Heritage Site in 1988. Because of the dense vegetation, wildlife is not as easily seen as at dry-zone national parks such as Yala. The most common larger mammal is the endemic purple-faced langur.",
      'image': 'lib/assets/sinharaja.jpeg'
    },
    {
      'name': 'Udawattakele Forest',
      'description':
          "Udawattakele Forest Reserve often spelled as Udawatta Kele, is a historic forest reserve on a hill-ridge in the city of Kandy. It is 104 hectares (257 acres) large. During the days of the Kandyan kingdom, Udawattakele was known as 'Uda Wasala Watta' in Sinhalese meaning 'the garden above the royal palace'. The sanctuary is famous for its extensive avifauna. The reserve also contains a great variety of plant species, especially lianas, shrubs and small trees. There are several giant lianas. Many of small and medium size mammals that inhabit Sri Lanka can be seen here. Several kinds of snakes and other reptiles might be seen. Udawattakele was designated as a forest reserve in 1856, and it became a sanctuary in 1938. \n\n The Sri Lanka Forest Department has two offices in the reserve, one of which (at the southeastern entrance) has a nature education centre with a display of pictures, posters, stuffed animals, etc. Being easily accessible and containing a variety of flora and fauna the forest has a great educational and recreational value. Groups of school children and students regularly visit the forest and the education centre. The forest is also popular with foreign tourists, especially bird watchers. Scientific nature research has been carried out in the forest by researchers. The forest is of religious importance as there are three Buddhist meditation hermitages and three rock shelter dwellings for Buddhist monk hermits. ",
      'image': 'lib/assets/Udawattakele Forest.jpg'
    },
    {
      'name': 'Riverstone',
      'description':
          "Knuckles Mountain Range could be divided to Riveston (Northern Part of Knuckles Massif) belong to Matale District and Deenston (South Eastern part of Knuckles Massif) of the Kandy District. Both the sections has separate forest department offices which issue tickts to visiters. \n\n The Knukles Mountain Range along with Riverston is truly an amazing place worth visiting any time of the year for trekking, hiking, waling, bird watching, mountain biking. Knuckles Massif located in the central highland which nourishes many rivers in Sri Lanka through water streams from it. On the way to riveston from Matale the first place of visit is beautiful waterfall called as Bambarakiri Ella. Its few meters away from the main road with a Suspension bridge over the waterfall to watch it. Next stop will be VHF transmisson tower of Riverston. Some time of the year the whole area was full of mist. By following a rough road for walking you could arrive the well-known Riverston Peak. The tower is at the top of. \n\n Pitawala Patana of Knuckles Range in riveston part is very high in Bio-diversity, especially the Nanopirus Maximata (a highly endangered frog) can been seen in little water streams only in Riverston, Sri Lanka. That frog is only found here in the world. Other than pitawala pathana different nature trails are there that you can select based on your physical strength & interest.",
      'image': 'lib/assets/Riverstone.jpg'
    },
    {
      'name': 'Kanneliya Rain Forest',
      'description':
          "Kanneliya–Dediyagala–Nakiyadeniya or KDN is a forest complex in southern Sri Lanka. The forest complex designated as a biosphere reserve in 2004 by UNESCO. The KDN complex is the last large remaining rainforest in Sri Lanka other than Sinharaja. This forest area has been identified as one of the floristically richest areas in South Asia. The forest complex is situated 35 km northwest of city of Galle. The rain forest is a major catchment area for two of the most important rivers in southern Sri Lanka, the Gin and Nilwala Rivers. This biosphere reserve harbors many plants and animal species endemic to Sri Lanka. \n\n The biosphere consists series of parallel mountain ranges and valleys. The elevation ranges from 60 m to 425 m above sea level. Mean annual temperature is 27.0 °C while annual temperature variation is 4 °C-5 °C. The forest receives a substantial rainfall of 3,750 mm. Many ancient taxonomic groups of Gondwana are present in these rain forests. They also relates to Indomalayan plants and animals. \n\n The forest complex act as an important catchment area for many rivers and streams flow through the area. The forest is the source for Gin River, which flows west to the forest and for Nilwala river which flows east to the forest. Kanneli, Nanikiththa and Udugama are the smaller streams of Kanneliya while Homa dola and Gal bandi dola are sourced by Nakiyadeniya and Deiyagala.",
      'image': 'lib/assets/kanneliya.jpg'
    },
    {
      'name': 'sooriyakanda',
      'description':
          "MORNINGSID is situated off ‘Suriyakanda’ (between Rakwana and Deniyaya) in the Eastern part of the famous Sinharaja Rainforest. Since access to this area is quite rugged, a 4WD Jeep is a must and the only place to stay is a Forest Department bungalow. ‘Morningside Estate’ was originally named by the colonial planters who came to grow Tea there. Most of the tea plantation has now been replaced by cardamom (one of the most expensive spices in the world) and it is an interesting option for visitors to observe the entire process of cardamom production. The inhabitants of the area say they named this as ‘Morningside’ as it feels like it is morning all day long with the mist rolling across the hills endlessly. \n\n Sinharaja Forest Reserve is a national park and a biodiversity hotspot in Sri Lanka. It is of international significance and has been designated a Biosphere Reserve and World Heritage Site by UNESCO. The majority of its land area is lowlands. However, a small but a significant proportion spreads across higher altitudes. To be more precise, the eastern part of the Sinharaja MAB reserve falls within the sub-mountain region of Sri Lanka. Despite the exceedingly small land coverage, the Eastern Sinharaja is extremely rich in biodiversity and endemism.",
      'image': 'lib/assets/sooriyakanda.jpg'
    },
    {
      'name': 'Wilpaththu',
      'description':
          "Wilpattu National Park (Sinhala: විල්පත්තු ජාතික වනෝද්‍යානය) is a national park in Sri Lanka. The unique feature of this park is the existence of 'Willus' (natural lakes) – natural, sand-rimmed water basins or depressions that fill with rainwater. Located on the northwest coast lowland dry zone of Sri Lanka, the park is 30 km (19 mi) west of Anuradhapura and 26 km (16 mi) north of Puttalam (approximately 180 km (110 mi) north of Colombo). The park is 1,317 km2 (508 sq mi) (131,693 hectares) in area and ranges from 0–152 m (0–499 ft) above sea level. Nearly one hundred and six lakes (Willu) and tanks are found spread throughout Wilpattu. Wilpattu is the largest and one of the oldest national parks in Sri Lanka. Wilpattu is world-renowned for its leopard (Panthera pardus kotiya) population. A remote camera survey conducted in Wilpattu from July to October 2015 by the Wilderness and Wildlife Conservation Trust captured photographs of forty-nine individual leopards in the surveyed area, the core area density of which was between that of Yala National Park's Block I and Horton Plains National Park. \n\n A second, more extensive camera trap survey was conducted from May to September 2018 by Samarasinghe et al. (2022), covering a substantial area of the national park, approximately 660 km2, and capturing a total of 133 individual leopards.[3] This count comprised 116 independent leopards (aged over 2 years) and 17 cubs. Eight adult females were observed with 1–2 cubs during the study. Utilizing Bayesian spatial capture-recapture models, the population density of leopards in Wilpattu National Park was estimated to be 18 leopards per 100 km2. The mean abundance (N) within the effectively sampled area was calculated to be 144 leopards. Notably, the national park maintains a healthy sex ratio of male to female leopards, estimated to be 1:2.03.",
      'image': 'lib/assets/wilpaththu.jpg'
    }
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
              'All Forest',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.grey[200],
              child: Icon(Icons.forest, color: Colors.grey[600]),
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
        itemCount: forests.length,
        itemBuilder: (context, index) {
          final forest = forests[index];
          return Hero(
            tag: '${forest['name']}_$index',
            child: Material(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          ForestDetailPage(forest: forest),
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
                          forest['image']!,
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
                                forest['name']!,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                forest['description']!,
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

class ForestDetailPage extends StatelessWidget {
  final Map<String, String> forest;

  const ForestDetailPage({Key? key, required this.forest}) : super(key: key);

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
                tag: forest['name']!,
                child: Image.asset(
                  forest['image']!,
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
                    forest['name']!,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    forest['description']!,
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
