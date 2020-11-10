import 'package:fedi/app/account/my/account_block/my_account_account_block_list_page.dart';
import 'package:fedi/app/account/my/account_mute/my_account_account_mute_list_page.dart';
import 'package:fedi/app/account/my/domain_block/list/my_account_domain_block_list_page.dart';
import 'package:fedi/app/account/my/follow_request/my_account_follow_request_list_page.dart';
import 'package:fedi/app/account/my/statuses/favourited/my_account_favourited_statuses_page.dart';
import 'package:fedi/app/status/draft/list/draft_status_list_page.dart';
import 'package:fedi/app/status/scheduled/list/scheduled_status_list_page.dart';
import 'package:fedi/app/ui/fedi_padding.dart';
import 'package:fedi/app/ui/page/fedi_sub_page_title_app_bar.dart';
import 'package:fedi/app/ui/selection/fedi_selection_item_row_widget.dart';
import 'package:fedi/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountHomeTabMenuAccountSubPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FediSubPageTitleAppBar(
        title: S.of(context).app_account_my_menu_account_subpage_title,
      ),
      body: Padding(
        padding: FediPadding.verticalSmallPadding,
        child: const _AccountHomeTabMenuAccountSubPageBody(),
      ),
    );
  }

  const AccountHomeTabMenuAccountSubPage();
}

class _AccountHomeTabMenuAccountSubPageBody extends StatelessWidget {
  const _AccountHomeTabMenuAccountSubPageBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        const _MyAccountSettingsScheduledButton(),
        const _MyAccountSettingsDraftsButton(),
        const _MyAccountSettingsFavouritedButton(),
        const _MyAccountSettingsFollowRequestsButton(),
        const _MyAccountSettingsAccountBlocksButton(),
        const _MyAccountSettingsAccountMutesButton(),
        const _MyAccountSettingsDomainBlocksButton(),
      ],
    );
  }
}

class _MyAccountSettingsScheduledButton extends StatelessWidget {
  const _MyAccountSettingsScheduledButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleFediSelectionItemRowWidget(
      title: S.of(context).app_account_my_settings_action_scheduledPosts,
      onClick: () {
        goToScheduledStatusListPage(context);
      },
    );
  }
}

class _MyAccountSettingsDraftsButton extends StatelessWidget {
  const _MyAccountSettingsDraftsButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleFediSelectionItemRowWidget(
      title: S.of(context).app_account_my_settings_action_draftPosts,
      onClick: () {
        goToDraftStatusListPage(context);
      },
    );
  }
}

class _MyAccountSettingsFavouritedButton extends StatelessWidget {
  const _MyAccountSettingsFavouritedButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleFediSelectionItemRowWidget(
      title: S.of(context).app_account_my_settings_action_favourited,
      onClick: () {
        goToMyAccountFavouritedStatusesPage(context);
      },
    );
  }
}

class _MyAccountSettingsFollowRequestsButton extends StatelessWidget {
  const _MyAccountSettingsFollowRequestsButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleFediSelectionItemRowWidget(
      title: S.of(context).app_account_my_settings_action_followRequests,
      onClick: () {
        goToMyAccountFollowRequestListPage(context);
      },
    );
  }
}

class _MyAccountSettingsAccountBlocksButton extends StatelessWidget {
  const _MyAccountSettingsAccountBlocksButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleFediSelectionItemRowWidget(
      title: S.of(context).app_account_my_settings_action_accountBlocks,
      onClick: () {
        goToMyAccountAccountBlockListPage(context);
      },
    );
  }
}

class _MyAccountSettingsAccountMutesButton extends StatelessWidget {
  const _MyAccountSettingsAccountMutesButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleFediSelectionItemRowWidget(
      title: S.of(context).app_account_my_settings_action_accountMutes,
      onClick: () {
        goToMyAccountAccountMuteListPage(context);
      },
    );
  }
}

class _MyAccountSettingsDomainBlocksButton extends StatelessWidget {
  const _MyAccountSettingsDomainBlocksButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleFediSelectionItemRowWidget(
      title: S.of(context).app_account_my_settings_action_domainBlocks,
      onClick: () {
        goToMyAccountDomainBlockListPage(context);
      },
    );
  }
}

void goAccountHomeTabMenuAccountSubPage(BuildContext context) {
  Navigator.push(
    context,
    createAccountHomeTabMenuAccountSubPageRoute(),
  );
}

MaterialPageRoute createAccountHomeTabMenuAccountSubPageRoute() {
  return MaterialPageRoute(
    builder: (context) => const AccountHomeTabMenuAccountSubPage(),
  );
}
