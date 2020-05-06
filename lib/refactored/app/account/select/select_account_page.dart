import 'package:easy_localization/easy_localization.dart';
import 'package:fedi/refactored/app/account/account_model.dart';
import 'package:fedi/refactored/app/account/pagination/cached/account_cached_pagination_bloc_impl.dart';
import 'package:fedi/refactored/app/account/pagination/list/account_pagination_list_bloc.dart';
import 'package:fedi/refactored/app/account/pagination/list/account_pagination_list_bloc_impl.dart';
import 'package:fedi/refactored/app/account/select/select_account_list_bloc_impl.dart';
import 'package:fedi/refactored/app/account/select/select_account_widget.dart';
import 'package:fedi/refactored/app/list/cached/pleroma_cached_list_bloc.dart';
import 'package:fedi/refactored/disposable/disposable_provider.dart';
import 'package:fedi/refactored/pagination/pagination_bloc.dart';
import 'package:fedi/refactored/pagination/pagination_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectAccountPage extends StatelessWidget {
  final AccountSelectedCallback accountSelectedCallback;

  SelectAccountPage({@required this.accountSelectedCallback});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
            title: Text(
                AppLocalizations.of(context).tr("app.account.select.title"))),
        body: SafeArea(
          child: SelectAccountWidget(
            accountSelectedCallback: accountSelectedCallback,
          ),
        ),
      );
}

void goToSelectAccountPage(BuildContext context,
    {@required AccountSelectedCallback accountSelectedCallback,
    @required bool excludeMyAccount}) {
  Navigator.push(
    context,
    MaterialPageRoute(
        builder: (context) =>
            DisposableProvider<IPleromaCachedListBloc<IAccount>>(
                create: (context) => SelectAccountCachedListBloc.createFromContext(
                    context,
                    excludeMyAccount: excludeMyAccount),
                child: DisposableProvider<
                    IPaginationBloc<PaginationPage<IAccount>, IAccount>>(
                  create: (context) =>
                      AccountCachedPaginationBloc.createFromContext(context),
                  child: DisposableProvider<IAccountPaginationListBloc>(
                    create: (context) =>
                        AccountPaginationListBloc.createFromContext(context),
                    child: SelectAccountPage(
                        accountSelectedCallback: accountSelectedCallback),
                  ),
                ))),
  );
}
