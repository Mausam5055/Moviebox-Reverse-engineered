package com.transsion.player.orplayer;

import com.transsion.player.orplayer.global.TnPlayerType;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public interface f {

    /* JADX INFO: loaded from: classes6.dex */
    public static final class a {
        public static void A(f fVar) {
        }

        public static void B(f fVar) {
        }

        public static void C(f fVar, int i11) {
        }

        public static void D(f fVar, mo.c tracks) {
            Intrinsics.h(tracks, "tracks");
        }

        public static void E(f fVar, int i11) {
        }

        public static void F(f fVar, ao.e eVar) {
        }

        public static /* synthetic */ void G(f fVar, ao.e eVar, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onVideoPause");
            }
            if ((i11 & 1) != 0) {
                eVar = null;
            }
            fVar.onVideoPause(eVar);
        }

        public static void H(f fVar, int i11, int i12) {
        }

        public static void I(f fVar, ao.e eVar) {
        }

        public static /* synthetic */ void J(f fVar, ao.e eVar, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onVideoStart");
            }
            if ((i11 & 1) != 0) {
                eVar = null;
            }
            fVar.onVideoStart(eVar);
        }

        public static void K(f fVar) {
        }

        public static void a(f fVar, boolean z10, int i11, int i12, mo.d dashVideoTracksGroup) {
            Intrinsics.h(dashVideoTracksGroup, "dashVideoTracksGroup");
        }

        public static void b(f fVar) {
        }

        public static void c(f fVar, ao.e eVar) {
        }

        public static void d(f fVar, long j11, ao.e eVar) {
        }

        public static void e(f fVar, ao.e eVar) {
        }

        public static /* synthetic */ void f(f fVar, ao.e eVar, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onCompletion");
            }
            if ((i11 & 1) != 0) {
                eVar = null;
            }
            fVar.onCompletion(eVar);
        }

        public static void g(f fVar, boolean z10) {
        }

        public static void h(f fVar, boolean z10) {
        }

        public static void i(f fVar, ao.e eVar) {
        }

        public static /* synthetic */ void j(f fVar, ao.e eVar, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onLoadingBegin");
            }
            if ((i11 & 1) != 0) {
                eVar = null;
            }
            fVar.onLoadingBegin(eVar);
        }

        public static void k(f fVar, ao.e eVar) {
        }

        public static /* synthetic */ void l(f fVar, ao.e eVar, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onLoadingEnd");
            }
            if ((i11 & 1) != 0) {
                eVar = null;
            }
            fVar.onLoadingEnd(eVar);
        }

        public static void m(f fVar, int i11, float f11, ao.e eVar) {
        }

        public static /* synthetic */ void n(f fVar, int i11, float f11, ao.e eVar, int i12, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onLoadingProgress");
            }
            if ((i12 & 4) != 0) {
                eVar = null;
            }
            fVar.onLoadingProgress(i11, f11, eVar);
        }

        public static void o(f fVar) {
        }

        public static void p(f fVar, String str) {
        }

        public static void q(f fVar, PlayError errorInfo, ao.e eVar) {
            Intrinsics.h(errorInfo, "errorInfo");
        }

        public static /* synthetic */ void r(f fVar, PlayError playError, ao.e eVar, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onPlayError");
            }
            if ((i11 & 2) != 0) {
                eVar = null;
            }
            fVar.onPlayError(playError, eVar);
        }

        public static void s(f fVar, TnPlayerType errorType, ao.e eVar) {
            Intrinsics.h(errorType, "errorType");
        }

        public static void t(f fVar, ao.e eVar) {
        }

        public static /* synthetic */ void u(f fVar, ao.e eVar, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onPlayerRelease");
            }
            if ((i11 & 1) != 0) {
                eVar = null;
            }
            fVar.onPlayerRelease(eVar);
        }

        public static void v(f fVar) {
        }

        public static void w(f fVar, ao.e eVar) {
        }

        public static /* synthetic */ void x(f fVar, ao.e eVar, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onPrepare");
            }
            if ((i11 & 1) != 0) {
                eVar = null;
            }
            fVar.onPrepare(eVar);
        }

        public static void y(f fVar, long j11, ao.e eVar) {
        }

        public static /* synthetic */ void z(f fVar, long j11, ao.e eVar, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onProgress");
            }
            if ((i11 & 2) != 0) {
                eVar = null;
            }
            fVar.onProgress(j11, eVar);
        }
    }

    void canNonSubscriberPlay(boolean z10, int i11, int i12, mo.d dVar);

    void initPlayer();

    void onAliyunDecodeErrorChangeSoftwareDecoder(ao.e eVar);

    void onBufferedPosition(long j11, ao.e eVar);

    void onCompletion(ao.e eVar);

    void onFocusChange(boolean z10);

    void onIsPlayingChanged(boolean z10);

    void onLoadingBegin(ao.e eVar);

    void onLoadingEnd(ao.e eVar);

    void onLoadingProgress(int i11, float f11, ao.e eVar);

    void onLoopingStart();

    void onMediaItemTransition(String str);

    void onPlayError(PlayError playError, ao.e eVar);

    void onPlayerRelease(ao.e eVar);

    void onPlayerReset();

    void onPrepare(ao.e eVar);

    void onProgress(long j11, ao.e eVar);

    void onRenderFirstFrame();

    void onSetDataSource();

    void onTracksAudioBitrateChange(int i11);

    void onTracksChange(mo.c cVar);

    void onTracksVideoBitrateChange(int i11);

    void onVideoPause(ao.e eVar);

    void onVideoSizeChanged(int i11, int i12);

    void onVideoStart(ao.e eVar);

    void setOnSeekCompleteListener();
}
