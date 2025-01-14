import 'package:flutter/material.dart';

class AllPlacesScreen extends StatefulWidget {
  @override
  _AllPlacesScreenState createState() => _AllPlacesScreenState();
}

class _AllPlacesScreenState extends State<AllPlacesScreen> {
  final places = [
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
    {
      'name': 'sigirya',
      'description':
          "Sigiriya or Sinhagiri is an ancient rock fortress located in the northern Matale District near the town of Dambulla in the Central Province, Sri Lanka.\n\n It is a site of historical and archaeological significance that is dominated by a massive column of granite approximately 180 m high.",
      'image': 'lib/assets/sigiriya.jpg'
    },
    {
      'name': 'Temple of the Tooth',
      'description':
          'Temple of the Tooth (Sri Dalada Maligawa), commonly known in English as the Temple of the Sacred Tooth Relic, is a Buddhist temple in Kandy, Sri Lanka.\n\n  It is located in the Royal Palace Complex of the former Kingdom of Kandy, which houses the relic of the tooth of the Buddha.\n\n  Since ancient times, the relic has played an important role in local politics because it is believed that whoever holds the relic holds the governance of the country. The relic was historically held by Sinhalese kings. The temple of the tooth is a World.',
      'image': 'lib/assets/sri dalada maligawa.jpg'
    },
    {
      'name': 'Galle dutch fort',
      'description':
          "The fort has a colourful history, and today has a multi-ethnic and multi-religious population.\n\n The Sri Lankan government and many Dutch people who still own some of the properties inside the fort are looking at making this one of the modern wonders of the world.\n \n  The heritage value of the fort has been recognized by the UNESCO and the site has been inscribed as a cultural heritage UNESCO World Heritage Site under criteria iv, for its unique exposition of 'an urban ensemble which illustrates the interaction of European architecture and South Asian traditions from the 16th to the 19th centuries'.",
      'image': 'lib/assets/galle dutch fort.jpg'
    },
    {
      'name': 'Dambulla temple',
      'description':
          "Dambulla is the largest and best-preserved cave temple complex in Sri Lanka. \n\n The rock towers 160 m over the surrounding plains. There are more than 80 documented caves in the surrounding area. Major attractions are spread over five caves, which contain statues and paintings. \n\n These paintings and statues are related to Gautama Buddha and his life. There are a total of 153 Buddha statues, three statues of Sri Lankan kings and four statues of gods and goddesses. The latter include Vishnu and the Ganesha.\n\n The murals cover an area of 2,100 square metres (23,000 sq ft). Depictions on the walls of the caves include the temptation by the demon Mara, and Buddha's first sermon.",
      'image': 'lib/assets/dambulla temple.jpg'
    },
    {
      'name': 'Ruwanweli seya',
      'description':
          "The Ruwanweli Maha Seya, also known as the Maha Thupa (lit. 'the Great Thupa'), is a stupa (a hemispherical structure containing relics) in Anuradhapura, Sri Lanka.\n\n Two quarts or one Dona of the Buddha's relics are enshrined in the stupa, making it the largest collection of his relics anywhere. It was built by Sinhalese King Dutugemunu in c. 140 B.C., who became king of Sri Lanka after a war in which the Chola King Elāra (Ellalan) was defeated. It is also known as Swarnamali Seya, Svaṇṇamāli Mahaceti (in Pali) and Rathnamali Seya.",
      'image': 'lib/assets/ruwanweli seya.jpg'
    },
    {
      'name': 'Polonnaruwa',
      'description':
          "Poḷonnaruwa, (Sinhala: පොළොන්නරුව, romanized: Poḷonnaruva; Tamil: பொலன்னறுவை, romanized: Polaṉṉaṟuvai) also referred as Pulathisipura and Vijayarajapura in ancient times, is the main town of Polonnaruwa District in North Central Province, Sri Lanka.\n\nThe modern town of Polonnaruwa is also known as New Town, and the other part of Polonnaruwa remains as the royal ancient city of the Kingdom of Polonnaruwa.\n\nThe second oldest of all Sri Lanka's kingdoms, Polonnaruwa was first established as a military post by the Sinhalese kingdom. It was renamed Jananathamangalam by the Chola dynasty after their successful invasion of the country's then capital, Anuradhapura, in the 10th century. The Ancient City of Polonnaruwa has been declared a World Heritage Site.",
      'image': 'lib/assets/polonnaruwa.jpg'
    },
    {
      'name': 'Anuradhapura',
      'description':
          "Anuradhapura (Sinhala: අනුරාධපුරය, romanized: Anurādhapuraya; Tamil: அனுராதபுரம், romanized: Aṉurātapuram) is a major city located in the north central plain of Sri Lanka. \n\n It is the capital city of North Central Province and the capital of Anuradhapura District. The city lies 205 kilometers (127 mi) north of the current capital of Colombo in the North Central Province, on the banks of the historic Malwathu Oya.\n\n The city is now a World Heritage Site famous for its well-preserved ruins of the ancient Sinhalese civilisation.",
      'image': 'lib/assets/anuradhapura.jpg'
    },
    {
      'name': "Adam's Peak",
      'description':
          " Adam's Peak is a 2,243 m (7,359 ft) tall conical sacred mountain located in central Sri Lanka.\n\n It is well known for the Sri Pada (Śrī Pāda ; Sinhala: ශ්‍රී පාද, 'sacred footprint'), a 1.8 m (5 ft 11 in) rock formation near the summit whose name is also used for the mountain itself.\n\n In Buddhist tradition the print is held to be the footprint of the Buddha, in Sri Lankan Hindu tradition that of Hanuman or Shiva (its Tamil name, சிவனொளிபாதமலை, Sivanolipaathamalai, means 'Mountain of Shiva's Light'), and in some Islamic and Christian traditions that of Adam or St. Thomas.\n\n The mountain is also known as Mount Malaya in Buddhist sources, particularly the Mahayana Lankavatara Sutra, which states that the Buddha preached this sutra on top of the mountain. According to this sutra, the mountain was the abode of Rāvanā, overlord of the Raskshasas and ruler of Laṅkā. Other names in Sanskrit sources include Mount Lanka, Ratnagiri (Mountain of Gems), Malayagiri (Mount Malaya) or Mount Rohana.",
      'image': 'lib/assets/sri padaya.jpg'
    },
    {
      'name': "Mulgirigala raja maha viharaya",
      'description':
          "Mulkirigala Raja Maha Vihara (also known as Mulgirigala Raja Maha Vihara) (Sinhala: මුල්කිරිගල රජමහා විහාරය) is an ancient Buddhist temple in Mulkirigala, Sri Lanka. \n\n It has been built on a 205 m (673 ft) high natural rock, surrounded with another four rocks known as Benagala, Kondagala, Bisogala and Seelawathiegala.\n\n  The temple site is located about 2 km (1.2 mi) from the Mulkirigala junction and can be reached from either Dikwella or Tangalle towns. The temple has been formally recognised by the Government as an archaeological site in Sri Lanka. The designation was declared on 8 April 1988 under the government Gazette number 501.",
      'image': 'lib/assets/mulgirigala rajamaha viharaya.jpg'
    },
    {
      'name': "Matara Church",
      'description':
          "Shrine of Our Lady of Matara is a Roman Catholic church devoted to the Virgin Mary, in the town of Matara, Sri Lanka. The shrine houses a statue of the Virgin Mary holding the infant Jesus. Though the statue's origins are unknown, church officials claim that it is 400 years old. The statue has been damaged, lost and recovered more than once, most recently during the 2004 tsunami in Asia, which damaged the shrine and killed 24 people attending Sunday Mass. The church celebrated its centenary year in 2007. \n\n Church legend claims that a large wooden crate was hauled out of the sea by Weligama fishermen. When it was opened, the statue was found inside, untouched by seawater. The fishermen handed it over to the parish priest and the statue was placed in St. Mary's Church in Matara. At a later period[when?], during a cholera epidemic which claimed hundreds of lives, Catholics prayed before the statue to be delivered from the disease. The statue was taken in a solemn procession through the streets of Matara. After a few days, the area was declared safe by the health authorities and there were no further officially reported deaths. Since then the Catholics of Matara have attributed miraculous powers to the intercession of the Blessed Virgin Mary.\n\n In the early 1900s, after over 300 years in the church of Matara, the statue looked faded and worn due to exposure and the thousands of devotees touching and kissing it. Arrangements were made with a sculptor in Ghent, Belgium, to renovate the statue.",
      'image': 'lib/assets/matara_church.jpg'
    },
    {
      'name': 'Religions',
      'description':
          "There are several religions interwoven into Sri Lanka’s rich tapestry, but Buddhism is the belief system that lies at the core of the island’s complex culture.\n\nThis philosophy swept across Asia more than 2,000 years ago and since then has influenced many elements of the Sri Lankan way of life.\n\nWith hundreds of temples dotted throughout the country, tended by monks dressed in eye-catching saffron robes, you cannot help but notice the presence of Buddhism when you visit Sri Lanka. In addition to the unmissable architecture paying homage to Lord Buddha, the peace, hospitality, and selflessness at the heart of Buddhist teaching permeates every corner of the island.",
      'image': 'lib/assets/religion.jpg'
    },
    {
      'name': 'Udarata Dance',
      'description':
          "According to the legend the origin of the dance lies in a dance ritual known as the Kohomba kankariya (named for the deity Kohomba), which is also known as Kohomba yak kankariya or kankariya.\n\nTraditional dance masters believe that originally the king of a place referred to as 'Malaya Rata', and his two brothers performed the first Kohomba kankariya. Some believe that this 'Malaya Rata' was located in India.\n\nAccording to legend, King Malaya came to the island as a result of a trick of the god Śakra in order to cure the king, Panduwasdev, who was suffering from a mysterious illness.\n\nThe king was said to be suffering from a recurring dream in which a leopard was directing its tongue towards the king, believed to be as black magic of Kuveni, the first wife of King Vijaya. After the performance of the Kohomba kankariya the illness vanished, and many natives adopted the dance.",
      'image': 'lib/assets/udarata.jpg'
    },
    {
      'name': 'Pahatharata',
      'description':
          "The kolam natima belongs to a different category of ritualised mask dance than the yakun natima. Today it is rarely practised and has been gradually losing its importance over the last hundred years.\n\n The early twentieth century writer Otaker Pertold commented that, even in his day, much of the original import of the dance had been lost, and that on the few occasions that it was still performed it was undertaken by laymen rather than edura or those specifically versed in ritual dances. Because some forty masked characters are involved in this elaborate drama, with commensurate offerings expected for certain devils and demons, Pertold cites the great expense involved in staging a full kolam natima as responsible for its gradual abbreviation.",
      'image': 'lib/assets/pahatharata.jpg'
    },
    {
      'name': 'Sambaragamuwa',
      'description':
          " Much like the pahatharata natum (low country dances) of the coastal region and the udarata natum (up country or Kandyan dances) of the hill country, the Sabaragamuwa dance tradition is thus named because it originated in the Sabaragamuwa Province. \n\n The Sabaragamuwa dances, however, don’t get as much recognition as the up country or low country dances. According to Yohan Punchinilame, a lecturer of the Department of Sabaragamuwa dance at the University of Visual and Performing Arts in Colombo, there are four territorial divisions in terms of Sabaragamuwa dance; namely that of the Ratnapura, Kalawana, Balangoda, and Badulla divisions. Each area has a slightly different version of the ritualistic dances that make up the Sabaragamuwa tradition of dance, but Ratnapura has been historically celebrated as the heart of Sabaragamuwa dance in Sri Lanka. “While the district of Kegalle now falls under the Sabaragamuwa province, during the olden days of the kings, Kegalle was a part of the Kandyan Kingdom. ",
      'image': 'lib/assets/sambaragamuwa.jpeg'
    },
    {
      'name': 'Theravada Buddhism',
      'description':
          "Theravada Buddhism is the largest and official religion of Sri Lanka, practiced by 70.2% of the population as of 2012. Practitioners of Sri Lankan Buddhism can be found amongst the majority Sinhalese population as well as among the minority ethnic groups. Sri Lankan Buddhists share many similarities with Southeast Asian Buddhists, specifically Myanmarese Buddhists and Thai Buddhists due to traditional and cultural exchange. Sri Lanka is one of only five countries in the world with a Theravada Buddhist majority, and others are Thailand, Cambodia, Laos and Myanmar. Buddhism has been declared as the state religion under Article 9 of the Sri Lankan Constitution which can be traced back to an attempt to bring the status of Buddhism back to the status it enjoyed prior to the British colonial era. Sri Lanka is one of the oldest traditionally Buddhist countries. The island has been a centre of Buddhist scholarship and practices since the introduction of Buddhism in the 3rd century BCE producing eminent scholars such as Buddhaghosa and preserving the vast Pāli Canon. Throughout most of its history, Sri Lankan kings have played a major role in the maintenance and revival of the Buddhist institutions of the island. During the 19th century, a modern Buddhist revival took place on the island which promoted Buddhist education. Due to the island's close ties with India, Sinhalese Buddhism has been in part influenced by Hinduism and indigenous beliefs, and some Buddhists share similar beliefs with Hindus, such as the worship of Hindu deities, the caste system, and Animism. ",
      'image': 'lib/assets/theravada buddhism.jpg'
    },
    {
      'name': 'Rathu Palli',
      'description':
          "Construction of the Jami-Ul-Alfar Mosque commenced in 1908 and the building was completed in 1909. The mosque was commissioned by the local Indian Muslim community, based in Pettah, to fulfill their required five-times-daily prayer and Jummah on Fridays. The mosque's designer and builder was Habibu Lebbe Saibu Lebbe (an unlettered architect), and was based on details/images of Indo-Saracenic structures provided by South Indian traders, who commissioned him. It is a hybrid style of architecture, that draws elements from native Indo-Islamic and Indian architecture, and combines it with the Gothic revival and Neo-classical styles. Originally it had the capacity for 1,500 worshippers although at the time only around 500 were attending prayers. It is a distinctive red and white candy-striped two-storey building, with a clock tower, and is reminiscent of the Jamek Mosque in Kuala Lumpur, Malaysia (constructed in 1910). Before other landmarks were built, some claim that the Jami Ul-Alfar Mosque was recognised as the landmark of Colombo by sailors approaching the port.",
      'image': 'lib/assets/red_masjid.jpg'
    },
    {
      'name': 'Thewatta Church',
      'description':
          "Our Lady of Lanka started its life in 1911 as a small chapel dedicated to Our Lady of Lourdes (Mary Immaculate), France. It was built by a local pastor Fr. A. Kieger and a few Catholic laymen, as a part of the parish of Ragama at that time. In 1917 another pastor, Fr. A. Collorec had a grotto built for Our Lady of Lourdes, with the assistance of Catholic workers from Colombo. The growing popularity of the chapel led to the chapel being expanded into a church in the 1930s. \n\n However, its true rise to fame occurred due to the former Archbishop of Colombo, Jean-Marie Masson. During the outbreak of the Second World War, Archbishop Masson made a vow that if Ceylon were to be protected from major conflict, he would build a Votive Basilica under the title Our Lady of Lanka. Ceylon was indeed spared from any major warfare. The archbishop was delighted and in 1946 he obtained approval from the then Pope, Pius XII, for the construction of a basilica in honour of Our Lady of Lanka.",
      'image': 'lib/assets/thewatta_church.jpg'
    },
    {
      'name': 'Koneswaram Temple',
      'description':
          "Koneswaram Temple of Trincomalee or Thirukonamalai Konesar Temple – The Temple of the Thousand Pillars and Dakshina-Then Kailasam (Southern / Ancient Kailash) is a classical-medieval Hindu temple complex in Trincomalee, a Hindu religious pilgrimage centre in Eastern Province, Sri Lanka. The most sacred of the Pancha Ishwarams of Sri Lanka, it was built significantly during the ancient period on top of Konesar Malai, a promontory overlooking Trincomalee District, Gokarna bay and the Indian Ocean. The monument contains its main shrine to Shiva in the form Kona-Ishvara, shortened to Konesar. \n\n The original kovil combined key features to form its basic Dravidian temple plan, such as its thousand pillared hall – 'Aayiram Kaal Mandapam' – and the Jagati. Regarded as the greatest building of its age for its architecture, elaborate sculptural bas-relief ornamentation adorned a black granite megalith while its multiple gold plated gopuram towers were expanded in the medieval period. One of three major Hindu shrines on the promontory with a colossal gopuram tower, it stood distinctly on the cape's highest eminence.",
      'image': 'lib/assets/koneswaram_temple.jpg'
    },
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
              'Explore Places',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.grey[200],
              child: Icon(Icons.person, color: Colors.grey[600]),
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
        itemCount: places.length,
        itemBuilder: (ctx, index) {
          final place = places[index];
          return Hero(
            tag: '${place['name']}_$index',
            child: Material(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          PlaceDetailPage(place: place),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        var begin = Offset(1.0, 0.0);
                        var end = Offset.zero;
                        var curve = Curves.easeInOut;
                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));
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
                          place['image']!,
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
                                place['name']!,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                place['description']!,
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

class PlaceDetailPage extends StatelessWidget {
  final Map<String, String> place;

  const PlaceDetailPage({Key? key, required this.place}) : super(key: key);

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
                tag: place['name']!,
                child: Image.asset(
                  place['image']!,
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
                      place['name']!,
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
                      place['description']!,
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
