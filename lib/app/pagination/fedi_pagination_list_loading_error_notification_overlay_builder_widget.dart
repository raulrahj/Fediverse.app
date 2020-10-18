import 'package:easy_localization/easy_localization.dart';
import 'package:fedi/app/ui/notification_overlay/error_fedi_notification_overlay.dart';
import 'package:fedi/disposable/disposable_owner.dart';
import 'package:fedi/pagination/list/pagination_list_bloc.dart';
import 'package:fedi/pagination/list/pagination_list_model.dart';
import 'package:flutter/cupertino.dart';

DateTime _lastRefreshErrorShowedDateTime = DateTime.now();
DateTime _lastLoadMoreErrorShowedDateTime = DateTime.now();

final Duration _throttleDuration = Duration(seconds: 2);

class FediPaginationListLoadingErrorNotificationOverlayBuilderWidget
    extends StatefulWidget {
  final IPaginationListBloc paginationListBloc;

  FediPaginationListLoadingErrorNotificationOverlayBuilderWidget(
      this.paginationListBloc);

  @override
  _FediPaginationListLoadingErrorNotificationOverlayBuilderWidgetState
      createState() =>
          _FediPaginationListLoadingErrorNotificationOverlayBuilderWidgetState();
}

class _FediPaginationListLoadingErrorNotificationOverlayBuilderWidgetState
    extends State<
        FediPaginationListLoadingErrorNotificationOverlayBuilderWidget> {
  DisposableOwner disposable = DisposableOwner();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    disposable.addDisposable(streamSubscription: widget
        .paginationListBloc.refreshErrorStream
        .listen((paginationListLoadingError) {
      var now = DateTime.now();
      var difference = now.difference(_lastRefreshErrorShowedDateTime);
      if (difference > _throttleDuration) {
        _lastRefreshErrorShowedDateTime = now;
        showErrorFediNotificationOverlay(
            context: context,
            contentText: "${_errorToString(paginationListLoadingError)}",
            titleText: "app.list.refresh.unable_to_fetch".tr());
      }
    }));
    disposable.addDisposable(streamSubscription: widget
        .paginationListBloc.loadMoreErrorStream
        .listen((paginationListLoadingError) {
      var now = DateTime.now();
      var difference = now.difference(_lastLoadMoreErrorShowedDateTime);
      if (difference > _throttleDuration) {
        _lastLoadMoreErrorShowedDateTime = now;
        showErrorFediNotificationOverlay(
            context: context,
            contentText: "${_errorToString(paginationListLoadingError)}",
            titleText: "app.list.loading.unable_to_fetch".tr());
      }
    }));
  }

  String _errorToString(PaginationListLoadingError paginationListLoadingError) {
    if(paginationListLoadingError.error is CantUpdateFromNetworkException) {
      return "app.list.cant_update_from_network".tr();
    } else {
      return paginationListLoadingError.error.toString();
    }
  }

  @override
  void dispose() {
    super.dispose();
    disposable.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.shrink();
  }
}
