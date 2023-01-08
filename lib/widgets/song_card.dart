import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../views/album_view.dart';

class SongCard extends StatelessWidget {
  final AssetImage image;
  final String label;
  const SongCard({super.key, required this.image, required this.label});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AlbumView(image: image,label: label),
          ),
        );
      },
      child: Container(
        width: 140,
        child: Column(
          children: [
            Image(
              image: image,
              width: 140,
              height: 140,
            ),
            Text(label, style: Theme.of(context).textTheme.caption,softWrap: true, overflow: TextOverflow.ellipsis,maxLines: 2,)
          ],
        ),
      ),
    );
  }
}
