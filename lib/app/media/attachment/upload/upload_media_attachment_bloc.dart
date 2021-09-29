import 'package:easy_dispose/easy_dispose.dart';
import 'package:fedi/app/media/attachment/upload/metadata/upload_media_attachment_metadata_model.dart';
import 'package:fedi/app/media/attachment/upload/upload_media_attachment_model.dart';
import 'package:flutter/widgets.dart';
import 'package:unifedi_api/unifedi_api.dart';
import 'package:provider/provider.dart';

abstract class IUploadMediaAttachmentBloc implements IDisposable {
  static IUploadMediaAttachmentBloc of(
    BuildContext context, {
    bool listen = true,
  }) =>
      Provider.of<IUploadMediaAttachmentBloc>(context, listen: listen);

  int? get maximumFileSizeInBytes;

  IUnifediApiMediaAttachment? get unifediApiMediaAttachment;

  UploadMediaAttachmentState get uploadState;

  Stream<UploadMediaAttachmentState> get uploadStateStream;

  UploadMediaAttachmentMetadata? get metadata;

  Stream<UploadMediaAttachmentMetadata?> get metadataStream;

  void changeMetadata(UploadMediaAttachmentMetadata? metadata);

  bool get isMedia;

  Future<String?> calculateFilePath();

  Future startUploadIfPossible();

  bool get isUploaded;
}
