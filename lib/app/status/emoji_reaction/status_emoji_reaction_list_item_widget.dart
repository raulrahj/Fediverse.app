import 'package:fedi/app/async/pleroma_async_operation_button_builder_widget.dart';
import 'package:fedi/app/status/emoji_reaction/status_emoji_reaction_bloc.dart';
import 'package:fedi/app/ui/fedi_sizes.dart';
import 'package:fedi/app/ui/spacer/fedi_small_horizontal_spacer.dart';
import 'package:fedi/app/ui/theme/fedi_ui_theme_model.dart';
import 'package:fedi/pleroma/status/pleroma_status_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatusEmojiReactionListItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var statusEmojiReactionBloc =
        IStatusEmojiReactionBloc.of(context, listen: true);
    return StreamBuilder<IPleromaStatusEmojiReaction>(
        stream: statusEmojiReactionBloc.emojiReactionStream,
        initialData: statusEmojiReactionBloc.emojiReaction,
        builder: (context, snapshot) {
          var emojiReaction = snapshot.data;

          if (emojiReaction == null) {
            // may occurs when user delete own reaction when new count is 0
            return SizedBox.shrink();
          }

          return PleromaAsyncOperationButtonBuilderWidget(
            showProgressDialog: false,
            asyncButtonAction: () =>
                statusEmojiReactionBloc.toggleEmojiReaction(),
            builder: (BuildContext context, void Function() onPressed) {
              var color = emojiReaction.me
                  ? IFediUiColorTheme.of(context).primary
                  : IFediUiColorTheme.of(context).lightGrey;
              return Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: FediSizes.smallPadding),
                child: InkWell(
                  onTap: onPressed,
                  child: Container(
                    height: 36.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
                      border: Border.all(
                        color: color,
                        width: 1.5,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: FediSizes.mediumPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            emojiReaction.name,
                            style: TextStyle(fontSize: 16, height: 14 / 16),
                          ),
                          const FediSmallHorizontalSpacer(),
                          Text(
                            "${emojiReaction.count}",
                            style: IFediUiTextTheme.of(context)
                                .mediumShortDarkGrey
                                .copyWith(color: color),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        });
  }
}
