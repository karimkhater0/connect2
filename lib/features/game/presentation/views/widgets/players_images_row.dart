import 'package:connect2/features/game/presentation/views/widgets/random_player_image.dart';
import 'package:flutter/material.dart';

class PlayersImagesRow extends StatelessWidget {
  const PlayersImagesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RandomPlayerImage(index: 1,),
        RandomPlayerImage(index: 2,),
      ],
    );
  }
}
