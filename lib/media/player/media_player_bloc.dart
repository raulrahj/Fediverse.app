import 'package:fedi/async/loading/init/async_init_loading_bloc.dart';
import 'package:fedi/disposable/disposable.dart';
import 'package:fedi/media/player/media_player_model.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

abstract class IMediaPlayerBloc implements Disposable, IAsyncInitLoadingBloc {
  static IMediaPlayerBloc of(BuildContext context, {bool listen = true}) =>
      Provider.of<IMediaPlayerBloc>(context, listen: listen);

  VideoPlayerController get videoPlayerController;

  MediaPlayerState get playerState;

  Stream<MediaPlayerState> get playerStateStream;

  bool get isMuted;

  Stream<bool> get isMutedStream;

  bool get isBuffering;

  Stream<bool> get isBufferingStream;

  Duration get lengthDuration;

  Stream<Duration> get lengthDurationStream;

  Duration get positionDuration;

  Stream<Duration> get positionDurationStream;

  double get currentPlaybackPercent;

  Stream<double> get currentPlaybackPercentStream;

  dynamic get error;

  StackTrace get stackTrace;

  Future seekToDuration(Duration position);

  Future seekToPercent(double percent);

  Future play();

  Future pause();

  Future mute();

  Future unMute();

  Future reloadAfterError();
}

extension MediaPlayerStateExtensions on MediaPlayerState {
  bool mapToInitialized() {
    var currentState = this;
    if (currentState == null) {
      return null;
    }

    switch (currentState) {
      case MediaPlayerState.initializing:
        return false;
        break;
      case MediaPlayerState.initialized:
        return true;
        break;
      case MediaPlayerState.paused:
        return true;
        break;
      case MediaPlayerState.playing:
        return true;
        break;
      case MediaPlayerState.finished:
        return true;
        break;
      case MediaPlayerState.disposed:
        return false;
        break;
      case MediaPlayerState.error:
        return false;
        break;
      case MediaPlayerState.notInitialized:
        return false;
        break;
    }
    throw "Unsupported playerState $currentState";
  }
}

extension IMediaPlayerBlocExtension on IMediaPlayerBloc {
  Future toggleMute() async {
    if (isMuted) {
      await unMute();
    } else {
      await mute();
    }
  }

  Future togglePlay() async {
    if (isPlaying) {
      await pause();
    } else {
      await play();
    }
  }

  bool get isInitialized => playerState.mapToInitialized();

  Stream<bool> get isInitializedStream =>
      playerStateStream.map((playerState) => playerState.mapToInitialized());

  bool get isPlaying => playerState == MediaPlayerState.playing;

  Stream<bool> get isPlayingStream => playerStateStream
      .map((playerState) => playerState == MediaPlayerState.playing);

  bool get isHaveError => playerState == MediaPlayerState.error;

  Stream<bool> get isHaveErrorStream => playerStateStream
      .map((playerState) => playerState == MediaPlayerState.error);

  bool get isInitializing => playerState == MediaPlayerState.initializing;

  Stream<bool> get isInitializingStream => playerStateStream
      .map((playerState) => playerState == MediaPlayerState.initializing);
}