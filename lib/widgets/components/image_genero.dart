import 'package:flutter/material.dart';

class ImageGenero extends StatelessWidget {
  const ImageGenero({
    super.key,
    required this.url,
  });

  final String url;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: FadeInImage(
        width: 150,
        height: 150,
        placeholder: const AssetImage('assets/loading.gif'),
        image: NetworkImage(url),
        fit: BoxFit.cover,
        imageErrorBuilder: ((context, error, stackTrace) {
          return const Center(
            child: Icon(
              Icons.error,
              size: 50,
              color: Colors.red,
            ),
          );
        }),
      ),
    );
  }
}
