import 'package:flutter/material.dart';
import 'package:igmur_images_example/app/constants/app_colors.dart';
import 'package:igmur_images_example/app/constants/app_fonts.dart';
import 'package:igmur_images_example/domain/models/entities/data_entity.dart';

class SearchBarWidget extends StatelessWidget {
  final SearchDelegate<DataEntity?> searchDelegate;

  const SearchBarWidget({super.key, required this.searchDelegate});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          showSearch(
            context: context,
            delegate: searchDelegate,
          );
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
          decoration: BoxDecoration(
            color: AppColors.greyBackGround,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Row(
            children: [
              const Icon(
                Icons.search,
                color: AppColors.greySoft,
              ),
              const SizedBox(width: 8.0),
              Text(
                'Search...',
                style: AppFonts.bodyTextRoboto.copyWith(color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
