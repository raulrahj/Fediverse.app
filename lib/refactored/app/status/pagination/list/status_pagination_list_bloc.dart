import 'package:fedi/refactored/app/status/status_model.dart';
import 'package:fedi/refactored/pagination/cached/cached_pagination_model.dart';
import 'package:fedi/refactored/pagination/list/pagination_list_bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

abstract class IStatusPaginationListBloc
    implements
        IPaginationListBloc<CachedPaginationPage<IStatus>, IStatus> {
  static IStatusPaginationListBloc of(BuildContext context,
          {bool listen = true}) =>
      Provider.of<IStatusPaginationListBloc>(context, listen: listen);
}
