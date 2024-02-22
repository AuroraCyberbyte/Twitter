import 'package:cosmos/cosmos.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 6, 22, 34),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                Column(
                  children: [
                    const Text(
                      "Sana özel",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Container(
                      width: 90,
                      height: 3,
                      color: Colors.blue,
                    ),
                  ],
                ),
                Text(
                  "Takip edilenler",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.4), fontSize: 20),
                ),
                const Icon(
                  Icons.settings,
                  color: Colors.white,
                  size: 22,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 1,
                width: double.infinity,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(70),
                        child: const Image(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/photo_2024-01-21_20-18-23.jpg",
                          ),
                          width: 40,
                          height: 40,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CosmosTextBox(
                        "Neler Oluyor?",
                        fontSize: 18,
                        color: Colors.white,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Neler oluyor?",
                          hintStyle: TextStyle(
                            color: Colors.white.withOpacity(0.4),
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    SizedBox(
                      width: 60,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Icon(
                        Icons.image,
                        color: Colors.blue,
                        size: 22,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.gif_box_outlined,
                        color: Colors.blue,
                        size: 22,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.list_alt,
                        color: Colors.blue,
                        size: 22,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.sentiment_satisfied_alt,
                        color: Colors.blue,
                        size: 22,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.pending_actions,
                        color: Colors.blue,
                        size: 22,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.location_on_outlined,
                        color: Colors.blue,
                        size: 22,
                      ),
                    ),
                  ],
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(50),
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 16,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(
                        0.7,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Text(
                      "Gönder",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.white.withOpacity(0.4),
                    height: 1.5,
                  ),
                ),
              ],
            ),
            twit(),
            twit(),
            twit(),
            twit(),
            twit(),
            twit(),
          ],
        ),
      ),
    );
  }

  Column twit() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(70),
                child: const Image(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/photo_2024-01-21_20-18-23.jpg",
                  ),
                  width: 40,
                  height: 40,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          "bengi",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            "@auroracyberbyte 1d",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.4),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "sldkslkdslkdlskdlsdslskdlskklsksldklskdlklskdlskdlsklksldk",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.chat_bubble_outline,
              size: 20,
              color: Colors.white.withOpacity(0.9),
            ),
            Icon(
              Icons.send,
              size: 20,
              color: Colors.white.withOpacity(0.9),
            ),
            Icon(
              Icons.favorite_border,
              size: 20,
              color: Colors.white.withOpacity(0.9),
            ),
            Icon(
              Icons.bookmark_border,
              size: 20,
              color: Colors.white.withOpacity(0.9),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.white.withOpacity(0.4),
            height: 0.8,
          ),
        )
      ],
    );
  }
}
