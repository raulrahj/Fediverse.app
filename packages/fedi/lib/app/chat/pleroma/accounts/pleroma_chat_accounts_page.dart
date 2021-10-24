import 'package:easy_dispose_provider/easy_dispose_provider.dart';
import 'package:fedi/app/chat/accounts/chat_accounts_widget.dart';
import 'package:fedi/app/chat/chat_bloc.dart';
import 'package:fedi/app/chat/pleroma/pleroma_chat_bloc.dart';
import 'package:fedi/app/chat/pleroma/pleroma_chat_bloc_impl.dart';
import 'package:fedi/app/chat/pleroma/pleroma_chat_model.dart';
import 'package:fedi/app/ui/page/app_bar/fedi_page_title_app_bar.dart';
import 'package:fedi/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PleromaChatAccountsPage extends StatelessWidget {
  const PleromaChatAccountsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: FediPageTitleAppBar(
          title: S.of(context).app_chat_pleroma_accounts_title,
        ),
        body: const SafeArea(
          child: ChatAccountsWidget(),
        ),
      );
}

void goToPleromaChatAccountsPage(
  BuildContext context, {
  required IPleromaChat chat,
}) {
  Navigator.push(
    context,
    MaterialPageRoute<void>(
      builder: (context) => DisposableProvider<IPleromaChatBloc>(
        create: (context) => PleromaChatBloc.createFromContext(
          context,
          chat: chat,
          lastChatMessage: null,
        ),
        child: ProxyProvider<IPleromaChatBloc, IChatBloc>(
          update: (context, value, _) => value,
          child: const PleromaChatAccountsPage(),
        ),
      ),
    ),
  );
}