import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spotify/views/home.dart';
import 'package:spotify/views/library.dart';
import 'package:spotify/views/profile.dart';
import 'package:spotify/views/search.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  int tabSelecionada = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: tabSelecionada,
        onTap: (index) {
          setState(() {
            tabSelecionada = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_music), label: "Library"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white38,
      ),
      body: Stack(children: [
        renderizaTela(0, HomeView()),
        renderizaTela(1, SearchView()),
        renderizaTela(2, LibraryView()),
        renderizaTela(3, ProfileView()),
      ]),
    );
  }

  Widget renderizaTela(int tabIndex, Widget tela) {
    return IgnorePointer(
      ignoring: tabSelecionada != tabIndex,
      child: Opacity(
        opacity: tabSelecionada == tabIndex ? 1 : 0,
        child: tela,
      ),
    );
  }
}
