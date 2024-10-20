import 'package:flutter/material.dart';
import 'package:igmur_images_example/app/constants/app_colors.dart';
import 'package:igmur_images_example/app/constants/app_fonts.dart';

class SearchBarWidget extends StatelessWidget {
  final Function(String) onSearch;
  const SearchBarWidget({super.key, required this.onSearch});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        style: AppFonts.bodyTextRoboto,
        decoration: InputDecoration(
          hintText: 'Search...',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          prefixIcon: const Icon(
            Icons.search,
            color: AppColors.greySoft,
          ),
        ),
        onChanged: (text) => onSearch(text),
      ),
    );
  }
}
