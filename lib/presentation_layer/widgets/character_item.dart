import 'package:breaking_bad_app/constants/colors.dart';
import 'package:breaking_bad_app/data_layer/models/character.dart';
import 'package:flutter/material.dart';

class CharacterItem extends StatelessWidget {
  final Character character;
  const CharacterItem({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      padding: const EdgeInsetsDirectional.all(4),
      decoration: const BoxDecoration(
        color: Color(AppColors.secondaryColor),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: GridTile(
        footer: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          color: Colors.black54,
          alignment: Alignment.bottomCenter,
          child: Text(
            character.name,
            style: const TextStyle(
              height: 1.3,
              fontSize: 16,
              color: Color(AppColors.secondaryColor),
              fontWeight: FontWeight.bold,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        ),
        child: Container(
          color: const Color(AppColors.accentColor),
          child: character.img.isNotEmpty
              ? FadeInImage.assetNetwork(
                  width: double.infinity,
                  height: double.infinity,
                  placeholder: 'assets/images/loading.gif',
                  image: character.img,
                  fit: BoxFit.cover,
                )
              : Image.asset('assets/images/placeholder.jpg'),
        ),
      ),
    );
  }
}
