import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          body: Column(
            children: [
              Container(
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color.fromRGBO(62, 36, 17, 1),
                      const Color.fromRGBO(48, 14, 32, 1),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(width: 30, "assets/images/logo.png"),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Music",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 29,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.podcasts,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              CircleAvatar(
                                radius: 13,
                                backgroundImage: AssetImage(
                                    "assets/images/ben.jpeg"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CategoryItem("Energize"),
                          CategoryItem("Workout"),
                          CategoryItem("Feel Good"),
                          CategoryItem("Relaxtion"),
                          CategoryItem("Chill out"),
                          CategoryItem("Rock"),
                          CategoryItem("Pop"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: Color.fromRGBO(7, 5, 8, 1),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "START RADIO FROM A SONG",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 170, 170, 170),
                              fontSize: 12,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Quick Picks",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                  top: 3.0,
                                  bottom: 3,
                                  right: 9,
                                  left: 9,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Text(
                                  "Play all",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 187, 187, 187),
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          MusicRow("assets/images/Kandıramazsın Beni.jpeg",
                                    "Kandıramazsın Beni", 
                                    "Yıldız Tilbe"),
                                MusicRow("assets/images/atilla.jpeg",
                                    "Seni Sevmek", 
                                    "Atilla Kaya"),
                                MusicRow("assets/images/müslüm.jpeg",
                                    "Bir Ömür Yetmez", 
                                    "Müslüm Gürses"),
                                MusicRow("assets/images/ummadığım anda.jpeg",
                                    "Ummadığım anda", 
                                    "Yıldız Tilbe"),
                                MusicRow("assets/images/müslüm.jpeg",
                                    "Usta",
                                    "Müslüm Gürses"),
                                MusicRow("assets/images/ahmet.jpeg",      
                                    "AYBÜKE", 
                                    "Ahmet Kaya"),
                                MusicRow(
                                    "assets/images/müslüm.jpeg", 
                                    "Konussana birtanem", 
                                    "Müslüm Gürses"),
                                MusicRow("assets/images/ummadığım anda.jpeg",
                                    "Vazgeçtim", 
                                    "Yildiz Tilbe"),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Forgotten favorites",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                  top: 3.0,
                                  bottom: 3,
                                  right: 9,
                                  left: 9,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Text(
                                  "Play all",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 187, 187, 187),
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                MusicRow2("assets/images/Kandıramazsın Beni.jpeg",
                                    "Kandıramazsın Beni", 
                                    "Yıldız Tilbe"),
                                MusicRow2("assets/images/atilla.jpeg",
                                    "Seni Sevmek", 
                                    "Atilla Kaya"),
                                MusicRow2("assets/images/müslüm.jpeg",
                                    "Bir Ömür Yetmez", 
                                    "Müslüm Gürses"),
                                MusicRow2("assets/images/ummadığım anda.jpeg",
                                    "Ummadığım anda", 
                                    "Yıldız Tilbe"),
                                MusicRow2("assets/images/müslüm.jpeg",
                                    "Usta",
                                    "Müslüm Gürses"),
                                MusicRow2("assets/images/ahmet.jpeg",      
                                    "AYBÜKE", 
                                    "Ahmet Kaya"),
                                MusicRow2(
                                    "assets/images/müslüm.jpeg", 
                                    "Konussana birtanem", 
                                    "Müslüm Gürses"),
                                MusicRow2("assets/images/ummadığım anda.jpeg",
                                    "Vazgeçtim", 
                                    "Yildiz Tilbe"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                color: Color.fromRGBO(33, 33, 33, 1),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.home,
                            color: Colors.white,
                          ),
                          Text("Home",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              )),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.play_circle,
                            color: Colors.white,
                          ),
                          Text("Samples",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              )),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.explore,
                            color: Colors.white,
                          ),
                          Text("Explore",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              )),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.subscriptions,
                            color: Colors.white,
                          ),
                          Text("Library",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              )),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.slideshow,
                            color: Colors.white,
                          ),
                          Text("Uprgrade",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  Padding MusicRow2(String photo, String title, String artist) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Column(
            children: [
              Image.asset(
                photo,
                width: 150,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                artist,
                style: TextStyle(
                  color: const Color.fromARGB(255, 158, 158, 158),
                  fontSize: 14,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget MusicRow(String photo, String title, String artist) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                photo,
                width: 120,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    artist,
                    style: TextStyle(
                      color: const Color.fromARGB(255, 158, 158, 158),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Container CategoryItem(String text) {
    return Container(
      padding:
          const EdgeInsets.only(top: 6.0, bottom: 6.0, left: 12, right: 12),
      margin: const EdgeInsets.only(left: 3, right: 3),
      decoration: BoxDecoration(
        color: Color.fromARGB(47, 255, 255, 255),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color.fromARGB(54, 255, 255, 255),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
