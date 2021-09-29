import 'package:easy_dispose_provider/easy_dispose_provider.dart';
import 'package:fedi/app/access/current/current_access_bloc.dart';
import 'package:fedi/app/chat/pleroma/pleroma_chat_bloc.dart';
import 'package:fedi/app/chat/pleroma/post/pleroma_chat_post_message_bloc.dart';
import 'package:fedi/app/chat/pleroma/post/pleroma_chat_post_message_bloc_proxy_provider.dart';
import 'package:fedi/app/media/attachment/upload/upload_media_attachment_model.dart';
import 'package:fedi/app/message/post_message_bloc_impl.dart';
import 'package:fedi/app/status/post/settings/post_status_settings_bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:logging/logging.dart';
import 'package:provider/provider.dart';
import 'package:unifedi_api/unifedi_api.dart';

var _logger = Logger('chat_post_message_bloc_impl.dart');

class PleromaChatPostMessageBloc extends PostMessageBloc
    implements IPleromaChatPostMessageBloc {
  final IPleromaChatBloc pleromaChatBloc;

  PleromaChatPostMessageBloc({
    required this.pleromaChatBloc,
    required int? maximumMessageLength,
    required IUnifediApiMediaAttachmentService unifediApiMediaAttachmentService,
    required int? maximumFileSizeInBytes,
    required bool dontUploadMediaDuringEditing,
  }) : super(
          maximumMessageLength: maximumMessageLength,
          maximumMediaAttachmentCount: 1,
          unifediApiMediaAttachmentService: unifediApiMediaAttachmentService,
          maximumFileSizeInBytes: maximumFileSizeInBytes,
          unfocusOnClear: false,
          dontUploadMediaDuringEditing: dontUploadMediaDuringEditing,
        );

  @override
  Future post() async {
    var success = await tryUploadAllAttachments();

    if (!success) {
      return;
    }

    // todo: refactor
    // ignore: unawaited_futures
    pleromaChatBloc.postMessage(
      idempotencyKey: idempotencyKey,
      unifediApiPostChatMessage: calculateSendData(),
      unifediApiPostChatMessageMediaAttachment: calculateMediaAttachment(),
      oldPendingFailedPleromaChatMessage: null,
    );

    clear();
  }

  UnifediApiPostChatMessage calculateSendData() {
    var mediaId = calculateMediaAttachmentId();

    var data = UnifediApiPostChatMessage(
      content: inputText,
      mediaId: mediaId,
    );
    _logger.finest(() => 'calculateSendData data=$data');

    return data;
  }

  String? calculateMediaAttachmentId() {
    return calculateMediaAttachment()?.id;
  }

  IUnifediApiMediaAttachment? calculateMediaAttachment() {
    var mediaAttachmentBlocs =
        uploadMediaAttachmentsBloc.uploadMediaAttachmentBlocs.where(
      (bloc) =>
          bloc.uploadState.type == UploadMediaAttachmentStateType.uploaded,
    );
    IUnifediApiMediaAttachment? mediaAttachment;
    if (mediaAttachmentBlocs.isNotEmpty) {
      mediaAttachment = mediaAttachmentBlocs.first.unifediApiMediaAttachment;
    }

    return mediaAttachment;
  }

  static PleromaChatPostMessageBloc createFromContext(
    BuildContext context, {
    required String? chatRemoteId,
  }) {
    var info = ICurrentUnifediApiAccessBloc.of(context, listen: false)
        .currentInstance!
        .info!;

    return PleromaChatPostMessageBloc(
      pleromaChatBloc: IPleromaChatBloc.of(
        context,
        listen: false,
      ),
      unifediApiMediaAttachmentService:
          Provider.of<IUnifediApiMediaAttachmentService>(
        context,
        listen: false,
      ),
      dontUploadMediaDuringEditing: IPostStatusSettingsBloc.of(
        context,
        listen: false,
      ).dontUploadMediaDuringEditing,
      maximumMessageLength: info.limits?.chat?.messageLimit,
      maximumFileSizeInBytes: info.limits?.media?.uploadLimit,
    );
  }

  static Widget provideToContext(
    BuildContext context, {
    required String? chatRemoteId,
    required Widget child,
  }) {
    return DisposableProvider<IPleromaChatPostMessageBloc>(
      create: (context) => PleromaChatPostMessageBloc.createFromContext(
        context,
        chatRemoteId: chatRemoteId,
      ),
      child: PleromaChatPostMessageBlocProxyProvider(child: child),
    );
  }
}
