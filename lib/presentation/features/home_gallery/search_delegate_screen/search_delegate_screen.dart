import 'package:flutter/material.dart';
import 'package:igmur_images_example/app/constants/app_colors.dart';

class CustomSearchDelegate extends SearchDelegate<String> {
  final List<String> data;

  CustomSearchDelegate({required this.data});

  @override
  ThemeData appBarTheme(BuildContext context) {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.greyBackGround,
        foregroundColor: AppColors.greyBackGround,
        surfaceTintColor: AppColors.greyBackGround,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        fillColor: AppColors.greyBackGround,
        border: InputBorder.none,
      ),
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      Container(
        color: AppColors.greyBackGround,
        child: IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            query = '';
          },
        ),
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return Container(
      color: AppColors.greyBackGround,
      child: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          close(context, '');
        },
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final results = data.where((element) => element.contains(query)).toList();

    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(results[index]),
          onTap: () {
            close(context, results[index]);
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions =
        data.where((element) => element.contains(query)).toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(suggestions[index]),
          onTap: () {
            query = suggestions[index];
            showResults(context);
          },
        );
      },
    );
  }
}
