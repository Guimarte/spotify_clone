// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spotify/widgets/song_card.dart';

import '../widgets/album_card.dart';
import '../widgets/row_album_card.dart';
import 'album_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .6,
            decoration: BoxDecoration(
               color: Color(0xFF9A900B)
               ),
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Colors.black.withOpacity(0),
                    Colors.black.withOpacity(0.9),
                    Colors.black.withOpacity(1),
                    Colors.black.withOpacity(1),
                    Colors.black.withOpacity(1)
                  ])),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Recem Tocadas",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          Row(
                            children: [
                              Icon(Icons.history),
                              SizedBox(width: 16),
                              Icon(Icons.settings)
                            ],
                          )
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.all(20),
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          AlbumCard(
                            
                            label: "Eminem",
                            image: AssetImage("assets/album3.jpg"),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Iron Maiden",
                            image: AssetImage("assets/album4.jpg"),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Beyonce",
                            image: AssetImage("assets/album5.jpg"),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Taylor Swift",
                            image: AssetImage("assets/album6.jpg"),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Pink Floyd",
                            image: AssetImage("assets/album7.jpg"),
                          ),
                          SizedBox(width: 16),
                        ],
                      ),
                    ),
                    SizedBox(height: 32),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Boa tarde",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RowAlbumCard(
                                image: AssetImage("assets/album6.jpg"),
                                label: "Taylor Swift",
                              ),
                              SizedBox(width: 16),
                              RowAlbumCard(
                                  image: AssetImage("assets/album7.jpg"),
                                  label: "Pink Floyd"),
                            ],
                          ),
                          SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RowAlbumCard(
                                  image: AssetImage("assets/album8.jpg"),
                                  label: "Selene Brown"),
                              SizedBox(width: 16),
                              RowAlbumCard(
                                  image: AssetImage("assets/album9.jpg"),
                                  label: "Backstreet Boys"),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RowAlbumCard(
                                  image: AssetImage("assets/album10.jpg"),
                                  label: "Britney Spears"),
                              SizedBox(
                                width: 16,
                              ),
                              RowAlbumCard(
                                  image: AssetImage("assets/album11.jpg"),
                                  label: "David Guetta"),
                            ],
                          )
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            "Baseado nos escutados recentes",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(children: [
                            SongCard(
                                image: AssetImage("assets/album12.jpg"),
                                label: "Rebeldes"),
                            SizedBox(width: 16),
                            SongCard(
                                image: AssetImage("assets/album10.jpg"),
                                label: "Britney Spears"),
                            SizedBox(width: 16),
                            SongCard(
                                image: AssetImage("assets/album8.jpg"),
                                label: "Selene Brown"),
                            SizedBox(width: 16),
                            SongCard(
                                image: AssetImage("assets/album13.jpg"),
                                label: "Dragon Ball Z"),
                            SizedBox(width: 16),
                            SongCard(
                                image: AssetImage("assets/album4.jpg"),
                                label: "Iron Maiden"),
                            SizedBox(width: 16),
                            SongCard(
                                image: AssetImage("assets/album2.jpg"),
                                label: "Pearl Jam"),
                          ]),
                        )
                      ],
                    ),
                    SizedBox(height: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            "Recomendados",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(children: [
                            SongCard(
                                image: AssetImage("assets/album11.jpg"),
                                label: "David Guetta"),
                            SizedBox(width: 16),
                            SongCard(
                                image: AssetImage("assets/album9.jpg"),
                                label: "Backstreet Boys"),
                            SizedBox(width: 16),
                            SongCard(
                                image: AssetImage("assets/album7.jpg"),
                                label: "Pink Floyd"),
                            SizedBox(width: 16),
                            SongCard(
                                image: AssetImage("assets/album5.jpg"),
                                label: "Beyonce"),
                            SizedBox(width: 16),
                            SongCard(
                                image: AssetImage("assets/album3.jpg"),
                                label: "Eminem"),
                            SizedBox(width: 16),
                            SongCard(
                                image: AssetImage("assets/album1.jpg"),
                                label: "Mamonas Assassinas"),
                          ]),
                        )
                      ],
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
