package com.google.android.exoplayer2.util;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.k3;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.n2;
import com.google.android.exoplayer2.o2;
import com.google.android.exoplayer2.p3;
import com.google.android.exoplayer2.q2;
import com.google.android.exoplayer2.trackselection.TrackSelectionParameters;
import com.google.android.exoplayer2.v1;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class DebugTextViewHelper {

    private final class Updater implements o2.d, Runnable {
        final /* synthetic */ DebugTextViewHelper this$0;

        private Updater(DebugTextViewHelper debugTextViewHelper) {
        }

        public /* bridge */ /* synthetic */ void onAudioAttributesChanged(com.google.android.exoplayer2.audio.e eVar) {
            q2.a(this, eVar);
        }

        public /* bridge */ /* synthetic */ void onAudioSessionIdChanged(int i11) {
            q2.b(this, i11);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* bridge */ /* synthetic */ void onAvailableCommandsChanged(o2.b bVar) {
            q2.c(this, bVar);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* bridge */ /* synthetic */ void onCues(ba.f fVar) {
            q2.d(this, fVar);
        }

        @Override // com.google.android.exoplayer2.o2.d
        @Deprecated
        public /* bridge */ /* synthetic */ void onCues(List list) {
            q2.e(this, list);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* bridge */ /* synthetic */ void onDeviceInfoChanged(com.google.android.exoplayer2.r rVar) {
            q2.f(this, rVar);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* bridge */ /* synthetic */ void onDeviceVolumeChanged(int i11, boolean z10) {
            q2.g(this, i11, z10);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* bridge */ /* synthetic */ void onEvents(o2 o2Var, o2.c cVar) {
            q2.h(this, o2Var, cVar);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* bridge */ /* synthetic */ void onIsLoadingChanged(boolean z10) {
            q2.i(this, z10);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* bridge */ /* synthetic */ void onIsPlayingChanged(boolean z10) {
            q2.j(this, z10);
        }

        @Override // com.google.android.exoplayer2.o2.d
        @Deprecated
        public /* bridge */ /* synthetic */ void onLoadingChanged(boolean z10) {
            q2.k(this, z10);
        }

        public /* bridge */ /* synthetic */ void onMaxSeekToPreviousPositionChanged(long j11) {
            q2.l(this, j11);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* bridge */ /* synthetic */ void onMediaItemTransition(@Nullable v1 v1Var, int i11) {
            q2.m(this, v1Var, i11);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* bridge */ /* synthetic */ void onMediaMetadataChanged(a2 a2Var) {
            q2.n(this, a2Var);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* bridge */ /* synthetic */ void onMetadata(Metadata metadata) {
            q2.o(this, metadata);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public void onPlayWhenReadyChanged(boolean z10, int i11) {
            throw null;
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* bridge */ /* synthetic */ void onPlaybackParametersChanged(n2 n2Var) {
            q2.q(this, n2Var);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public void onPlaybackStateChanged(int i11) {
            throw null;
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* bridge */ /* synthetic */ void onPlaybackSuppressionReasonChanged(int i11) {
            q2.s(this, i11);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* bridge */ /* synthetic */ void onPlayerError(PlaybackException playbackException) {
            q2.t(this, playbackException);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* bridge */ /* synthetic */ void onPlayerErrorChanged(@Nullable PlaybackException playbackException) {
            q2.u(this, playbackException);
        }

        @Override // com.google.android.exoplayer2.o2.d
        @Deprecated
        public /* bridge */ /* synthetic */ void onPlayerStateChanged(boolean z10, int i11) {
            q2.v(this, z10, i11);
        }

        public /* bridge */ /* synthetic */ void onPlaylistMetadataChanged(a2 a2Var) {
            q2.w(this, a2Var);
        }

        @Override // com.google.android.exoplayer2.o2.d
        @Deprecated
        public /* bridge */ /* synthetic */ void onPositionDiscontinuity(int i11) {
            q2.x(this, i11);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public void onPositionDiscontinuity(o2.e eVar, o2.e eVar2, int i11) {
            throw null;
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* bridge */ /* synthetic */ void onRenderedFirstFrame() {
            q2.z(this);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* bridge */ /* synthetic */ void onRepeatModeChanged(int i11) {
            q2.A(this, i11);
        }

        public /* bridge */ /* synthetic */ void onSeekBackIncrementChanged(long j11) {
            q2.B(this, j11);
        }

        public /* bridge */ /* synthetic */ void onSeekForwardIncrementChanged(long j11) {
            q2.C(this, j11);
        }

        @Override // com.google.android.exoplayer2.o2.d
        @Deprecated
        public /* bridge */ /* synthetic */ void onSeekProcessed() {
            q2.D(this);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* bridge */ /* synthetic */ void onShuffleModeEnabledChanged(boolean z10) {
            q2.E(this, z10);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* bridge */ /* synthetic */ void onSkipSilenceEnabledChanged(boolean z10) {
            q2.F(this, z10);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* bridge */ /* synthetic */ void onSurfaceSizeChanged(int i11, int i12) {
            q2.G(this, i11, i12);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* bridge */ /* synthetic */ void onTimelineChanged(k3 k3Var, int i11) {
            q2.H(this, k3Var, i11);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* bridge */ /* synthetic */ void onTrackSelectionParametersChanged(TrackSelectionParameters trackSelectionParameters) {
            q2.I(this, trackSelectionParameters);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* bridge */ /* synthetic */ void onTracksChanged(p3 p3Var) {
            q2.J(this, p3Var);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* bridge */ /* synthetic */ void onVideoSizeChanged(com.google.android.exoplayer2.video.y yVar) {
            q2.K(this, yVar);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* bridge */ /* synthetic */ void onVolumeChanged(float f11) {
            q2.L(this, f11);
        }

        @Override // java.lang.Runnable
        public void run() {
            throw null;
        }
    }
}
