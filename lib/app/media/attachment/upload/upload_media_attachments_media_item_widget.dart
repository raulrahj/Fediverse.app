import 'dart:async';

import 'package:fedi/app/media/attachment/upload/upload_media_attachment_bloc.dart';
import 'package:fedi/app/media/attachment/upload/upload_media_attachment_failed_notificationOverlay.dart';
import 'package:fedi/app/media/attachment/upload/upload_media_attachment_model.dart';
import 'package:fedi/app/media/attachment/upload/upload_media_attachment_remove_dialog.dart';
import 'package:fedi/app/ui/fedi_colors.dart';
import 'package:fedi/app/ui/fedi_icons.dart';
import 'package:fedi/app/ui/progress/fedi_circular_progress_indicator.dart';
import 'package:fedi/file/picker/file_picker_model.dart';
import 'package:fedi/media/media_video_player_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UploadMediaAttachmentMediaItemWidget extends StatefulWidget {
  final EdgeInsets contentPadding;

  UploadMediaAttachmentMediaItemWidget(
      {this.contentPadding = const EdgeInsets.all(16.0)});

  @override
  _UploadMediaAttachmentMediaItemWidgetState createState() =>
      _UploadMediaAttachmentMediaItemWidgetState();
}

class _UploadMediaAttachmentMediaItemWidgetState
    extends State<UploadMediaAttachmentMediaItemWidget> {
  StreamSubscription streamSubscription;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    var uploadMediaAttachmentBloc =
        IUploadMediaAttachmentBloc.of(context, listen: false);

    streamSubscription =
        uploadMediaAttachmentBloc.uploadStateStream.listen((state) {
      if (state == UploadMediaAttachmentState.failed) {
        showMediaAttachmentFailedNotificationOverlay(context);
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    streamSubscription?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    var uploadMediaAttachmentBloc =
        IUploadMediaAttachmentBloc.of(context, listen: false);
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(16.0),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            left: 0.0,
            right: 0.0,
            top: 0.0,
            bottom: 0.0,
            child: StreamBuilder<UploadMediaAttachmentState>(
                stream: uploadMediaAttachmentBloc.uploadStateStream,
                initialData: uploadMediaAttachmentBloc.uploadState,
                builder: (context, snapshot) {
                  var uploadState = snapshot.data;
                  var mediaPreview = buildMediaPreview(
                      uploadMediaAttachmentBloc.filePickerFile);

                  if (uploadState == UploadMediaAttachmentState.uploaded) {
                    return mediaPreview;
                  } else {
                    return Opacity(
                      opacity: 0.7,
                      child: mediaPreview,
                    );
                  }
                }),
          ),
          Align(
            alignment: Alignment.topRight,
            child: buildTopRightAction(uploadMediaAttachmentBloc),
          )
        ],
      ),
    );
  }

  Padding buildTopRightAction(
      IUploadMediaAttachmentBloc uploadMediaAttachmentBloc) {
    return Padding(
      padding: widget.contentPadding,
      child: StreamBuilder<UploadMediaAttachmentState>(
          stream: uploadMediaAttachmentBloc.uploadStateStream,
          initialData: uploadMediaAttachmentBloc.uploadState,
          builder: (context, snapshot) {
            var uploadState = snapshot.data;

            switch (uploadState) {
              case UploadMediaAttachmentState.notUploaded:
              case UploadMediaAttachmentState.uploading:
                return buildLoading();
                break;
              case UploadMediaAttachmentState.uploaded:
                return buildRemoveButton(context, uploadMediaAttachmentBloc);
              case UploadMediaAttachmentState.failed:
                return buildErrorButton(context, uploadMediaAttachmentBloc);
                break;
            }

            throw "invalid state $uploadState";
          }),
    );
  }

  Widget buildLoading() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24.0),
      child: Container(
        width: 24,
        height: 24,
        color: FediColors.darkGrey.withOpacity(0.8),
        child: FediCircularProgressIndicator(
          size: 20,
          color: FediColors.white,
        ),
      ),
    );
  }

  GestureDetector buildErrorButton(BuildContext context,
      IUploadMediaAttachmentBloc uploadMediaAttachmentBloc) {
    return GestureDetector(
      onTap: () {
        uploadMediaAttachmentBloc.startUpload();
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24.0),
        child: Container(
          width: 24,
          height: 24,
          color: FediColors.error.withOpacity(0.8),
          child: Icon(
            FediIcons.failed,
            size: 14,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  GestureDetector buildRemoveButton(BuildContext context,
      IUploadMediaAttachmentBloc uploadMediaAttachmentBloc) {
    return GestureDetector(
      onTap: () {
        showConfirmRemoveAssetDialog(context, uploadMediaAttachmentBloc);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24.0),
        child: Container(
          width: 24,
          height: 24,
          color: FediColors.darkGrey.withOpacity(0.8),
          child: Icon(
            FediIcons.remove,
            size: 14,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget buildMediaPreview(FilePickerFile asset) {
    var type = asset.type;
    var file = asset.file;
    Widget preview;
    switch (type) {
      case FilePickerFileType.image:
        preview = Image.file(
          file,
          fit: BoxFit.cover,
        );
        break;
      case FilePickerFileType.video:
        preview = MediaVideoPlayerWidget.localFile(
          localFile: file,
        );
        break;
      case FilePickerFileType.other:
      default:
        throw "Non-media not supported";
        break;
    }
    return preview;
  }
}