package ko;

import android.app.Application;
import android.view.SurfaceView;
import android.view.TextureView;
import com.blankj.utilcode.util.Utils;
import com.transsion.player.mediasession.MediaItem;
import com.transsion.player.p007enum.ScaleMode;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class f0 implements com.transsion.player.orplayer.g {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final a f66941r = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile com.transsion.player.orplayer.g f66942a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile ao.e f66943b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private SurfaceView f66944c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextureView f66945d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.transsion.player.orplayer.f f66946e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Float f66948g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f66949h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f66950i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private bo.d f66951j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f66952k;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f66956o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f66957p;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private CopyOnWriteArrayList f66947f = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f66953l = true;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f66954m = 1.0f;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private ScaleMode f66955n = ScaleMode.SCALE_ASPECT_FIT;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final ko.a f66958q = new ko.a();

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private final void c() {
        ao.e eVar = this.f66943b;
        if (eVar != null) {
            g();
            int iJ = l0.f66968a.j();
            androidx.media3.common.util.u.b("VideoConfig", "Tnplayer new player playerBufferingTime:" + iJ);
            if (!i(eVar)) {
                if (this.f66942a instanceof d0) {
                    return;
                }
                d();
                com.transsion.player.orplayer.g gVar = this.f66942a;
                if (gVar != null) {
                    gVar.release();
                }
                m0 m0Var = m0.f66984a;
                Application applicationA = Utils.a();
                Intrinsics.g(applicationA, "getApp(...)");
                d0 d0VarB = m0Var.b(applicationA);
                f(d0VarB);
                this.f66942a = d0VarB;
                return;
            }
            if (this.f66942a instanceof co.h) {
                return;
            }
            d();
            com.transsion.player.orplayer.g gVar2 = this.f66942a;
            if (gVar2 != null) {
                gVar2.release();
            }
            co.m mVar = new co.m(314572800L, Integer.valueOf(iJ));
            if (iJ > 0) {
                m0 m0Var2 = m0.f66984a;
                Application applicationA2 = Utils.a();
                Intrinsics.g(applicationA2, "getApp(...)");
                co.h hVarD = m0Var2.d(applicationA2, mVar);
                f(hVarD);
                this.f66942a = hVarD;
                return;
            }
            m0 m0Var3 = m0.f66984a;
            Application applicationA3 = Utils.a();
            Intrinsics.g(applicationA3, "getApp(...)");
            co.h hVarC = m0Var3.c(applicationA3);
            f(hVarC);
            this.f66942a = hVarC;
        }
    }

    private final void d() {
        com.transsion.player.orplayer.g gVar = this.f66942a;
        d0 d0Var = gVar instanceof d0 ? (d0) gVar : null;
        if (d0Var != null) {
            d0Var.J();
        }
    }

    private final int e() {
        return l0.f66968a.r();
    }

    private final void f(com.transsion.player.orplayer.g gVar) {
        if (gVar == null) {
            return;
        }
        gVar.setMute(this.f66952k);
        bo.d dVar = this.f66951j;
        if (dVar != null) {
            gVar.setPlayerConfig(dVar);
        }
        Float f11 = this.f66948g;
        if (f11 != null) {
            gVar.setVolume(f11.floatValue());
        }
        gVar.setLooping(this.f66950i);
        gVar.setAutoPlay(this.f66949h);
        gVar.setSpeed(this.f66954m);
        gVar.enableHardwareDecoder(this.f66953l);
        SurfaceView surfaceView = this.f66944c;
        if (surfaceView != null) {
            gVar.setSurfaceView(surfaceView);
        }
        TextureView textureView = this.f66945d;
        if (textureView != null) {
            gVar.setTextureView(textureView);
        }
        com.transsion.player.orplayer.f fVar = this.f66946e;
        if (fVar != null) {
            gVar.setPlayerListener(fVar);
        }
        for (com.transsion.player.orplayer.f fVar2 : this.f66947f) {
            Intrinsics.e(fVar2);
            gVar.addPlayerListener(fVar2);
        }
        gVar.setScaleMode(this.f66955n);
    }

    private final void g() {
        this.f66956o = false;
        this.f66957p = 0L;
    }

    private final boolean i(ao.e eVar) {
        return e() == 1 || eVar.n() || eVar.c();
    }

    @Override // com.transsion.player.orplayer.g
    public boolean addDataSource(ao.e eVar) {
        return com.transsion.player.orplayer.g.b.a(this, eVar);
    }

    @Override // com.transsion.player.orplayer.g
    public void addPlayerListener(com.transsion.player.orplayer.f listener) {
        Intrinsics.h(listener, "listener");
        this.f66958q.a(listener);
    }

    @Override // com.transsion.player.orplayer.g
    public void changeTrackSelection(mo.d mediaTrackGroup, int i11) {
        Intrinsics.h(mediaTrackGroup, "mediaTrackGroup");
        com.transsion.player.orplayer.g gVar = this.f66942a;
        if (gVar != null) {
            gVar.changeTrackSelection(mediaTrackGroup, i11);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void clearScreen() {
        com.transsion.player.orplayer.g gVar = this.f66942a;
        if (gVar != null) {
            gVar.clearScreen();
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void clearSurfaceOnly() {
        com.transsion.player.orplayer.g gVar = this.f66942a;
        if (gVar != null) {
            gVar.clearSurfaceOnly();
        }
        this.f66944c = null;
        this.f66945d = null;
    }

    @Override // com.transsion.player.orplayer.g
    public ao.e currentMediaSource() {
        return this.f66943b;
    }

    @Override // com.transsion.player.orplayer.g
    public void enableHardwareDecoder(boolean z10) {
        this.f66953l = z10;
        com.transsion.player.orplayer.g gVar = this.f66942a;
        if (gVar != null) {
            gVar.enableHardwareDecoder(z10);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public Pair getBitrate() {
        Pair bitrate;
        com.transsion.player.orplayer.g gVar = this.f66942a;
        return (gVar == null || (bitrate = gVar.getBitrate()) == null) ? new Pair(0, 0) : bitrate;
    }

    @Override // com.transsion.player.orplayer.g
    public long getCurrentPosition() {
        com.transsion.player.orplayer.g gVar = this.f66942a;
        if (gVar != null) {
            return gVar.getCurrentPosition();
        }
        return 0L;
    }

    @Override // com.transsion.player.orplayer.g
    public mo.c getCurrentTracks() {
        com.transsion.player.orplayer.g gVar = this.f66942a;
        if (gVar != null) {
            return gVar.getCurrentTracks();
        }
        return null;
    }

    @Override // com.transsion.player.orplayer.g
    public mo.b getCurrentVideoFormat() {
        com.transsion.player.orplayer.g gVar = this.f66942a;
        if (gVar != null) {
            return gVar.getCurrentVideoFormat();
        }
        return null;
    }

    @Override // com.transsion.player.orplayer.g
    public Object getDownloadBitrate() {
        com.transsion.player.orplayer.g gVar = this.f66942a;
        if (gVar != null) {
            return gVar.getDownloadBitrate();
        }
        return null;
    }

    @Override // com.transsion.player.orplayer.g
    public long getDuration() {
        com.transsion.player.orplayer.g gVar = this.f66942a;
        if (gVar != null) {
            return gVar.getDuration();
        }
        return 0L;
    }

    @Override // com.transsion.player.orplayer.g
    public int getVideoHeight() {
        com.transsion.player.orplayer.g gVar = this.f66942a;
        return gVar != null ? gVar.getVideoHeight() : com.transsion.player.orplayer.g.b.k(this);
    }

    @Override // com.transsion.player.orplayer.g
    public int getVideoWidth() {
        com.transsion.player.orplayer.g gVar = this.f66942a;
        return gVar != null ? gVar.getVideoWidth() : com.transsion.player.orplayer.g.b.l(this);
    }

    @Override // com.transsion.player.orplayer.g
    public Float getVolume() {
        com.transsion.player.orplayer.g gVar = this.f66942a;
        if (gVar != null) {
            return gVar.getVolume();
        }
        return null;
    }

    public final void h(com.transsion.player.orplayer.e listener) {
        Intrinsics.h(listener, "listener");
        androidx.media3.common.util.u.b("onBandwidthRedundancy", "Tnplayer init onBandwidthRedundancyRate");
        androidx.media3.common.util.u.b("onBandwidthRedundancy", "mOrPlayer setBandwidthRedundancyListener :" + this.f66942a);
        if (this.f66942a instanceof d0) {
            androidx.media3.common.util.u.b("onBandwidthRedundancy", "Tnplayer init TnAliPlayer");
            com.transsion.player.orplayer.g gVar = this.f66942a;
            Intrinsics.f(gVar, "null cannot be cast to non-null type com.transsion.player.orplayer.global.TnAliPlayer");
            ((d0) gVar).Z(listener);
        }
        if (this.f66942a instanceof co.h) {
            androidx.media3.common.util.u.b("onBandwidthRedundancy", "Tnplayer init ORExoPlayer");
            com.transsion.player.orplayer.g gVar2 = this.f66942a;
            Intrinsics.f(gVar2, "null cannot be cast to non-null type com.transsion.player.exo.ORExoPlayer");
            ((co.h) gVar2).l0(listener);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public boolean isComplete() {
        com.transsion.player.orplayer.g gVar = this.f66942a;
        if (gVar != null) {
            return gVar.isComplete();
        }
        return false;
    }

    @Override // com.transsion.player.orplayer.g
    public boolean isLoading() {
        com.transsion.player.orplayer.g gVar = this.f66942a;
        return gVar != null ? gVar.isLoading() : com.transsion.player.orplayer.g.b.m(this);
    }

    @Override // com.transsion.player.orplayer.g
    public boolean isMute() {
        com.transsion.player.orplayer.g gVar = this.f66942a;
        if (gVar != null) {
            return gVar.isMute();
        }
        return false;
    }

    @Override // com.transsion.player.orplayer.g
    public boolean isPlaying() {
        com.transsion.player.orplayer.g gVar = this.f66942a;
        if (gVar != null) {
            return gVar.isPlaying();
        }
        return false;
    }

    @Override // com.transsion.player.orplayer.g
    public boolean isPrepared() {
        com.transsion.player.orplayer.g gVar = this.f66942a;
        return gVar != null ? gVar.isPrepared() : com.transsion.player.orplayer.g.b.n(this);
    }

    @Override // com.transsion.player.orplayer.g
    public void pause() {
        l0.f66968a.u(this, this.f66943b);
        com.transsion.player.orplayer.g gVar = this.f66942a;
        if (gVar != null) {
            gVar.pause();
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void play() {
        l0 l0Var = l0.f66968a;
        l0Var.z(this, MediaItem.MUSIC_FLOAT_STATE_PLAY);
        l0Var.v(this, this.f66943b);
        com.transsion.player.orplayer.g gVar = this.f66942a;
        if (gVar != null) {
            gVar.play();
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void prepare() {
        com.transsion.player.orplayer.g gVar = this.f66942a;
        if (gVar != null) {
            gVar.prepare();
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void release() {
        g();
        com.transsion.player.orplayer.g gVar = this.f66942a;
        if (gVar != null) {
            gVar.release();
        }
        this.f66942a = null;
        this.f66946e = null;
        this.f66944c = null;
        this.f66945d = null;
        l0.f66968a.x(this);
    }

    @Override // com.transsion.player.orplayer.g
    public void release(String str) {
        release();
    }

    @Override // com.transsion.player.orplayer.g
    public boolean removeDataSource(ao.e eVar) {
        return com.transsion.player.orplayer.g.b.p(this, eVar);
    }

    @Override // com.transsion.player.orplayer.g
    public void removePlayerListener(com.transsion.player.orplayer.f listener) {
        Intrinsics.h(listener, "listener");
        this.f66958q.d(listener);
    }

    @Override // com.transsion.player.orplayer.g
    public boolean requestForce() {
        return com.transsion.player.orplayer.g.b.r(this);
    }

    @Override // com.transsion.player.orplayer.g
    public void reset() {
        g();
        com.transsion.player.orplayer.g gVar = this.f66942a;
        if (gVar != null) {
            gVar.reset();
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void seekTo(long j11) {
        MediaItem mediaItemI;
        com.transsion.player.orplayer.g gVar = this.f66942a;
        if (gVar != null) {
            gVar.seekTo(j11);
        }
        ao.e eVar = this.f66943b;
        if (eVar != null && (mediaItemI = eVar.i()) != null) {
            mediaItemI.setPosition(Long.valueOf(j11));
        }
        l0.f66968a.B(this, this.f66943b);
    }

    @Override // com.transsion.player.orplayer.g
    public void seekTo(String uuid, long j11) {
        Intrinsics.h(uuid, "uuid");
        com.transsion.player.orplayer.g gVar = this.f66942a;
        if (gVar != null) {
            gVar.seekTo(uuid, j11);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void setAutoPlay(boolean z10) {
        this.f66949h = z10;
        com.transsion.player.orplayer.g gVar = this.f66942a;
        if (gVar != null) {
            gVar.setAutoPlay(z10);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void setDataSource(ao.e mediaSource) {
        Intrinsics.h(mediaSource, "mediaSource");
        l0.f66968a.z(this, "setDataSource");
        this.f66943b = mediaSource;
        c();
        com.transsion.player.orplayer.g gVar = this.f66942a;
        if (gVar != null) {
            gVar.addPlayerListener(this.f66958q);
        }
        com.transsion.player.orplayer.g gVar2 = this.f66942a;
        if (gVar2 != null) {
            gVar2.setDataSource(mediaSource);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void setLooping(boolean z10) {
        this.f66950i = z10;
        com.transsion.player.orplayer.g gVar = this.f66942a;
        if (gVar != null) {
            gVar.setLooping(z10);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void setMute(boolean z10) {
        this.f66952k = z10;
        com.transsion.player.orplayer.g gVar = this.f66942a;
        if (gVar != null) {
            gVar.setMute(z10);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void setPlayerConfig(bo.d vodConfig) {
        Intrinsics.h(vodConfig, "vodConfig");
        this.f66951j = vodConfig;
        com.transsion.player.orplayer.g gVar = this.f66942a;
        if (gVar != null) {
            gVar.setPlayerConfig(vodConfig);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void setPlayerListener(com.transsion.player.orplayer.f listener) {
        Intrinsics.h(listener, "listener");
        this.f66946e = listener;
        com.transsion.player.orplayer.g gVar = this.f66942a;
        if (gVar != null) {
            gVar.setPlayerListener(listener);
        }
        androidx.media3.common.util.u.b("onBandwidthRedundancy", "mOrPlayer setPlayerListener :" + this.f66942a);
    }

    @Override // com.transsion.player.orplayer.g
    public void setScaleMode(ScaleMode scaleMode) {
        Intrinsics.h(scaleMode, "scaleMode");
        this.f66955n = scaleMode;
        com.transsion.player.orplayer.g gVar = this.f66942a;
        if (gVar != null) {
            gVar.setScaleMode(scaleMode);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void setSpeed(float f11) {
        this.f66954m = f11;
        com.transsion.player.orplayer.g gVar = this.f66942a;
        if (gVar != null) {
            gVar.setSpeed(f11);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void setSurfaceView(SurfaceView surfaceView) {
        this.f66945d = null;
        this.f66944c = surfaceView;
        com.transsion.player.orplayer.g gVar = this.f66942a;
        if (gVar != null) {
            gVar.setSurfaceView(surfaceView);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void setTextureView(TextureView textureView) {
        this.f66944c = null;
        this.f66945d = textureView;
        com.transsion.player.orplayer.g gVar = this.f66942a;
        if (gVar != null) {
            gVar.setTextureView(textureView);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void setVipResolution(boolean z10, int i11) {
        com.transsion.player.orplayer.g gVar = this.f66942a;
        if (gVar != null) {
            gVar.setVipResolution(z10, i11);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void setVolume(float f11) {
        this.f66948g = Float.valueOf(f11);
        com.transsion.player.orplayer.g gVar = this.f66942a;
        if (gVar != null) {
            gVar.setVolume(f11);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void stop() {
        g();
        com.transsion.player.orplayer.g gVar = this.f66942a;
        if (gVar != null) {
            gVar.stop();
        }
    }
}
