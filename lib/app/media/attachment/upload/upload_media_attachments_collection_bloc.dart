import 'package:fedi/app/media/attachment/upload/upload_media_attachment_bloc.dart';
import 'package:fedi/disposable/disposable.dart';
import 'package:fedi/file/picker/file_picker_model.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

abstract class IUploadMediaAttachmentsCollectionBloc extends Disposable {
  static IUploadMediaAttachmentsCollectionBloc of(BuildContext context,
          {bool listen = true}) =>
      Provider.of<IUploadMediaAttachmentsCollectionBloc>(context,
          listen: listen);

  List<IUploadMediaAttachmentBloc> get onlyMediaAttachmentBlocs;

  Stream<List<IUploadMediaAttachmentBloc>> get onlyMediaAttachmentBlocsStream;

  List<IUploadMediaAttachmentBloc> get onlyNonMediaAttachmentBlocs;

  Stream<List<IUploadMediaAttachmentBloc>>
      get onlyNonMediaAttachmentBlocsStream;

  bool get isMaximumMediaAttachmentCountReached;

  Stream<bool> get isMaximumMediaAttachmentCountReachedStream;

  int get maximumMediaAttachmentCount;

  bool get isPossibleToAttachMedia;

  Stream<bool> get isPossibleToAttachMediaStream;

  List<IUploadMediaAttachmentBloc> get mediaAttachmentBlocs;

  Stream<List<IUploadMediaAttachmentBloc>> get mediaAttachmentBlocsStream;

  void attachMedia(FilePickerFile filePickerFile);

  void detachMedia(FilePickerFile filePickerFile);

  void clear();
}