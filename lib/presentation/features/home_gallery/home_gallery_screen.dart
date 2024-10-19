import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:igmur_images_example/app/constants/app_decorations.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/bloc/home_gallery_screen_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: BlocBuilder<HomeGalleryScreenBloc, HomeGalleryScreenState>(
        builder: (context, state) {
          return Scaffold(
            body: Stack(
              children: [
                Container(
                  decoration: AppDecorations.boxDecoration,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<HomeGalleryScreenBloc>().add(
                            const HomeGalleryScreenEvent.fetchImages(),
                          );
                    },
                    child: const Text('Fetch Images'),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
