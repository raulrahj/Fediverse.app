import 'dart:async';

import 'package:fedi/app/auth/instance/auth_instance_model.dart';
import 'package:fedi/app/auth/instance/current/current_auth_instance_bloc.dart';
import 'package:fedi/app/auth/instance/list/auth_instance_list_bloc.dart';
import 'package:fedi/app/push/notification/simple/handler/simple_notifications_push_handler_bloc.dart';
import 'package:fedi/app/push/notification/simple/handler/simple_notifications_push_handler_model.dart';
import 'package:fedi/app/push/notification/simple/handler/unhandled/local_preferences/simple_notifications_push_handler_unhandled_local_preference_bloc.dart';
import 'package:fedi/app/push/notification/simple/handler/unhandled/simple_notifications_push_handler_unhandled_model.dart';
import 'package:fedi/disposable/disposable_owner.dart';
import 'package:fedi/pleroma/api/push/pleroma_api_push_model.dart';
import 'package:fedi/push/fcm/fcm_push_service.dart';
import 'package:fedi/push/push_model.dart';
import 'package:logging/logging.dart';

var _logger = Logger('push_handler_bloc_impl.dart');

class SimpleNotificationsPushHandlerBloc extends DisposableOwner implements ISimpleNotificationsPushHandlerBloc {
  final ISimpleNotificationsPushHandlerUnhandledLocalPreferenceBloc unhandledLocalPreferencesBloc;
  final IFcmPushService fcmPushService;
  final IAuthInstanceListBloc instanceListBloc;
  final ICurrentAuthInstanceBloc currentInstanceBloc;

  final List<IPushRealTimeHandler> realTimeHandlers = [];

  SimpleNotificationsPushHandlerBloc({
    required this.unhandledLocalPreferencesBloc,
    required this.currentInstanceBloc,
    required this.instanceListBloc,
    required this.fcmPushService,
  }) {
    addDisposable(
      streamSubscription: fcmPushService.messageStream.listen(
        (pushMessage) async {
          await handlePushMessage(pushMessage);
        },
      ),
    );

  }

  @override
  Future handleInitialMessage() async {
    var initialMessage = fcmPushService.initialMessage;
    if (initialMessage != null) {
      await handlePushMessage(initialMessage);
      fcmPushService.clearInitialMessage();
    }
  }

  Future handlePushMessage(PushMessage pushMessage) async {
    var body = PleromaApiPushMessageBody.fromJson(pushMessage.data!);

    var pushMessageHandler = SimpleNotificationsPushHandlerMessage(
      pushMessage: pushMessage,
      body: body,
    );
    var handled = false;
    for (var handler in realTimeHandlers) {
      handled = await handler(pushMessageHandler);
      if (handled) {
        break;
      }
    }

    _logger.finest(() => 'handlePushMessage \n'
        '\t body =$body'
        '\t handled =$handled');

    if (!handled) {
      var instanceForMessage = instanceListBloc.findInstanceByCredentials(
        host: body.server,
        acct: body.account,
      );

      if (instanceForMessage != null) {
        _logger.finest(() => 'body = $body by \n'
            '\t instanceForMessage=$instanceForMessage');

        if (!currentInstanceBloc.isCurrentInstance(instanceForMessage)) {
          await unhandledLocalPreferencesBloc
              .addUnhandledMessage(pushMessageHandler);

          if (pushMessage.isLaunch) {
            // launch after click on notification
            if (currentInstanceBloc.currentInstance != instanceForMessage) {
              await currentInstanceBloc
                  .changeCurrentInstance(instanceForMessage);
            }
          }
        }
      } else {
        _logger.severe(() => 'Cant handle body = '
            '$body, because instance for message not found');
      }
    }
  }

  @override
  void addRealTimeHandler(IPushRealTimeHandler simpleNotificationsPushHandler) {
    realTimeHandlers.add(simpleNotificationsPushHandler);
  }

  @override
  void removeRealTimeHandler(IPushRealTimeHandler simpleNotificationsPushHandler) {
    realTimeHandlers.remove(simpleNotificationsPushHandler);
  }

  @override
  List<SimpleNotificationsPushHandlerMessage> loadUnhandledMessagesForInstance(
    AuthInstance instance,
  ) =>
      unhandledLocalPreferencesBloc.loadUnhandledMessagesForInstance(instance);

  @override
  Future<bool> markAsHandled(List<SimpleNotificationsPushHandlerMessage> messages) =>
      unhandledLocalPreferencesBloc.markAsHandled(messages);

  @override
  Future markAsLaunchMessage(SimpleNotificationsPushHandlerMessage message) async {
    var unhandledList = unhandledLocalPreferencesBloc.value;

    unhandledList.messages.remove(message);

    unhandledList.messages.add(
      message.copyWith(
        pushMessage: message.pushMessage.copyWith(
          typeString: PushMessageType.launch.toJsonValue(),
        ),
      ),
    );

    await unhandledLocalPreferencesBloc.setValue(
      SimpleNotificationsPushHandlerUnhandledList(
        messages: unhandledList.messages,
      ),
    );
  }
}