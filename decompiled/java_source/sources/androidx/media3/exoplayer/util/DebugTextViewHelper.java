package androidx.media3.exoplayer.util;

import androidx.annotation.Nullable;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.a0;
import androidx.media3.common.b0;
import androidx.media3.common.e0;
import androidx.media3.common.h0;
import androidx.media3.common.i0;
import androidx.media3.common.m;
import androidx.media3.common.m0;
import androidx.media3.common.t;
import androidx.media3.common.v;
import androidx.media3.common.x;
import androidx.media3.common.z;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DebugTextViewHelper {

    private final class Updater implements a0.d, Runnable {
        final /* synthetic */ DebugTextViewHelper this$0;

        private Updater(DebugTextViewHelper debugTextViewHelper) {
        }

        public /* bridge */ /* synthetic */ void onAudioAttributesChanged(androidx.media3.common.c cVar) {
            b0.a(this, cVar);
        }

        @Override // androidx.media3.common.a0.d
        public /* bridge */ /* synthetic */ void onAudioSessionIdChanged(int i11) {
            b0.b(this, i11);
        }

        @Override // androidx.media3.common.a0.d
        public /* bridge */ /* synthetic */ void onAvailableCommandsChanged(a0.b bVar) {
            b0.c(this, bVar);
        }

        @Override // androidx.media3.common.a0.d
        @Deprecated
        public /* bridge */ /* synthetic */ void onCues(List list) {
            b0.d(this, list);
        }

        @Override // androidx.media3.common.a0.d
        public /* bridge */ /* synthetic */ void onCues(u1.b bVar) {
            b0.e(this, bVar);
        }

        @Override // androidx.media3.common.a0.d
        public /* bridge */ /* synthetic */ void onDeviceInfoChanged(m mVar) {
            b0.f(this, mVar);
        }

        @Override // androidx.media3.common.a0.d
        public /* bridge */ /* synthetic */ void onDeviceVolumeChanged(int i11, boolean z10) {
            b0.g(this, i11, z10);
        }

        @Override // androidx.media3.common.a0.d
        public /* bridge */ /* synthetic */ void onEvents(a0 a0Var, a0.c cVar) {
            b0.h(this, a0Var, cVar);
        }

        @Override // androidx.media3.common.a0.d
        public /* bridge */ /* synthetic */ void onIsLoadingChanged(boolean z10) {
            b0.i(this, z10);
        }

        @Override // androidx.media3.common.a0.d
        public /* bridge */ /* synthetic */ void onIsPlayingChanged(boolean z10) {
            b0.j(this, z10);
        }

        @Override // androidx.media3.common.a0.d
        @Deprecated
        public /* bridge */ /* synthetic */ void onLoadingChanged(boolean z10) {
            b0.k(this, z10);
        }

        public /* bridge */ /* synthetic */ void onMaxSeekToPreviousPositionChanged(long j11) {
            b0.l(this, j11);
        }

        @Override // androidx.media3.common.a0.d
        public /* bridge */ /* synthetic */ void onMediaItemTransition(@Nullable t tVar, int i11) {
            b0.m(this, tVar, i11);
        }

        @Override // androidx.media3.common.a0.d
        public /* bridge */ /* synthetic */ void onMediaMetadataChanged(v vVar) {
            b0.n(this, vVar);
        }

        @Override // androidx.media3.common.a0.d
        public /* bridge */ /* synthetic */ void onMetadata(x xVar) {
            b0.o(this, xVar);
        }

        @Override // androidx.media3.common.a0.d
        public void onPlayWhenReadyChanged(boolean z10, int i11) {
            throw null;
        }

        @Override // androidx.media3.common.a0.d
        public /* bridge */ /* synthetic */ void onPlaybackParametersChanged(z zVar) {
            b0.q(this, zVar);
        }

        @Override // androidx.media3.common.a0.d
        public void onPlaybackStateChanged(int i11) {
            throw null;
        }

        @Override // androidx.media3.common.a0.d
        public /* bridge */ /* synthetic */ void onPlaybackSuppressionReasonChanged(int i11) {
            b0.s(this, i11);
        }

        @Override // androidx.media3.common.a0.d
        public /* bridge */ /* synthetic */ void onPlayerError(PlaybackException playbackException) {
            b0.t(this, playbackException);
        }

        @Override // androidx.media3.common.a0.d
        public /* bridge */ /* synthetic */ void onPlayerErrorChanged(@Nullable PlaybackException playbackException) {
            b0.u(this, playbackException);
        }

        @Override // androidx.media3.common.a0.d
        @Deprecated
        public /* bridge */ /* synthetic */ void onPlayerStateChanged(boolean z10, int i11) {
            b0.v(this, z10, i11);
        }

        public /* bridge */ /* synthetic */ void onPlaylistMetadataChanged(v vVar) {
            b0.w(this, vVar);
        }

        @Override // androidx.media3.common.a0.d
        @Deprecated
        public /* bridge */ /* synthetic */ void onPositionDiscontinuity(int i11) {
            b0.x(this, i11);
        }

        @Override // androidx.media3.common.a0.d
        public void onPositionDiscontinuity(a0.e eVar, a0.e eVar2, int i11) {
            throw null;
        }

        @Override // androidx.media3.common.a0.d
        public /* bridge */ /* synthetic */ void onRenderedFirstFrame() {
            b0.z(this);
        }

        @Override // androidx.media3.common.a0.d
        public /* bridge */ /* synthetic */ void onRepeatModeChanged(int i11) {
            b0.A(this, i11);
        }

        public /* bridge */ /* synthetic */ void onSeekBackIncrementChanged(long j11) {
            b0.B(this, j11);
        }

        public /* bridge */ /* synthetic */ void onSeekForwardIncrementChanged(long j11) {
            b0.C(this, j11);
        }

        @Override // androidx.media3.common.a0.d
        public /* bridge */ /* synthetic */ void onShuffleModeEnabledChanged(boolean z10) {
            b0.D(this, z10);
        }

        @Override // androidx.media3.common.a0.d
        public /* bridge */ /* synthetic */ void onSkipSilenceEnabledChanged(boolean z10) {
            b0.E(this, z10);
        }

        @Override // androidx.media3.common.a0.d
        public /* bridge */ /* synthetic */ void onSurfaceSizeChanged(int i11, int i12) {
            b0.F(this, i11, i12);
        }

        @Override // androidx.media3.common.a0.d
        public /* bridge */ /* synthetic */ void onTimelineChanged(e0 e0Var, int i11) {
            b0.G(this, e0Var, i11);
        }

        @Override // androidx.media3.common.a0.d
        public /* bridge */ /* synthetic */ void onTrackSelectionParametersChanged(h0 h0Var) {
            b0.H(this, h0Var);
        }

        @Override // androidx.media3.common.a0.d
        public /* bridge */ /* synthetic */ void onTracksChanged(i0 i0Var) {
            b0.I(this, i0Var);
        }

        @Override // androidx.media3.common.a0.d
        public /* bridge */ /* synthetic */ void onVideoSizeChanged(m0 m0Var) {
            b0.J(this, m0Var);
        }

        @Override // androidx.media3.common.a0.d
        public /* bridge */ /* synthetic */ void onVolumeChanged(float f11) {
            b0.K(this, f11);
        }

        @Override // java.lang.Runnable
        public void run() {
            throw null;
        }
    }
}
