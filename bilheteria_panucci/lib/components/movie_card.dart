import 'package:flutter/material.dart';
import 'package:bilheteria_panucci/screens/movie_screen.dart';

import '../models/movie.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({Key? key, required this.movie}) : super(key: key);
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start ,
      children: [
        Card(
            clipBehavior: Clip.hardEdge,
            child: ConstrainedBox(
              constraints: const BoxConstraints(minHeight: 200,maxHeight: 240),
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MovieScreen(movie: movie),
                      ),
                    );
                  },
                  child: movie.imageURI != null
                      ? Ink(
                          width: double.infinity,
                          height:240,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(movie.imageURI!),
                                fit: BoxFit.cover),
                          ),
                        )
                      : Ink(
                          width: double.infinity,
                          height:240,
                          child: const Center(
                            child: Icon(Icons.error),
                          ),
                        )),
            )),
        Text(
          movie.name,
          style: Theme.of(context).textTheme.displaySmall,
        )
      ],
    );
  }
}
