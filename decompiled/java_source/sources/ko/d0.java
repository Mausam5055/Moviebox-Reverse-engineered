package ko;

import android.app.Application;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.view.SurfaceView;
import android.view.TextureView;
import com.blankj.utilcode.util.Utils;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.p007enum.ScaleMode;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class d0 implements com.transsion.player.orplayer.g, com.transsion.player.orplayer.f {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final a f66924m = new a(null);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final Thread.UncaughtExceptionHandler f66925n = new Thread.UncaughtExceptionHandler() { // from class: ko.b
        @Override // java.lang.Thread.UncaughtExceptionHandler
        public final void uncaughtException(Thread thread, Throwable th2) {
            d0.O(thread, th2);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HandlerThread f66926a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Handler f66927b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.transsion.player.orplayer.g f66928c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile long f66929d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile com.transsion.player.orplayer.f f66930e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Boolean f66931f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.transsion.player.orplayer.e f66932g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private CopyOnWriteArrayList f66933h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final AtomicBoolean f66934i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private volatile ao.e f66935j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f66936k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final AtomicBoolean f66937l;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final d0 a() {
            return new d0(null);
        }
    }

    private d0() {
        this.f66931f = Boolean.FALSE;
        this.f66933h = new CopyOnWriteArrayList();
        this.f66934i = new AtomicBoolean(false);
        l0 l0Var = l0.f66968a;
        if (l0Var.m()) {
            HandlerThread handlerThread = new HandlerThread("TnPlayerThread", Build.VERSION.SDK_INT >= 28 ? -10 : -16);
            handlerThread.start();
            handlerThread.setUncaughtExceptionHandler(f66925n);
            this.f66927b = new Handler(handlerThread.getLooper());
            this.f66926a = handlerThread;
        } else {
            this.f66926a = null;
            this.f66927b = new Handler(Looper.getMainLooper());
        }
        int iJ = l0Var.j();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("TnplayerManager Aliyunplayer maxBufferingTime:");
        sb2.append(iJ);
        Integer numValueOf = Integer.valueOf(iJ);
        Integer num = numValueOf.intValue() > 0 ? numValueOf : null;
        final int iIntValue = num != null ? num.intValue() : DefaultLoadControl.DEFAULT_MAX_BUFFER_MS;
        StringBuilder sb3 = new StringBuilder();
        sb3.append("TnplayerManager Aliyunplayer maxBufferingTime final:");
        sb3.append(iIntValue);
        V(new Function0() { // from class: ko.x
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return d0.E(this.f67021a, iIntValue);
            }
        });
        this.f66937l = new AtomicBoolean(true);
    }

    public /* synthetic */ d0(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit E(d0 d0Var, int i11) {
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        com.transsion.player.orplayer.g gVarA = new com.transsion.player.orplayer.g.a(applicationA).b(new bo.d(null, false, 0, i11, 0, 0, 0, 0, 0L, 0, 0, false, false, false, false, false, null, 126967, null)).a();
        gVarA.setLooping(false);
        gVarA.setAutoPlay(false);
        gVarA.setPlayerListener(d0Var);
        d0Var.f66928c = gVarA;
        d0Var.N("init player:" + gVarA);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit F(d0 d0Var, com.transsion.player.orplayer.f fVar) {
        d0Var.f66933h.add(fVar);
        d0Var.N("addPlayerListener:" + fVar);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit G(d0 d0Var, mo.d dVar, int i11) {
        com.transsion.player.orplayer.g gVarM = d0Var.M();
        if (gVarM != null) {
            gVarM.changeTrackSelection(dVar, i11);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit H(d0 d0Var) {
        com.transsion.player.orplayer.g gVarM = d0Var.M();
        if (gVarM != null) {
            gVarM.clearScreen();
        }
        d0Var.N("clearScreen  mediaSource:" + d0Var.f66935j);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit I(d0 d0Var) {
        com.transsion.player.orplayer.g gVarM = d0Var.M();
        if (gVarM != null) {
            gVarM.clearSurfaceOnly();
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K(d0 d0Var, CountDownLatch countDownLatch) {
        try {
            com.transsion.player.orplayer.g gVarM = d0Var.M();
            if (gVarM != null) {
                gVarM.clearSurfaceOnly();
            }
        } finally {
            countDownLatch.countDown();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit L(d0 d0Var, boolean z10) {
        com.transsion.player.orplayer.g gVarM = d0Var.M();
        if (gVarM != null) {
            gVarM.enableHardwareDecoder(z10);
        }
        return Unit.f67061a;
    }

    private final com.transsion.player.orplayer.g M() {
        return this.f66928c;
    }

    private final void N(String str) {
        oo.e eVar = oo.e.f71074a;
        int iHashCode = hashCode();
        com.transsion.player.orplayer.g gVar = this.f66928c;
        eVar.a("TnPlayer", "this@" + iHashCode + "  player@" + (gVar != null ? gVar.hashCode() : 0) + "  " + str, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O(Thread thread, Throwable th2) {
        oo.e.f71074a.c("TnPlayer", "uncaughtException:" + th2, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit P(d0 d0Var) {
        com.transsion.player.orplayer.g gVarM = d0Var.M();
        if (gVarM != null) {
            gVarM.pause();
        }
        d0Var.N("pause:" + d0Var.f66935j);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Q(d0 d0Var) {
        com.transsion.player.orplayer.g gVarM = d0Var.M();
        if (gVarM != null) {
            gVarM.play();
        }
        d0Var.N("play:" + d0Var.f66935j);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit R(d0 d0Var) {
        com.transsion.player.orplayer.g gVarM = d0Var.M();
        if (gVarM != null) {
            gVarM.prepare();
        }
        d0Var.N("prepare:" + d0Var.f66935j);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit S(d0 d0Var) {
        d0Var.f66936k = 0L;
        d0Var.f66937l.set(true);
        com.transsion.player.orplayer.g gVar = d0Var.f66928c;
        boolean z10 = l0.f66968a.o() && m0.f66984a.a(d0Var);
        if (z10) {
            d0Var.f66928c = null;
        }
        if (gVar != null) {
            gVar.clearSurfaceOnly();
        }
        if (gVar != null) {
            gVar.stop();
        }
        if (!z10) {
            if (gVar != null) {
                try {
                    gVar.reset();
                } finally {
                    d0Var.f66934i.set(false);
                }
            }
            if (gVar != null) {
                gVar.clearScreen();
            }
            d0Var.f66930e = null;
            d0Var.N("reset for reuse:" + d0Var.f66935j);
            return Unit.f67061a;
        }
        if (gVar != null) {
            gVar.release();
        }
        d0Var.f66930e = null;
        d0Var.f66927b.removeCallbacksAndMessages(null);
        HandlerThread handlerThread = d0Var.f66926a;
        if (handlerThread != null) {
            handlerThread.setUncaughtExceptionHandler(null);
        }
        HandlerThread handlerThread2 = d0Var.f66926a;
        if (handlerThread2 != null) {
            handlerThread2.quitSafely();
        }
        d0Var.N("release:" + d0Var.f66935j);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit T(d0 d0Var, com.transsion.player.orplayer.f fVar) {
        d0Var.f66933h.remove(fVar);
        d0Var.N("removePlayerListener:" + fVar);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit U(d0 d0Var) {
        d0Var.N("reset:" + d0Var.f66935j);
        d0Var.f66936k = 0L;
        d0Var.f66937l.set(true);
        com.transsion.player.orplayer.g gVarM = d0Var.M();
        if (gVarM != null) {
            gVarM.clearScreen();
        }
        com.transsion.player.orplayer.g gVarM2 = d0Var.M();
        if (gVarM2 != null) {
            gVarM2.reset();
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void W(Function0 function0) {
        function0.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit X(d0 d0Var, long j11) {
        com.transsion.player.orplayer.g gVarM = d0Var.M();
        if (gVarM != null) {
            gVarM.seekTo(j11);
        }
        d0Var.N(" seekTo:" + j11 + "  mediaSource:" + d0Var.f66935j);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Y(d0 d0Var, boolean z10) {
        com.transsion.player.orplayer.g gVarM = d0Var.M();
        if (gVarM != null) {
            gVarM.setAutoPlay(z10);
        }
        d0Var.N("setAutoPlay:" + z10 + "  mediaSource:" + d0Var.f66935j);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit a0(d0 d0Var, ao.e eVar) {
        d0Var.f66935j = eVar;
        d0Var.f66929d = 0L;
        d0Var.f66936k = 0L;
        d0Var.f66937l.set(true);
        com.transsion.player.orplayer.g gVarM = d0Var.M();
        if (gVarM != null) {
            gVarM.setDataSource(eVar);
        }
        d0Var.N("setDataSource:" + eVar);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit b0(d0 d0Var, boolean z10) {
        com.transsion.player.orplayer.g gVarM = d0Var.M();
        if (gVarM != null) {
            gVarM.setLooping(z10);
        }
        d0Var.N("setLooping:" + z10 + "  mediaSource:" + d0Var.f66935j);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit c0(d0 d0Var, boolean z10) {
        com.transsion.player.orplayer.g gVarM = d0Var.M();
        if (gVarM != null) {
            gVarM.setMute(z10);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit d0(d0 d0Var, bo.d dVar) {
        com.transsion.player.orplayer.g gVarM = d0Var.M();
        if (gVarM != null) {
            gVarM.setPlayerConfig(dVar);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit e0(d0 d0Var, com.transsion.player.orplayer.f fVar) {
        d0Var.f66930e = fVar;
        d0Var.N("setPlayerListener:" + fVar);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit f0(d0 d0Var, ScaleMode scaleMode) {
        com.transsion.player.orplayer.g gVarM = d0Var.M();
        if (gVarM != null) {
            gVarM.setScaleMode(scaleMode);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g0(d0 d0Var, float f11) {
        com.transsion.player.orplayer.g gVarM = d0Var.M();
        if (gVarM != null) {
            gVarM.setSpeed(f11);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h0(d0 d0Var, SurfaceView surfaceView) {
        com.transsion.player.orplayer.g gVarM = d0Var.M();
        if (gVarM != null) {
            gVarM.setSurfaceView(surfaceView);
        }
        d0Var.N("setSurfaceView:" + surfaceView);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit i0(d0 d0Var, TextureView textureView) {
        com.transsion.player.orplayer.g gVarM = d0Var.M();
        if (gVarM != null) {
            gVarM.setTextureView(textureView);
        }
        d0Var.N("setTextureView:" + textureView);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j0(d0 d0Var, float f11) {
        com.transsion.player.orplayer.g gVarM = d0Var.M();
        if (gVarM != null) {
            gVarM.setVolume(f11);
        }
        d0Var.N("setVolume:" + f11 + "  mediaSource:" + d0Var.f66935j);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k0(d0 d0Var) {
        com.transsion.player.orplayer.g gVarM = d0Var.M();
        if (gVarM != null) {
            gVarM.stop();
        }
        d0Var.N("stop:" + d0Var.f66935j);
        return Unit.f67061a;
    }

    public final void J() {
        if (Intrinsics.c(Thread.currentThread(), this.f66927b.getLooper().getThread())) {
            com.transsion.player.orplayer.g gVarM = M();
            if (gVarM != null) {
                gVarM.clearSurfaceOnly();
                return;
            }
            return;
        }
        HandlerThread handlerThread = this.f66926a;
        if (handlerThread == null || handlerThread.isAlive()) {
            final CountDownLatch countDownLatch = new CountDownLatch(1);
            if (!this.f66927b.post(new Runnable() { // from class: ko.e
                @Override // java.lang.Runnable
                public final void run() {
                    d0.K(this.f66938a, countDownLatch);
                }
            })) {
                oo.e.f71074a.c("TnPlayer", "clearSurfaceSynchronously post failed", true);
                return;
            }
            try {
                if (countDownLatch.await(500L, TimeUnit.MILLISECONDS)) {
                    return;
                }
                oo.e.f71074a.c("TnPlayer", "clearSurfaceSynchronously timeout", true);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                oo.e.f71074a.c("TnPlayer", "clearSurfaceSynchronously interrupted", true);
            }
        }
    }

    public final void V(final Function0 action) {
        Intrinsics.h(action, "action");
        if (Intrinsics.c(Thread.currentThread(), this.f66927b.getLooper().getThread())) {
            action.invoke();
            return;
        }
        HandlerThread handlerThread = this.f66926a;
        if (handlerThread == null || handlerThread.isAlive()) {
            this.f66927b.post(new Runnable() { // from class: ko.l
                @Override // java.lang.Runnable
                public final void run() {
                    d0.W(action);
                }
            });
        } else {
            N("runOnPlayerThread handlerThread.isAlive:false");
        }
    }

    public final void Z(com.transsion.player.orplayer.e listener) {
        Intrinsics.h(listener, "listener");
        this.f66932g = listener;
        com.transsion.player.orplayer.g gVar = this.f66928c;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("TnAliPlayer setBandwidthRedundancyListener :");
        sb2.append(gVar);
        com.transsion.player.orplayer.g gVar2 = this.f66928c;
        if (gVar2 instanceof com.transsion.player.orplayer.w) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("ORPlayerImpl setBandwidthRedundancyListener :");
            sb3.append(gVar2);
            this.f66931f = Boolean.TRUE;
            com.transsion.player.orplayer.g gVar3 = this.f66928c;
            Intrinsics.f(gVar3, "null cannot be cast to non-null type com.transsion.player.orplayer.ORPlayerImpl");
            ((com.transsion.player.orplayer.w) gVar3).f0(this.f66932g);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public boolean addDataSource(ao.e mediaSource) {
        Intrinsics.h(mediaSource, "mediaSource");
        setDataSource(mediaSource);
        return true;
    }

    @Override // com.transsion.player.orplayer.g
    public void addPlayerListener(final com.transsion.player.orplayer.f listener) {
        Intrinsics.h(listener, "listener");
        if (this.f66933h.contains(listener)) {
            return;
        }
        V(new Function0() { // from class: ko.h
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return d0.F(this.f66961a, listener);
            }
        });
    }

    @Override // com.transsion.player.orplayer.f
    public void canNonSubscriberPlay(boolean z10, int i11, int i12, mo.d dVar) {
        com.transsion.player.orplayer.f.a.a(this, z10, i11, i12, dVar);
    }

    @Override // com.transsion.player.orplayer.g
    public void changeTrackSelection(final mo.d mediaTrackGroup, final int i11) {
        Intrinsics.h(mediaTrackGroup, "mediaTrackGroup");
        V(new Function0() { // from class: ko.p
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return d0.G(this.f67006a, mediaTrackGroup, i11);
            }
        });
    }

    @Override // com.transsion.player.orplayer.g
    public void clearScreen() {
        V(new Function0() { // from class: ko.j
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return d0.H(this.f66964a);
            }
        });
    }

    @Override // com.transsion.player.orplayer.g
    public void clearSurfaceOnly() {
        V(new Function0() { // from class: ko.f
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return d0.I(this.f66940a);
            }
        });
    }

    @Override // com.transsion.player.orplayer.g
    public ao.e currentMediaSource() {
        return com.transsion.player.orplayer.g.b.f(this);
    }

    @Override // com.transsion.player.orplayer.g
    public void enableHardwareDecoder(final boolean z10) {
        V(new Function0() { // from class: ko.r
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return d0.L(this.f67010a, z10);
            }
        });
    }

    @Override // com.transsion.player.orplayer.g
    public Pair getBitrate() {
        Pair bitrate;
        com.transsion.player.orplayer.g gVarM = M();
        return (gVarM == null || (bitrate = gVarM.getBitrate()) == null) ? new Pair(0, 0) : bitrate;
    }

    @Override // com.transsion.player.orplayer.g
    public long getCurrentPosition() {
        com.transsion.player.orplayer.g gVarM = M();
        if (gVarM != null) {
            return gVarM.getCurrentPosition();
        }
        return 0L;
    }

    @Override // com.transsion.player.orplayer.g
    public mo.c getCurrentTracks() {
        com.transsion.player.orplayer.g gVarM = M();
        if (gVarM != null) {
            return gVarM.getCurrentTracks();
        }
        return null;
    }

    @Override // com.transsion.player.orplayer.g
    public mo.b getCurrentVideoFormat() {
        com.transsion.player.orplayer.g gVarM = M();
        if (gVarM != null) {
            return gVarM.getCurrentVideoFormat();
        }
        return null;
    }

    @Override // com.transsion.player.orplayer.g
    public Object getDownloadBitrate() {
        com.transsion.player.orplayer.g gVarM = M();
        if (gVarM != null) {
            return gVarM.getDownloadBitrate();
        }
        return null;
    }

    @Override // com.transsion.player.orplayer.g
    public long getDuration() {
        return this.f66929d;
    }

    @Override // com.transsion.player.orplayer.g
    public int getVideoHeight() {
        com.transsion.player.orplayer.g gVarM = M();
        return gVarM != null ? gVarM.getVideoHeight() : com.transsion.player.orplayer.g.b.k(this);
    }

    @Override // com.transsion.player.orplayer.g
    public int getVideoWidth() {
        com.transsion.player.orplayer.g gVarM = M();
        return gVarM != null ? gVarM.getVideoWidth() : com.transsion.player.orplayer.g.b.l(this);
    }

    @Override // com.transsion.player.orplayer.g
    public Float getVolume() {
        com.transsion.player.orplayer.g gVarM = M();
        if (gVarM != null) {
            return gVarM.getVolume();
        }
        return null;
    }

    @Override // com.transsion.player.orplayer.f
    public void initPlayer() {
        com.transsion.player.orplayer.f fVar = this.f66930e;
        if (fVar != null) {
            fVar.initPlayer();
        }
        Iterator it = this.f66933h.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).initPlayer();
        }
        N("initPlayer  mediaSource:" + this.f66935j);
    }

    @Override // com.transsion.player.orplayer.g
    public boolean isComplete() {
        com.transsion.player.orplayer.g gVarM = M();
        if (gVarM != null) {
            return gVarM.isComplete();
        }
        return false;
    }

    @Override // com.transsion.player.orplayer.g
    public boolean isLoading() {
        com.transsion.player.orplayer.g gVarM = M();
        return gVarM != null ? gVarM.isLoading() : com.transsion.player.orplayer.g.b.m(this);
    }

    @Override // com.transsion.player.orplayer.g
    public boolean isMute() {
        com.transsion.player.orplayer.g gVarM = M();
        if (gVarM != null) {
            return gVarM.isMute();
        }
        return false;
    }

    @Override // com.transsion.player.orplayer.g
    public boolean isPlaying() {
        com.transsion.player.orplayer.g gVarM = M();
        if (gVarM != null) {
            return gVarM.isPlaying();
        }
        return false;
    }

    @Override // com.transsion.player.orplayer.g
    public boolean isPrepared() {
        com.transsion.player.orplayer.g gVarM = M();
        return gVarM != null ? gVarM.isPrepared() : com.transsion.player.orplayer.g.b.n(this);
    }

    @Override // com.transsion.player.orplayer.f
    public void onAliyunDecodeErrorChangeSoftwareDecoder(ao.e eVar) {
        com.transsion.player.orplayer.f fVar = this.f66930e;
        if (fVar != null) {
            fVar.onAliyunDecodeErrorChangeSoftwareDecoder(eVar);
        }
        Iterator it = this.f66933h.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onAliyunDecodeErrorChangeSoftwareDecoder(eVar);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onBufferedPosition(long j11, ao.e eVar) {
        com.transsion.player.orplayer.f fVar = this.f66930e;
        if (fVar != null) {
            fVar.onBufferedPosition(j11, eVar);
        }
        Iterator it = this.f66933h.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onBufferedPosition(j11, eVar);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onCompletion(ao.e eVar) {
        com.transsion.player.orplayer.f fVar = this.f66930e;
        if (fVar != null) {
            fVar.onCompletion(eVar);
        }
        Iterator it = this.f66933h.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onCompletion(eVar);
        }
        N("onCompletion  mediaSource:" + eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onFocusChange(boolean z10) {
        com.transsion.player.orplayer.f fVar = this.f66930e;
        if (fVar != null) {
            fVar.onFocusChange(z10);
        }
        Iterator it = this.f66933h.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onFocusChange(z10);
        }
        N("onFocusChange mediaSource:" + this.f66935j);
    }

    @Override // com.transsion.player.orplayer.f
    public void onIsPlayingChanged(boolean z10) {
        com.transsion.player.orplayer.f fVar = this.f66930e;
        if (fVar != null) {
            fVar.onIsPlayingChanged(z10);
        }
        Iterator it = this.f66933h.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onIsPlayingChanged(z10);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingBegin(ao.e eVar) {
        com.transsion.player.orplayer.f fVar = this.f66930e;
        if (fVar != null) {
            fVar.onLoadingBegin(eVar);
        }
        Iterator it = this.f66933h.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onLoadingBegin(eVar);
        }
        N("onLoadingBegin  mediaSource:" + eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingEnd(ao.e eVar) {
        com.transsion.player.orplayer.f fVar = this.f66930e;
        if (fVar != null) {
            fVar.onLoadingEnd(eVar);
        }
        Iterator it = this.f66933h.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onLoadingEnd(eVar);
        }
        N("onLoadingEnd mediaSource:" + eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingProgress(int i11, float f11, ao.e eVar) {
        com.transsion.player.orplayer.f fVar = this.f66930e;
        if (fVar != null) {
            fVar.onLoadingProgress(i11, f11, eVar);
        }
        Iterator it = this.f66933h.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onLoadingProgress(i11, f11, eVar);
        }
        N("onLoadingProgress percent:" + i11 + " netSpeed:" + f11 + " mediaSource:" + eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoopingStart() {
        com.transsion.player.orplayer.f fVar = this.f66930e;
        if (fVar != null) {
            fVar.onLoopingStart();
        }
        Iterator it = this.f66933h.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onLoopingStart();
        }
        N("onLoopingStart  mediaSource:" + this.f66935j);
    }

    @Override // com.transsion.player.orplayer.f
    public void onMediaItemTransition(String str) {
        com.transsion.player.orplayer.f.a.p(this, str);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayError(PlayError errorInfo, ao.e eVar) {
        Intrinsics.h(errorInfo, "errorInfo");
        com.transsion.player.orplayer.f fVar = this.f66930e;
        if (fVar != null) {
            fVar.onPlayError(errorInfo, eVar);
        }
        Iterator it = this.f66933h.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onPlayError(errorInfo, eVar);
        }
        this.f66937l.set(true);
        N("onPlayError  errorInfo:" + errorInfo + " mediaSource:" + eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayerRelease(ao.e eVar) {
        com.transsion.player.orplayer.f fVar = this.f66930e;
        if (fVar != null) {
            fVar.onPlayerRelease(eVar);
        }
        Iterator it = this.f66933h.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onPlayerRelease(eVar);
        }
        N("onPlayerRelease  mediaSource:" + eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayerReset() {
        com.transsion.player.orplayer.f fVar = this.f66930e;
        if (fVar != null) {
            fVar.onPlayerReset();
        }
        Iterator it = this.f66933h.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onPlayerReset();
        }
        N("onPlayerReset mediaSource:" + this.f66935j);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPrepare(ao.e eVar) {
        com.transsion.player.orplayer.g gVarM = M();
        this.f66929d = gVarM != null ? gVarM.getDuration() : 0L;
        com.transsion.player.orplayer.f fVar = this.f66930e;
        if (fVar != null) {
            fVar.onPrepare(eVar);
        }
        Iterator it = this.f66933h.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onPrepare(eVar);
        }
        N("onPrepare  mediaSource:" + eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onProgress(long j11, ao.e eVar) {
        if (this.f66937l.get()) {
            com.transsion.player.orplayer.f fVar = this.f66930e;
            if (fVar != null) {
                fVar.onProgress(j11, eVar);
            }
            Iterator it = this.f66933h.iterator();
            while (it.hasNext()) {
                ((com.transsion.player.orplayer.f) it.next()).onProgress(j11, eVar);
            }
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onRenderFirstFrame() {
        N("onRenderFirstFrame  mediaSource:" + this.f66935j);
        com.transsion.player.orplayer.f fVar = this.f66930e;
        if (fVar != null) {
            fVar.onRenderFirstFrame();
        }
        Iterator it = this.f66933h.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onRenderFirstFrame();
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onSetDataSource() {
        com.transsion.player.orplayer.f fVar = this.f66930e;
        if (fVar != null) {
            fVar.onSetDataSource();
        }
        Iterator it = this.f66933h.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onSetDataSource();
        }
        N("onSetDataSource  mediaSource:" + this.f66935j);
    }

    @Override // com.transsion.player.orplayer.f
    public void onTracksAudioBitrateChange(int i11) {
        com.transsion.player.orplayer.f fVar = this.f66930e;
        if (fVar != null) {
            fVar.onTracksAudioBitrateChange(i11);
        }
        Iterator it = this.f66933h.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onTracksAudioBitrateChange(i11);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onTracksChange(mo.c cVar) {
        com.transsion.player.orplayer.f.a.D(this, cVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onTracksVideoBitrateChange(int i11) {
        com.transsion.player.orplayer.f fVar = this.f66930e;
        if (fVar != null) {
            fVar.onTracksVideoBitrateChange(i11);
        }
        Iterator it = this.f66933h.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onTracksVideoBitrateChange(i11);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoPause(ao.e eVar) {
        com.transsion.player.orplayer.f fVar = this.f66930e;
        if (fVar != null) {
            fVar.onVideoPause(eVar);
        }
        Iterator it = this.f66933h.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onVideoPause(eVar);
        }
        N("onVideoPause  mediaSource:" + eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoSizeChanged(int i11, int i12) {
        com.transsion.player.orplayer.f fVar = this.f66930e;
        if (fVar != null) {
            fVar.onVideoSizeChanged(i11, i12);
        }
        Iterator it = this.f66933h.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onVideoSizeChanged(i11, i12);
        }
        N("onVideoSizeChanged width:" + i11 + " height:" + i12 + " mediaSource:" + this.f66935j);
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoStart(ao.e eVar) {
        com.transsion.player.orplayer.f fVar = this.f66930e;
        if (fVar != null) {
            fVar.onVideoStart(eVar);
        }
        Iterator it = this.f66933h.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onVideoStart(eVar);
        }
        N("onVideoStart  mediaSource:" + eVar);
    }

    @Override // com.transsion.player.orplayer.g
    public void pause() {
        V(new Function0() { // from class: ko.z
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return d0.P(this.f67025a);
            }
        });
    }

    @Override // com.transsion.player.orplayer.g
    public void play() {
        V(new Function0() { // from class: ko.m
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return d0.Q(this.f66983a);
            }
        });
    }

    @Override // com.transsion.player.orplayer.g
    public void prepare() {
        V(new Function0() { // from class: ko.v
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return d0.R(this.f67018a);
            }
        });
    }

    @Override // com.transsion.player.orplayer.g
    public void release() {
        if (this.f66934i.compareAndSet(false, true)) {
            this.f66929d = 0L;
            V(new Function0() { // from class: ko.a0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return d0.S(this.f66915a);
                }
            });
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void release(String str) {
        com.transsion.player.orplayer.g.b.o(this, str);
    }

    @Override // com.transsion.player.orplayer.g
    public boolean removeDataSource(ao.e eVar) {
        return com.transsion.player.orplayer.g.b.p(this, eVar);
    }

    @Override // com.transsion.player.orplayer.g
    public void removePlayerListener(final com.transsion.player.orplayer.f listener) {
        Intrinsics.h(listener, "listener");
        V(new Function0() { // from class: ko.k
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return d0.T(this.f66965a, listener);
            }
        });
    }

    @Override // com.transsion.player.orplayer.g
    public boolean requestForce() {
        return com.transsion.player.orplayer.g.b.r(this);
    }

    @Override // com.transsion.player.orplayer.g
    public void reset() {
        V(new Function0() { // from class: ko.i
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return d0.U(this.f66963a);
            }
        });
    }

    @Override // com.transsion.player.orplayer.g
    public void seekTo(final long j11) {
        if (this.f66937l.compareAndSet(true, false)) {
            V(new Function0() { // from class: ko.b0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return d0.X(this.f66916a, j11);
                }
            });
            this.f66936k = 0L;
            return;
        }
        this.f66936k = j11;
        N("seekTo:" + j11 + "  waiting.... mediaSource:" + this.f66935j);
    }

    @Override // com.transsion.player.orplayer.g
    public void seekTo(String str, long j11) {
        com.transsion.player.orplayer.g.b.s(this, str, j11);
    }

    @Override // com.transsion.player.orplayer.g
    public void setAutoPlay(final boolean z10) {
        V(new Function0() { // from class: ko.s
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return d0.Y(this.f67012a, z10);
            }
        });
    }

    @Override // com.transsion.player.orplayer.g
    public void setDataSource(final ao.e mediaSource) {
        Intrinsics.h(mediaSource, "mediaSource");
        V(new Function0() { // from class: ko.u
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return d0.a0(this.f67016a, mediaSource);
            }
        });
    }

    @Override // com.transsion.player.orplayer.g
    public void setLooping(final boolean z10) {
        V(new Function0() { // from class: ko.c
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return d0.b0(this.f66918a, z10);
            }
        });
    }

    @Override // com.transsion.player.orplayer.g
    public void setMute(final boolean z10) {
        V(new Function0() { // from class: ko.o
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return d0.c0(this.f66989a, z10);
            }
        });
    }

    @Override // com.transsion.player.orplayer.f
    public void setOnSeekCompleteListener() {
        com.transsion.player.orplayer.f.a.K(this);
        this.f66937l.set(true);
        com.transsion.player.orplayer.f fVar = this.f66930e;
        if (fVar != null) {
            fVar.setOnSeekCompleteListener();
        }
        Iterator it = this.f66933h.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).setOnSeekCompleteListener();
        }
        N("setOnSeekCompleteListener nextSeekTo:" + this.f66936k + " mediaSource:" + this.f66935j);
        long j11 = this.f66936k;
        if (j11 > 0) {
            seekTo(j11);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void setPlayerConfig(final bo.d vodConfig) {
        Intrinsics.h(vodConfig, "vodConfig");
        V(new Function0() { // from class: ko.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return d0.d0(this.f66922a, vodConfig);
            }
        });
    }

    @Override // com.transsion.player.orplayer.g
    public void setPlayerListener(final com.transsion.player.orplayer.f listener) {
        Intrinsics.h(listener, "listener");
        V(new Function0() { // from class: ko.n
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return d0.e0(this.f66986a, listener);
            }
        });
    }

    @Override // com.transsion.player.orplayer.g
    public void setScaleMode(final ScaleMode scaleMode) {
        Intrinsics.h(scaleMode, "scaleMode");
        V(new Function0() { // from class: ko.w
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return d0.f0(this.f67019a, scaleMode);
            }
        });
    }

    @Override // com.transsion.player.orplayer.g
    public void setSpeed(final float f11) {
        V(new Function0() { // from class: ko.t
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return d0.g0(this.f67014a, f11);
            }
        });
    }

    @Override // com.transsion.player.orplayer.g
    public void setSurfaceView(final SurfaceView surfaceView) {
        V(new Function0() { // from class: ko.c0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return d0.h0(this.f66920a, surfaceView);
            }
        });
    }

    @Override // com.transsion.player.orplayer.g
    public void setTextureView(final TextureView textureView) {
        V(new Function0() { // from class: ko.y
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return d0.i0(this.f67023a, textureView);
            }
        });
    }

    @Override // com.transsion.player.orplayer.g
    public void setVipResolution(boolean z10, int i11) {
    }

    @Override // com.transsion.player.orplayer.g
    public void setVolume(final float f11) {
        V(new Function0() { // from class: ko.g
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return d0.j0(this.f66959a, f11);
            }
        });
    }

    @Override // com.transsion.player.orplayer.g
    public void stop() {
        V(new Function0() { // from class: ko.q
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return d0.k0(this.f67009a);
            }
        });
    }
}
