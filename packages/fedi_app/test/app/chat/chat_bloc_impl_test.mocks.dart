// Mocks generated by Mockito 5.0.16 from annotations
// in fedi_app/test/app/chat/chat_bloc_impl_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i10;

import 'package:connectivity_plus/connectivity_plus.dart' as _i19;
import 'package:easy_dispose/easy_dispose.dart' as _i20;
import 'package:fedi_app/connection/connection_service.dart' as _i18;
import 'package:fediverse_api/fediverse_api.dart' as _i6;
import 'package:mockito/mockito.dart' as _i1;
import 'package:unifedi_api/src/api/account/my/edit/unifedi_api_edit_my_account_model.dart'
    as _i14;
import 'package:unifedi_api/src/api/account/my/service/unifedi_api_my_account_service.dart'
    as _i13;
import 'package:unifedi_api/src/api/account/my/unifedi_api_my_account_model.dart'
    as _i7;
import 'package:unifedi_api/src/api/account/relationship/unifedi_api_account_relationship_model.dart'
    as _i17;
import 'package:unifedi_api/src/api/account/unifedi_api_account_model.dart'
    as _i15;
import 'package:unifedi_api/src/api/chat/message/post/unifedi_api_post_chat_message_model.dart'
    as _i12;
import 'package:unifedi_api/src/api/chat/message/unifedi_api_chat_message_model.dart'
    as _i5;
import 'package:unifedi_api/src/api/chat/service/unifedi_api_chat_service.dart'
    as _i9;
import 'package:unifedi_api/src/api/chat/unifedi_api_chat_model.dart' as _i4;
import 'package:unifedi_api/src/api/feature/unifedi_api_feature_model.dart'
    as _i2;
import 'package:unifedi_api/src/api/pagination/unifedi_api_pagination_model.dart'
    as _i11;
import 'package:unifedi_api/src/api/rest/unifedi_api_rest_service.dart' as _i3;
import 'package:unifedi_api/src/api/status/unifedi_api_status_model.dart'
    as _i16;
import 'package:unifedi_api/src/api/tag/unifedi_api_tag_model.dart' as _i8;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeIUnifediApiFeature_0 extends _i1.Fake
    implements _i2.IUnifediApiFeature {}

class _FakeIUnifediApiRestService_1 extends _i1.Fake
    implements _i3.IUnifediApiRestService {}

class _FakeIUnifediApiChat_2 extends _i1.Fake implements _i4.IUnifediApiChat {}

class _FakeIUnifediApiChatMessage_3 extends _i1.Fake
    implements _i5.IUnifediApiChatMessage {}

class _FakeFediverseApiFeatureRequirementState_4 extends _i1.Fake
    implements _i6.FediverseApiFeatureRequirementState {}

class _FakeIUnifediApiMyAccount_5 extends _i1.Fake
    implements _i7.IUnifediApiMyAccount {}

class _FakeIUnifediApiTag_6 extends _i1.Fake implements _i8.IUnifediApiTag {}

/// A class which mocks [IUnifediApiChatService].
///
/// See the documentation for Mockito's code generation for more information.
class MockIUnifediApiChatService extends _i1.Mock
    implements _i9.IUnifediApiChatService {
  MockIUnifediApiChatService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.IUnifediApiFeature get getChatsFeature =>
      (super.noSuchMethod(Invocation.getter(#getChatsFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i2.IUnifediApiFeature get getChatMessagesFeature =>
      (super.noSuchMethod(Invocation.getter(#getChatMessagesFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i2.IUnifediApiFeature get markChatAsReadFeature =>
      (super.noSuchMethod(Invocation.getter(#markChatAsReadFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i2.IUnifediApiFeature get getChatFeature =>
      (super.noSuchMethod(Invocation.getter(#getChatFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i2.IUnifediApiFeature get getOrCreateChatByAccountIdFeature =>
      (super.noSuchMethod(Invocation.getter(#getOrCreateChatByAccountIdFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i2.IUnifediApiFeature get sendMessageFeature =>
      (super.noSuchMethod(Invocation.getter(#sendMessageFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i2.IUnifediApiFeature get deleteChatMessageFeature =>
      (super.noSuchMethod(Invocation.getter(#deleteChatMessageFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i3.IUnifediApiRestService get restService =>
      (super.noSuchMethod(Invocation.getter(#restService),
              returnValue: _FakeIUnifediApiRestService_1())
          as _i3.IUnifediApiRestService);
  @override
  bool get isDisposed =>
      (super.noSuchMethod(Invocation.getter(#isDisposed), returnValue: false)
          as bool);
  @override
  _i10.Future<List<_i4.IUnifediApiChat>> getChats(
          {_i11.IUnifediApiPagination? pagination}) =>
      (super.noSuchMethod(
              Invocation.method(#getChats, [], {#pagination: pagination}),
              returnValue: Future<List<_i4.IUnifediApiChat>>.value(
                  <_i4.IUnifediApiChat>[]))
          as _i10.Future<List<_i4.IUnifediApiChat>>);
  @override
  _i10.Future<List<_i5.IUnifediApiChatMessage>> getChatMessages(
          {String? chatId, _i11.IUnifediApiPagination? pagination}) =>
      (super.noSuchMethod(
          Invocation.method(
              #getChatMessages, [], {#chatId: chatId, #pagination: pagination}),
          returnValue: Future<List<_i5.IUnifediApiChatMessage>>.value(
              <_i5.IUnifediApiChatMessage>[])) as _i10
          .Future<List<_i5.IUnifediApiChatMessage>>);
  @override
  _i10.Future<_i4.IUnifediApiChat> markChatAsRead(
          {String? chatId, String? lastReadChatMessageId}) =>
      (super.noSuchMethod(
              Invocation.method(#markChatAsRead, [], {
                #chatId: chatId,
                #lastReadChatMessageId: lastReadChatMessageId
              }),
              returnValue:
                  Future<_i4.IUnifediApiChat>.value(_FakeIUnifediApiChat_2()))
          as _i10.Future<_i4.IUnifediApiChat>);
  @override
  _i10.Future<_i4.IUnifediApiChat> getChat({String? id}) =>
      (super.noSuchMethod(Invocation.method(#getChat, [], {#id: id}),
              returnValue:
                  Future<_i4.IUnifediApiChat>.value(_FakeIUnifediApiChat_2()))
          as _i10.Future<_i4.IUnifediApiChat>);
  @override
  _i10.Future<_i4.IUnifediApiChat> getOrCreateChatByAccountId(
          {String? accountId}) =>
      (super.noSuchMethod(
              Invocation.method(
                  #getOrCreateChatByAccountId, [], {#accountId: accountId}),
              returnValue:
                  Future<_i4.IUnifediApiChat>.value(_FakeIUnifediApiChat_2()))
          as _i10.Future<_i4.IUnifediApiChat>);
  @override
  _i10.Future<_i5.IUnifediApiChatMessage> sendMessage(
          {String? idempotencyKey,
          String? chatId,
          _i12.IUnifediApiPostChatMessage? postChatMessage}) =>
      (super.noSuchMethod(
              Invocation.method(#sendMessage, [], {
                #idempotencyKey: idempotencyKey,
                #chatId: chatId,
                #postChatMessage: postChatMessage
              }),
              returnValue: Future<_i5.IUnifediApiChatMessage>.value(
                  _FakeIUnifediApiChatMessage_3()))
          as _i10.Future<_i5.IUnifediApiChatMessage>);
  @override
  _i10.Future<void> deleteChatMessage(
          {String? chatMessageId, String? chatId}) =>
      (super.noSuchMethod(
              Invocation.method(#deleteChatMessage, [],
                  {#chatMessageId: chatMessageId, #chatId: chatId}),
              returnValue: Future<void>.value(),
              returnValueForMissingStub: Future<void>.value())
          as _i10.Future<void>);
  @override
  _i6.FediverseApiFeatureRequirementState checkFeatureState(
          _i2.IUnifediApiFeature? feature) =>
      (super.noSuchMethod(Invocation.method(#checkFeatureState, [feature]),
              returnValue: _FakeFediverseApiFeatureRequirementState_4())
          as _i6.FediverseApiFeatureRequirementState);
  @override
  String toString() => super.toString();
  @override
  _i10.Future<void> dispose() => (super.noSuchMethod(
      Invocation.method(#dispose, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i10.Future<void>);
}

/// A class which mocks [IUnifediApiMyAccountService].
///
/// See the documentation for Mockito's code generation for more information.
class MockIUnifediApiMyAccountService extends _i1.Mock
    implements _i13.IUnifediApiMyAccountService {
  MockIUnifediApiMyAccountService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.IUnifediApiFeature get updateMyCredentialsFeature =>
      (super.noSuchMethod(Invocation.getter(#updateMyCredentialsFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i2.IUnifediApiFeature get updateMyCredentialsLockedFeature =>
      (super.noSuchMethod(Invocation.getter(#updateMyCredentialsLockedFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i2.IUnifediApiFeature get updateMyCredentialsPrivacyFeature =>
      (super.noSuchMethod(Invocation.getter(#updateMyCredentialsPrivacyFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i2.IUnifediApiFeature get updateMyCredentialsSensitiveFeature => (super
      .noSuchMethod(Invocation.getter(#updateMyCredentialsSensitiveFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i2.IUnifediApiFeature get updateMyCredentialsDiscoverableFeature => (super
      .noSuchMethod(Invocation.getter(#updateMyCredentialsDiscoverableFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i2.IUnifediApiFeature get updateMyCredentialsNoRichTextFeature => (super
      .noSuchMethod(Invocation.getter(#updateMyCredentialsNoRichTextFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i2.IUnifediApiFeature get updateMyCredentialsHideFollowersFeature => (super
      .noSuchMethod(Invocation.getter(#updateMyCredentialsHideFollowersFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i2.IUnifediApiFeature get updateMyCredentialsHideFollowsFeature => (super
      .noSuchMethod(Invocation.getter(#updateMyCredentialsHideFollowsFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i2.IUnifediApiFeature get updateMyCredentialsHideFollowersCountFeature =>
      (super.noSuchMethod(
          Invocation.getter(#updateMyCredentialsHideFollowersCountFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i2.IUnifediApiFeature get updateMyCredentialsHideFollowsCountFeature =>
      (super.noSuchMethod(
          Invocation.getter(#updateMyCredentialsHideFollowsCountFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i2.IUnifediApiFeature get updateMyCredentialsHideFavoritesFeature => (super
      .noSuchMethod(Invocation.getter(#updateMyCredentialsHideFavoritesFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i2.IUnifediApiFeature get updateMyCredentialsShowRoleFeature => (super
      .noSuchMethod(Invocation.getter(#updateMyCredentialsShowRoleFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i2.IUnifediApiFeature get updateMyCredentialsDefaultScopeFeature => (super
      .noSuchMethod(Invocation.getter(#updateMyCredentialsDefaultScopeFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i2.IUnifediApiFeature get updateMyCredentialsSettingsStoreFeature => (super
      .noSuchMethod(Invocation.getter(#updateMyCredentialsSettingsStoreFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i2.IUnifediApiFeature get updateMyCredentialsSkipThreadContainmentFeature =>
      (super.noSuchMethod(
          Invocation.getter(#updateMyCredentialsSkipThreadContainmentFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i2.IUnifediApiFeature get updateMyCredentialsAllowFollowingMoveFeature =>
      (super.noSuchMethod(
          Invocation.getter(#updateMyCredentialsAllowFollowingMoveFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i2.IUnifediApiFeature get updateMyCredentialsAcceptsChatMessagesFeature =>
      (super.noSuchMethod(
          Invocation.getter(#updateMyCredentialsAcceptsChatMessagesFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i2.IUnifediApiFeature get updateMyCredentialsAlsoKnownAsFeature => (super
      .noSuchMethod(Invocation.getter(#updateMyCredentialsAlsoKnownAsFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i2.IUnifediApiFeature get updateMyCredentialsBackgroundImageFeature =>
      (super.noSuchMethod(
          Invocation.getter(#updateMyCredentialsBackgroundImageFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i2.IUnifediApiFeature get verifyMyCredentialsFeature =>
      (super.noSuchMethod(Invocation.getter(#verifyMyCredentialsFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i2.IUnifediApiFeature get getMyDomainBlocksFeature =>
      (super.noSuchMethod(Invocation.getter(#getMyDomainBlocksFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i2.IUnifediApiFeature get getMyAccountBlocksFeature =>
      (super.noSuchMethod(Invocation.getter(#getMyAccountBlocksFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i2.IUnifediApiFeature get getMyAccountMutesFeature =>
      (super.noSuchMethod(Invocation.getter(#getMyAccountMutesFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i2.IUnifediApiFeature get getMyBookmarksFeature =>
      (super.noSuchMethod(Invocation.getter(#getMyBookmarksFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i2.IUnifediApiFeature get getMyFollowRequestsFeature =>
      (super.noSuchMethod(Invocation.getter(#getMyFollowRequestsFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i2.IUnifediApiFeature get acceptMyAccountFollowRequestFeature => (super
      .noSuchMethod(Invocation.getter(#acceptMyAccountFollowRequestFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i2.IUnifediApiFeature get rejectMyAccountFollowRequestFeature => (super
      .noSuchMethod(Invocation.getter(#rejectMyAccountFollowRequestFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i2.IUnifediApiFeature get getMyEndorsementsFeature =>
      (super.noSuchMethod(Invocation.getter(#getMyEndorsementsFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i2.IUnifediApiFeature get getMyAccountFeaturedTagsFeature =>
      (super.noSuchMethod(Invocation.getter(#getMyAccountFeaturedTagsFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i2.IUnifediApiFeature get featureMyAccountTagFeature =>
      (super.noSuchMethod(Invocation.getter(#featureMyAccountTagFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i2.IUnifediApiFeature get unfeatureMyAccountTagFeature =>
      (super.noSuchMethod(Invocation.getter(#unfeatureMyAccountTagFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i2.IUnifediApiFeature get getMySuggestedTagsFeature =>
      (super.noSuchMethod(Invocation.getter(#getMySuggestedTagsFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i2.IUnifediApiFeature get getMySuggestionsFeature =>
      (super.noSuchMethod(Invocation.getter(#getMySuggestionsFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i2.IUnifediApiFeature get removeMyAccountSuggestionFeature =>
      (super.noSuchMethod(Invocation.getter(#removeMyAccountSuggestionFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i2.IUnifediApiFeature get getMyFavouritesFeature =>
      (super.noSuchMethod(Invocation.getter(#getMyFavouritesFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i2.IUnifediApiFeature get getMyFavouritesPaginationMinIdFeature => (super
      .noSuchMethod(Invocation.getter(#getMyFavouritesPaginationMinIdFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i2.IUnifediApiFeature get getMyAccountMutesWithRelationshipFeature =>
      (super.noSuchMethod(
          Invocation.getter(#getMyAccountMutesWithRelationshipFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i2.IUnifediApiFeature get editNotificationsSettingsFeature =>
      (super.noSuchMethod(Invocation.getter(#editNotificationsSettingsFeature),
          returnValue: _FakeIUnifediApiFeature_0()) as _i2.IUnifediApiFeature);
  @override
  _i3.IUnifediApiRestService get restService =>
      (super.noSuchMethod(Invocation.getter(#restService),
              returnValue: _FakeIUnifediApiRestService_1())
          as _i3.IUnifediApiRestService);
  @override
  bool get isDisposed =>
      (super.noSuchMethod(Invocation.getter(#isDisposed), returnValue: false)
          as bool);
  @override
  _i10.Future<_i7.IUnifediApiMyAccount> updateMyCredentials(
          {_i14.IUnifediApiEditMyAccount? editMyAccount}) =>
      (super.noSuchMethod(
              Invocation.method(
                  #updateMyCredentials, [], {#editMyAccount: editMyAccount}),
              returnValue: Future<_i7.IUnifediApiMyAccount>.value(
                  _FakeIUnifediApiMyAccount_5()))
          as _i10.Future<_i7.IUnifediApiMyAccount>);
  @override
  _i10.Future<_i7.IUnifediApiMyAccount> verifyMyCredentials() =>
      (super.noSuchMethod(Invocation.method(#verifyMyCredentials, []),
              returnValue: Future<_i7.IUnifediApiMyAccount>.value(
                  _FakeIUnifediApiMyAccount_5()))
          as _i10.Future<_i7.IUnifediApiMyAccount>);
  @override
  _i10.Future<List<String>> getMyDomainBlocks(
          {_i11.IUnifediApiPagination? pagination}) =>
      (super.noSuchMethod(
          Invocation.method(#getMyDomainBlocks, [], {#pagination: pagination}),
          returnValue:
              Future<List<String>>.value(<String>[])) as _i10
          .Future<List<String>>);
  @override
  _i10.Future<List<_i15.IUnifediApiAccount>> getMyAccountBlocks(
          {_i11.IUnifediApiPagination? pagination}) =>
      (super.noSuchMethod(
          Invocation.method(#getMyAccountBlocks, [], {#pagination: pagination}),
          returnValue: Future<List<_i15.IUnifediApiAccount>>.value(
              <_i15.IUnifediApiAccount>[])) as _i10
          .Future<List<_i15.IUnifediApiAccount>>);
  @override
  _i10.Future<List<_i15.IUnifediApiAccount>> getMyAccountMutes(
          {bool? withRelationship, _i11.IUnifediApiPagination? pagination}) =>
      (super.noSuchMethod(
              Invocation.method(#getMyAccountMutes, [], {
                #withRelationship: withRelationship,
                #pagination: pagination
              }),
              returnValue: Future<List<_i15.IUnifediApiAccount>>.value(
                  <_i15.IUnifediApiAccount>[]))
          as _i10.Future<List<_i15.IUnifediApiAccount>>);
  @override
  _i10.Future<List<_i16.IUnifediApiStatus>> getMyBookmarks(
          {_i11.IUnifediApiPagination? pagination}) =>
      (super.noSuchMethod(
              Invocation.method(#getMyBookmarks, [], {#pagination: pagination}),
              returnValue: Future<List<_i16.IUnifediApiStatus>>.value(
                  <_i16.IUnifediApiStatus>[]))
          as _i10.Future<List<_i16.IUnifediApiStatus>>);
  @override
  _i10.Future<List<_i16.IUnifediApiStatus>> getMyFavourites(
          {_i11.IUnifediApiPagination? pagination}) =>
      (super.noSuchMethod(
          Invocation.method(#getMyFavourites, [], {#pagination: pagination}),
          returnValue: Future<List<_i16.IUnifediApiStatus>>.value(
              <_i16.IUnifediApiStatus>[])) as _i10
          .Future<List<_i16.IUnifediApiStatus>>);
  @override
  _i10.Future<List<_i15.IUnifediApiAccount>> getMyFollowRequests(
          {_i11.IUnifediApiPagination? pagination}) =>
      (super.noSuchMethod(
              Invocation.method(
                  #getMyFollowRequests, [], {#pagination: pagination}),
              returnValue: Future<List<_i15.IUnifediApiAccount>>.value(
                  <_i15.IUnifediApiAccount>[]))
          as _i10.Future<List<_i15.IUnifediApiAccount>>);
  @override
  _i10.Future<_i17.IUnifediApiAccountRelationship?>
      acceptMyAccountFollowRequest({String? accountId}) => (super.noSuchMethod(
              Invocation.method(
                  #acceptMyAccountFollowRequest, [], {#accountId: accountId}),
              returnValue: Future<_i17.IUnifediApiAccountRelationship?>.value())
          as _i10.Future<_i17.IUnifediApiAccountRelationship?>);
  @override
  _i10.Future<_i17.IUnifediApiAccountRelationship?>
      rejectMyAccountFollowRequest({String? accountId}) => (super.noSuchMethod(
              Invocation.method(
                  #rejectMyAccountFollowRequest, [], {#accountId: accountId}),
              returnValue: Future<_i17.IUnifediApiAccountRelationship?>.value())
          as _i10.Future<_i17.IUnifediApiAccountRelationship?>);
  @override
  _i10.Future<List<_i15.IUnifediApiAccount>> getMyEndorsements(
          {_i11.IUnifediApiPagination? pagination}) =>
      (super.noSuchMethod(
          Invocation.method(#getMyEndorsements, [], {#pagination: pagination}),
          returnValue: Future<List<_i15.IUnifediApiAccount>>.value(
              <_i15.IUnifediApiAccount>[])) as _i10
          .Future<List<_i15.IUnifediApiAccount>>);
  @override
  _i10.Future<List<_i8.IUnifediApiTag>> getMyAccountFeaturedTags(
          {_i11.IUnifediApiPagination? pagination}) =>
      (super.noSuchMethod(
              Invocation.method(
                  #getMyAccountFeaturedTags, [], {#pagination: pagination}),
              returnValue: Future<List<_i8.IUnifediApiTag>>.value(
                  <_i8.IUnifediApiTag>[]))
          as _i10.Future<List<_i8.IUnifediApiTag>>);
  @override
  _i10.Future<List<_i8.IUnifediApiTag>> getMySuggestedTags() =>
      (super.noSuchMethod(Invocation.method(#getMySuggestedTags, []),
              returnValue: Future<List<_i8.IUnifediApiTag>>.value(
                  <_i8.IUnifediApiTag>[]))
          as _i10.Future<List<_i8.IUnifediApiTag>>);
  @override
  _i10.Future<_i8.IUnifediApiTag> featureMyAccountTag({String? name}) => (super
      .noSuchMethod(Invocation.method(#featureMyAccountTag, [], {#name: name}),
          returnValue:
              Future<_i8.IUnifediApiTag>.value(_FakeIUnifediApiTag_6())) as _i10
      .Future<_i8.IUnifediApiTag>);
  @override
  _i10.Future<void> unfeatureMyAccountTag({String? tagId}) =>
      (super.noSuchMethod(
              Invocation.method(#unfeatureMyAccountTag, [], {#tagId: tagId}),
              returnValue: Future<void>.value(),
              returnValueForMissingStub: Future<void>.value())
          as _i10.Future<void>);
  @override
  _i10.Future<List<_i15.IUnifediApiAccount>> getMySuggestions({int? limit}) =>
      (super.noSuchMethod(
              Invocation.method(#getMySuggestions, [], {#limit: limit}),
              returnValue: Future<List<_i15.IUnifediApiAccount>>.value(
                  <_i15.IUnifediApiAccount>[]))
          as _i10.Future<List<_i15.IUnifediApiAccount>>);
  @override
  _i10.Future<void> removeMyAccountSuggestion({String? accountId}) =>
      (super.noSuchMethod(
              Invocation.method(
                  #removeMyAccountSuggestion, [], {#accountId: accountId}),
              returnValue: Future<void>.value(),
              returnValueForMissingStub: Future<void>.value())
          as _i10.Future<void>);
  @override
  _i10.Future<void> editNotificationsSettings(
          {bool? blockFromStrangers, bool? hideNotificationContents}) =>
      (super.noSuchMethod(
              Invocation.method(#editNotificationsSettings, [], {
                #blockFromStrangers: blockFromStrangers,
                #hideNotificationContents: hideNotificationContents
              }),
              returnValue: Future<void>.value(),
              returnValueForMissingStub: Future<void>.value())
          as _i10.Future<void>);
  @override
  _i6.FediverseApiFeatureRequirementState checkFeatureState(
          _i2.IUnifediApiFeature? feature) =>
      (super.noSuchMethod(Invocation.method(#checkFeatureState, [feature]),
              returnValue: _FakeFediverseApiFeatureRequirementState_4())
          as _i6.FediverseApiFeatureRequirementState);
  @override
  String toString() => super.toString();
  @override
  _i10.Future<void> dispose() => (super.noSuchMethod(
      Invocation.method(#dispose, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i10.Future<void>);
}

/// A class which mocks [IConnectionService].
///
/// See the documentation for Mockito's code generation for more information.
class MockIConnectionService extends _i1.Mock
    implements _i18.IConnectionService {
  MockIConnectionService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i10.Stream<_i19.ConnectivityResult> get connectionStateStream =>
      (super.noSuchMethod(Invocation.getter(#connectionStateStream),
              returnValue: Stream<_i19.ConnectivityResult>.empty())
          as _i10.Stream<_i19.ConnectivityResult>);
  @override
  _i19.ConnectivityResult get connectionState => (super.noSuchMethod(
      Invocation.getter(#connectionState),
      returnValue: _i19.ConnectivityResult.wifi) as _i19.ConnectivityResult);
  @override
  _i10.Stream<bool> get isConnectedStream =>
      (super.noSuchMethod(Invocation.getter(#isConnectedStream),
          returnValue: Stream<bool>.empty()) as _i10.Stream<bool>);
  @override
  bool get isConnected =>
      (super.noSuchMethod(Invocation.getter(#isConnected), returnValue: false)
          as bool);
  @override
  _i20.DisposeOrder get disposeOrder =>
      (super.noSuchMethod(Invocation.getter(#disposeOrder),
          returnValue: _i20.DisposeOrder.lifo) as _i20.DisposeOrder);
  @override
  bool get catchExceptions => (super
          .noSuchMethod(Invocation.getter(#catchExceptions), returnValue: false)
      as bool);
  @override
  List<_i20.IDisposable> get disposables =>
      (super.noSuchMethod(Invocation.getter(#disposables),
          returnValue: <_i20.IDisposable>[]) as List<_i20.IDisposable>);
  @override
  bool get isDisposed =>
      (super.noSuchMethod(Invocation.getter(#isDisposed), returnValue: false)
          as bool);
  @override
  set isDisposed(bool? _isDisposed) =>
      super.noSuchMethod(Invocation.setter(#isDisposed, _isDisposed),
          returnValueForMissingStub: null);
  @override
  _i10.Future<void> internalAsyncInit() => (super.noSuchMethod(
      Invocation.method(#internalAsyncInit, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i10.Future<void>);
  @override
  String toString() => super.toString();
  @override
  void addDisposable(_i20.IDisposable? disposable) =>
      super.noSuchMethod(Invocation.method(#addDisposable, [disposable]),
          returnValueForMissingStub: null);
  @override
  void addDisposables(Iterable<_i20.IDisposable>? disposables) =>
      super.noSuchMethod(Invocation.method(#addDisposables, [disposables]),
          returnValueForMissingStub: null);
  @override
  _i10.Future<void> performDispose() => (super.noSuchMethod(
      Invocation.method(#performDispose, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i10.Future<void>);
  @override
  _i10.Future<void> dispose() => (super.noSuchMethod(
      Invocation.method(#dispose, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i10.Future<void>);
}