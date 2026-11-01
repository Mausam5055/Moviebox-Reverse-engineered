package com.cloud.hisavana.sdk;

import android.content.Context;
import android.net.Uri;
import com.cloud.hisavana.net.utils.StorageUtils;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.widget.video.MediaTextureView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.trackselection.TrackSelectionParameters;
import com.google.android.exoplayer2.upstream.cache.SimpleCache;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.File;
import java.util.List;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class t3 implements m4 {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static volatile com.google.android.exoplayer2.upstream.k.a f22956p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f22958a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f22959b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ExoPlayer f22960c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private q4 f22961d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AdsDTO f22962e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f22963f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f22964g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f22965h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f22966i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f22967j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f22968k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f22969l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f22970m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private MediaTextureView f22971n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final a f22955o = new a(null);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final Object f22957q = new Object();

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final com.google.android.exoplayer2.upstream.k.a a(Context context) {
            com.google.android.exoplayer2.upstream.k.a aVar;
            com.google.android.exoplayer2.upstream.k.a aVar2 = t3.f22956p;
            if (aVar2 != null) {
                return aVar2;
            }
            synchronized (t3.f22957q) {
                aVar = t3.f22956p;
                if (aVar == null) {
                    try {
                        File fileD = StorageUtils.d(context, true);
                        Intrinsics.g(fileD, "getExoCacheDirectory(...)");
                        aVar = new com.google.android.exoplayer2.upstream.cache.a.c().h(new SimpleCache(fileD, new com.google.android.exoplayer2.upstream.cache.q(104857600L), new f9.b(context))).i(new com.google.android.exoplayer2.upstream.r.a(context));
                        t3.f22956p = aVar;
                        Intrinsics.e(aVar);
                    } catch (Throwable th2) {
                        e4.b().w("ExoPlayerImpl", "disk cache init failed, fallback to no-cache: " + th2.getMessage());
                        aVar = new com.google.android.exoplayer2.upstream.r.a(context);
                        t3.f22956p = aVar;
                    }
                }
            }
            return aVar;
        }
    }

    public static final class b implements com.google.android.exoplayer2.o2.d {
        b() {
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onAvailableCommandsChanged(com.google.android.exoplayer2.o2.b bVar) {
            com.google.android.exoplayer2.q2.c(this, bVar);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onCues(ba.f fVar) {
            com.google.android.exoplayer2.q2.d(this, fVar);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onCues(List list) {
            com.google.android.exoplayer2.q2.e(this, list);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onDeviceInfoChanged(com.google.android.exoplayer2.r rVar) {
            com.google.android.exoplayer2.q2.f(this, rVar);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onDeviceVolumeChanged(int i11, boolean z10) {
            com.google.android.exoplayer2.q2.g(this, i11, z10);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onEvents(com.google.android.exoplayer2.o2 o2Var, com.google.android.exoplayer2.o2.c cVar) {
            com.google.android.exoplayer2.q2.h(this, o2Var, cVar);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onIsLoadingChanged(boolean z10) {
            com.google.android.exoplayer2.q2.i(this, z10);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public void onIsPlayingChanged(boolean z10) {
            e4.b().d(t3.this.f22958a, "onIsPlayingChanged isPlaying=" + z10);
            if (z10 && !t3.this.f22969l) {
                t3.this.f22969l = true;
                q4 q4Var = t3.this.f22961d;
                if (q4Var != null) {
                    q4Var.b();
                }
            }
            q4 q4Var2 = t3.this.f22961d;
            if (q4Var2 != null) {
                q4Var2.onIsPlayingChanged(z10);
            }
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onLoadingChanged(boolean z10) {
            com.google.android.exoplayer2.q2.k(this, z10);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onMediaItemTransition(com.google.android.exoplayer2.v1 v1Var, int i11) {
            com.google.android.exoplayer2.q2.m(this, v1Var, i11);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onMediaMetadataChanged(com.google.android.exoplayer2.a2 a2Var) {
            com.google.android.exoplayer2.q2.n(this, a2Var);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onMetadata(Metadata metadata) {
            com.google.android.exoplayer2.q2.o(this, metadata);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onPlayWhenReadyChanged(boolean z10, int i11) {
            com.google.android.exoplayer2.q2.p(this, z10, i11);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onPlaybackParametersChanged(com.google.android.exoplayer2.n2 n2Var) {
            com.google.android.exoplayer2.q2.q(this, n2Var);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public void onPlaybackStateChanged(int i11) {
            if (i11 == 2) {
                e4.b().d(t3.this.f22958a, "STATE_BUFFERING");
                return;
            }
            if (i11 == 3) {
                e4.b().d(t3.this.f22958a, "STATE_READY");
                q4 q4Var = t3.this.f22961d;
                if (q4Var != null) {
                    q4Var.e();
                }
                t3.this.p();
                return;
            }
            if (i11 != 4) {
                return;
            }
            e4.b().d(t3.this.f22958a, "STATE_ENDED");
            ExoPlayer exoPlayer = t3.this.f22960c;
            if (exoPlayer == null) {
                return;
            }
            q4 q4Var2 = t3.this.f22961d;
            if (q4Var2 != null) {
                q4Var2.c(exoPlayer.getDuration(), exoPlayer.getDuration(), 100);
            }
            q4 q4Var3 = t3.this.f22961d;
            if (q4Var3 != null) {
                q4Var3.onComplete();
            }
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onPlaybackSuppressionReasonChanged(int i11) {
            com.google.android.exoplayer2.q2.s(this, i11);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public void onPlayerError(PlaybackException error) {
            Intrinsics.h(error, "error");
            e4.b().w(t3.this.f22958a, "errorCode=" + error.errorCode + " msg=" + error.getMessage());
            C0993p c0993pF = t3.this.f(error);
            q4 q4Var = t3.this.f22961d;
            if (q4Var != null) {
                q4Var.a(c0993pF);
            }
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onPlayerErrorChanged(PlaybackException playbackException) {
            com.google.android.exoplayer2.q2.u(this, playbackException);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onPlayerStateChanged(boolean z10, int i11) {
            com.google.android.exoplayer2.q2.v(this, z10, i11);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onPositionDiscontinuity(int i11) {
            com.google.android.exoplayer2.q2.x(this, i11);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onPositionDiscontinuity(com.google.android.exoplayer2.o2.e eVar, com.google.android.exoplayer2.o2.e eVar2, int i11) {
            com.google.android.exoplayer2.q2.y(this, eVar, eVar2, i11);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onRenderedFirstFrame() {
            com.google.android.exoplayer2.q2.z(this);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onRepeatModeChanged(int i11) {
            com.google.android.exoplayer2.q2.A(this, i11);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onSeekProcessed() {
            com.google.android.exoplayer2.q2.D(this);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onShuffleModeEnabledChanged(boolean z10) {
            com.google.android.exoplayer2.q2.E(this, z10);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onSkipSilenceEnabledChanged(boolean z10) {
            com.google.android.exoplayer2.q2.F(this, z10);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onSurfaceSizeChanged(int i11, int i12) {
            com.google.android.exoplayer2.q2.G(this, i11, i12);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onTimelineChanged(com.google.android.exoplayer2.k3 k3Var, int i11) {
            com.google.android.exoplayer2.q2.H(this, k3Var, i11);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onTrackSelectionParametersChanged(TrackSelectionParameters trackSelectionParameters) {
            com.google.android.exoplayer2.q2.I(this, trackSelectionParameters);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onTracksChanged(com.google.android.exoplayer2.p3 p3Var) {
            com.google.android.exoplayer2.q2.J(this, p3Var);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public void onVideoSizeChanged(com.google.android.exoplayer2.video.y videoSize) {
            Intrinsics.h(videoSize, "videoSize");
            t3.this.p();
        }

        @Override // com.google.android.exoplayer2.o2.d
        public void onVolumeChanged(float f11) {
            q4 q4Var = t3.this.f22961d;
            if (q4Var != null) {
                q4Var.onVolumeChanged(f11);
            }
        }
    }

    public t3(Context context) {
        Intrinsics.h(context, "context");
        this.f22958a = "ExoPlayerImpl";
        Context applicationContext = context.getApplicationContext();
        Intrinsics.g(applicationContext, "getApplicationContext(...)");
        this.f22959b = applicationContext;
        this.f22966i = true;
        this.f22967j = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final C0993p f(PlaybackException playbackException) {
        Pair pair;
        int i11 = playbackException.errorCode;
        if (i11 >= 2000 && i11 <= 2008) {
            pair = new Pair(C0993p.b.IO, Integer.valueOf(TaErrorCode.CODE_SHOW_VIDEO_PLAYER_IO_ERROR));
        } else if (i11 < 4001 || i11 > 4003) {
            pair = (i11 < 6001 || i11 > 6006) ? new Pair(C0993p.b.UNKNOWN, Integer.valueOf(TaErrorCode.CODE_SHOW_VIDEO_PLAYER_UNKNOWN_ERROR)) : new Pair(C0993p.b.DRM, Integer.valueOf(TaErrorCode.CODE_SHOW_VIDEO_PLAYER_DRM_ERROR));
        } else {
            pair = new Pair(C0993p.b.DECODING, Integer.valueOf(TaErrorCode.CODE_SHOW_VIDEO_PLAYER_DECODE_ERROR));
        }
        C0993p.b bVar = (C0993p.b) pair.component1();
        int iIntValue = ((Number) pair.component2()).intValue();
        String message = playbackException.getMessage();
        if (message == null) {
            message = "unknown playback error";
        }
        return new C0993p(iIntValue, message, bVar, playbackException);
    }

    private final void o() {
        ExoPlayer exoPlayer = this.f22960c;
        if (exoPlayer != null) {
            exoPlayer.release();
        }
        this.f22960c = null;
        this.f22969l = false;
        try {
            ExoPlayer exoPlayerF = new ExoPlayer.b(this.f22959b).l(new com.google.android.exoplayer2.p(this.f22959b).j(true)).f();
            Intrinsics.g(exoPlayerF, "build(...)");
            MediaTextureView mediaTextureView = this.f22971n;
            if (mediaTextureView != null) {
                exoPlayerF.setVideoTextureView(mediaTextureView);
            }
            exoPlayerF.C(new b());
            this.f22960c = exoPlayerF;
            String str = this.f22963f;
            if (str == null) {
                e4.b().e(this.f22958a, "videoPath is null, skip initPlayer");
                return;
            }
            com.google.android.exoplayer2.v1 v1VarD = com.google.android.exoplayer2.v1.d(Uri.parse(str));
            Intrinsics.g(v1VarD, "fromUri(...)");
            if (this.f22965h) {
                com.google.android.exoplayer2.source.x xVarA = new com.google.android.exoplayer2.source.x.b(f22955o.a(this.f22959b)).a(v1VarD);
                Intrinsics.g(xVarA, "createMediaSource(...)");
                exoPlayerF.a(xVarA);
            } else {
                exoPlayerF.B(v1VarD);
            }
            exoPlayerF.setPlayWhenReady(this.f22966i);
            if (this.f22964g) {
                exoPlayerF.setVolume(0.0f);
            }
            exoPlayerF.prepare();
        } catch (Throwable th2) {
            e4.b().e(this.f22958a, "initPlayer failed: " + th2.getMessage());
            this.f22960c = null;
            q4 q4Var = this.f22961d;
            if (q4Var != null) {
                String message = th2.getMessage();
                if (message == null) {
                    message = "player init failed";
                }
                q4Var.a(new C0993p(TaErrorCode.CODE_SHOW_VIDEO_PLAYER_UNKNOWN_ERROR, message, C0993p.b.UNKNOWN, th2));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p() {
        ExoPlayer exoPlayer;
        if (this.f22970m || (exoPlayer = this.f22960c) == null) {
            return;
        }
        com.google.android.exoplayer2.video.y yVarP = exoPlayer.p();
        Intrinsics.g(yVarP, "getVideoSize(...)");
        int i11 = yVarP.f28009a;
        int i12 = yVarP.f28010b;
        if (i11 > 0 && i12 > 0) {
            AdsDTO adsDTO = this.f22962e;
            if (adsDTO != null) {
                adsDTO.setMaterialWith(i11);
            }
            AdsDTO adsDTO2 = this.f22962e;
            if (adsDTO2 != null) {
                adsDTO2.setMaterialHeight(i12);
            }
        }
        q4 q4Var = this.f22961d;
        if (q4Var != null) {
            q4Var.onVideoSizeChanged(i11, i12);
        }
    }

    @Override // com.cloud.hisavana.sdk.m4
    public void a() {
        ExoPlayer exoPlayer = this.f22960c;
        if (exoPlayer == null) {
            return;
        }
        if (exoPlayer.getVolume() == 0.0f) {
            exoPlayer.setVolume(1.0f);
            this.f22964g = false;
            q4 q4Var = this.f22961d;
            if (q4Var != null) {
                q4Var.onVolumeChanged(1.0f);
                return;
            }
            return;
        }
        exoPlayer.setVolume(0.0f);
        this.f22964g = true;
        q4 q4Var2 = this.f22961d;
        if (q4Var2 != null) {
            q4Var2.onVolumeChanged(0.0f);
        }
    }

    @Override // com.cloud.hisavana.sdk.m4
    public void a(MediaTextureView mediaTextureView) {
        this.f22971n = mediaTextureView;
        ExoPlayer exoPlayer = this.f22960c;
        if (exoPlayer != null) {
            exoPlayer.setVideoTextureView(mediaTextureView);
        }
    }

    @Override // com.cloud.hisavana.sdk.m4
    public void a(boolean z10) {
        this.f22968k = z10;
    }

    @Override // com.cloud.hisavana.sdk.m4
    public void b() {
        ExoPlayer exoPlayer = this.f22960c;
        if (exoPlayer != null) {
            exoPlayer.pause();
        }
    }

    @Override // com.cloud.hisavana.sdk.m4
    public void b(AdsDTO adsDTO, String path, boolean z10, boolean z11) {
        Intrinsics.h(path, "path");
        e4.b().d(this.f22958a, "setMediaData path=" + path + " enableDiskCache=" + z11);
        this.f22962e = adsDTO;
        this.f22963f = path;
        this.f22964g = z10;
        this.f22965h = z11;
        this.f22969l = false;
        this.f22970m = false;
        if (adsDTO != null && adsDTO.getMaterialWith() > 0 && adsDTO.getMaterialHeight() > 0) {
            this.f22970m = true;
        }
        o();
    }

    @Override // com.cloud.hisavana.sdk.m4
    public void c() {
        ExoPlayer exoPlayer = this.f22960c;
        if (exoPlayer == null) {
            return;
        }
        if (exoPlayer.getPlaybackState() == 1) {
            exoPlayer.prepare();
        } else {
            exoPlayer.seekTo(exoPlayer.t(), C.TIME_UNSET);
        }
        exoPlayer.play();
    }

    @Override // com.cloud.hisavana.sdk.m4
    public void c(q4 q4Var) {
        this.f22961d = q4Var;
    }

    @Override // com.cloud.hisavana.sdk.m4
    public void d() {
        ExoPlayer exoPlayer = this.f22960c;
        if (exoPlayer == null) {
            return;
        }
        int playbackState = exoPlayer.getPlaybackState();
        if (playbackState == 1 || playbackState == 4 || !exoPlayer.getPlayWhenReady()) {
            q4 q4Var = this.f22961d;
            if (q4Var != null) {
                q4Var.d(true);
            }
            e();
            return;
        }
        q4 q4Var2 = this.f22961d;
        if (q4Var2 != null) {
            q4Var2.d(false);
        }
        b();
    }

    @Override // com.cloud.hisavana.sdk.m4
    public void e() {
        ExoPlayer exoPlayer = this.f22960c;
        if (exoPlayer == null) {
            return;
        }
        int playbackState = exoPlayer.getPlaybackState();
        if (playbackState == 1) {
            exoPlayer.prepare();
        } else if (playbackState == 4) {
            exoPlayer.seekTo(exoPlayer.t(), C.TIME_UNSET);
        }
        exoPlayer.play();
    }

    @Override // com.cloud.hisavana.sdk.m4
    public long getCurrentPosition() {
        ExoPlayer exoPlayer = this.f22960c;
        if (exoPlayer != null) {
            return exoPlayer.getCurrentPosition();
        }
        return 0L;
    }

    @Override // com.cloud.hisavana.sdk.m4
    public long getDuration() {
        ExoPlayer exoPlayer = this.f22960c;
        if (exoPlayer != null) {
            return exoPlayer.getDuration();
        }
        return 0L;
    }

    @Override // com.cloud.hisavana.sdk.m4
    public boolean getPlayWhenReady() {
        return this.f22966i;
    }

    @Override // com.cloud.hisavana.sdk.m4
    public boolean isPlaying() {
        ExoPlayer exoPlayer = this.f22960c;
        if (exoPlayer != null) {
            return exoPlayer.isPlaying();
        }
        return false;
    }

    @Override // com.cloud.hisavana.sdk.m4
    public void pause() {
        ExoPlayer exoPlayer = this.f22960c;
        if (exoPlayer != null) {
            exoPlayer.pause();
        }
    }

    @Override // com.cloud.hisavana.sdk.m4
    public void play() {
        ExoPlayer exoPlayer = this.f22960c;
        if (exoPlayer != null) {
            exoPlayer.play();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.cloud.hisavana.sdk.m4
    public void release() {
        e4.b().d(this.f22958a, "release player=" + System.identityHashCode(this.f22960c));
        try {
            ExoPlayer exoPlayer = this.f22960c;
            if (exoPlayer != null) {
                if (exoPlayer.isPlaying()) {
                    exoPlayer.pause();
                }
                exoPlayer.stop();
                exoPlayer.release();
                exoPlayer.clearVideoSurface();
            }
            this.f22960c = null;
            this.f22961d = null;
        } catch (Throwable th2) {
            try {
                e4.b().w(this.f22958a, "release error (ignored): " + th2.getMessage());
            } finally {
                this.f22960c = null;
                this.f22961d = null;
            }
        }
    }

    @Override // com.cloud.hisavana.sdk.m4
    public void seekTo(long j11) {
        ExoPlayer exoPlayer = this.f22960c;
        if (exoPlayer != null) {
            exoPlayer.seekTo(j11);
        }
    }

    @Override // com.cloud.hisavana.sdk.m4
    public void setPlayWhenReady(boolean z10) {
        this.f22966i = z10;
        ExoPlayer exoPlayer = this.f22960c;
        if (exoPlayer != null) {
            exoPlayer.setPlayWhenReady(z10);
        }
    }
}
