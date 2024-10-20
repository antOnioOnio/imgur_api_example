import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:igmur_images_example/domain/models/entities/data_entity.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/bloc/home_gallery_screen_bloc.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/widgets/image_tile.dart';

class ImageListTile extends StatefulWidget {
  final List<DataEntity> list;

  const ImageListTile({
    super.key,
    required this.list,
  });

  @override
  State<ImageListTile> createState() => _ImageListTileState();
}

class _ImageListTileState extends State<ImageListTile>
    with AutomaticKeepAliveClientMixin<ImageListTile> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.list.length,
      itemBuilder: (context, index) {
        return ImageTile(
          dataEntity: widget.list[index],
          onFavoritePressed: (dataEntity) {
            context.read<HomeGalleryScreenBloc>().add(
                  HomeGalleryScreenEvent.handleFavoritePressed(
                    dataEntity: widget.list[index],
                  ),
                );
          },
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
