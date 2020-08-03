import 'package:easy_localization/easy_localization.dart';
import 'package:fedi/app/account/my/settings/my_account_settings_widget.dart';
import 'package:fedi/app/status/scheduled/list/scheduled_status_list_page.dart';
import 'package:fedi/app/ui/button/text/fedi_primary_filled_text_button.dart';
import 'package:fedi/app/ui/divider/fedi_ultra_light_grey_divider.dart';
import 'package:fedi/app/ui/fedi_padding.dart';
import 'package:fedi/app/ui/page/fedi_sub_page_title_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAccountSettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FediSubPageTitleAppBar(
        title: tr("app.account.my.settings.title"),
      ),
      body: Padding(
        padding: FediPadding.allBigPadding,
        child: Column(
          children: [
            MyAccountSettingsWidget(),
            Padding(
              padding: FediPadding.verticalBigPadding,
              child: FediUltraLightGreyDivider(),
            ),
            buildScheduledButton(context)
          ],
        ),
      ),
    );
  }

  FediPrimaryFilledTextButton buildScheduledButton(BuildContext context) {
    return FediPrimaryFilledTextButton(
      tr("app.account.my.settings.scheduled_posts"),
      onPressed: () {
        goToScheduledStatusListPage(context);
      },
    );
  }

  const MyAccountSettingsPage();
}

void goMyAccountSettingsPage(BuildContext context) {
  Navigator.push(
    context,
    createMyAccountSettingsPageRoute(),
  );
}

MaterialPageRoute createMyAccountSettingsPageRoute() {
  return MaterialPageRoute(
    builder: (context) => MyAccountSettingsPage(),
  );
}