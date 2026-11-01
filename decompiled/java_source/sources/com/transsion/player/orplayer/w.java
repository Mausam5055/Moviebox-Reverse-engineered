package com.transsion.player.orplayer;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.net.TrafficStats;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.SystemClock;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import com.aliyun.player.AliPlayer;
import com.aliyun.player.AliPlayerFactory;
import com.aliyun.player.AliPlayerGlobalSettings;
import com.aliyun.player.IPlayer;
import com.aliyun.player.bean.ErrorCode;
import com.aliyun.player.bean.ErrorInfo;
import com.aliyun.player.bean.InfoBean;
import com.aliyun.player.bean.InfoCode;
import com.aliyun.player.nativeclass.CacheConfig;
import com.aliyun.player.nativeclass.MediaInfo;
import com.aliyun.player.nativeclass.PlayerConfig;
import com.aliyun.player.nativeclass.TrackInfo;
import com.aliyun.player.source.UrlSource;
import com.transsion.player.mediasession.MediaItem;
import com.transsion.player.p007enum.ScaleMode;
import java.io.File;
import java.net.URI;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes6.dex */
public final class w implements com.transsion.player.orplayer.g {
    private static final b K = new b(null);
    private long A;
    private long B;
    private boolean C;
    private final AtomicBoolean D;
    private Handler E;
    private TextureView F;
    private SurfaceView G;
    private Surface H;
    private final g I;
    private final h J;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f48458a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AliPlayer f48459b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.transsion.player.orplayer.c f48460c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.transsion.player.orplayer.f f48461d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.transsion.player.orplayer.e f48462e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f48463f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ao.e f48464g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f48465h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f48466i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f48467j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f48468k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f48469l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Double f48470m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private CopyOnWriteArrayList f48471n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Context f48472o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f48473p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f48474q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f48475r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f48476s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final long f48477t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private long f48478u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private long f48479v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private long f48480w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private long f48481x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private long f48482y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final CopyOnWriteArrayList f48483z;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final long f48484a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f48485b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Double f48486c;

        public a(long j11, long j12, Double d11) {
            this.f48484a = j11;
            this.f48485b = j12;
            this.f48486c = d11;
        }

        public final long a() {
            return this.f48485b;
        }

        public final long b() {
            return this.f48484a;
        }

        public final Double c() {
            return this.f48486c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f48484a == aVar.f48484a && this.f48485b == aVar.f48485b && Intrinsics.c(this.f48486c, aVar.f48486c);
        }

        public int hashCode() {
            int iA = ((androidx.collection.s.a(this.f48484a) * 31) + androidx.collection.s.a(this.f48485b)) * 31;
            Double d11 = this.f48486c;
            return iA + (d11 == null ? 0 : d11.hashCode());
        }

        public String toString() {
            return "BandwidthStats(downloadBytes=" + this.f48484a + ", consumedBytesEstimated=" + this.f48485b + ", redundancyRate=" + this.f48486c + ")";
        }
    }

    private static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final long f48487a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f48488b;

        public c(long j11, long j12) {
            this.f48487a = j11;
            this.f48488b = j12;
        }

        public final long a() {
            return this.f48488b;
        }

        public final long b() {
            return this.f48487a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.f48487a == cVar.f48487a && this.f48488b == cVar.f48488b;
        }

        public int hashCode() {
            return (androidx.collection.s.a(this.f48487a) * 31) + androidx.collection.s.a(this.f48488b);
        }

        public String toString() {
            return "WatchRange(startMs=" + this.f48487a + ", endMs=" + this.f48488b + ")";
        }
    }

    public /* synthetic */ class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f48489a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f48490b;

        static {
            int[] iArr = new int[TrackInfo.Type.values().length];
            try {
                iArr[TrackInfo.Type.TYPE_VIDEO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TrackInfo.Type.TYPE_AUDIO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f48489a = iArr;
            int[] iArr2 = new int[ScaleMode.values().length];
            try {
                iArr2[ScaleMode.SCALE_ASPECT_FILL.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[ScaleMode.SCALE_TO_FILL.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[ScaleMode.SCALE_ASPECT_FIT.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            f48490b = iArr2;
        }
    }

    public static final class e implements com.transsion.player.orplayer.d {
        e() {
        }

        @Override // com.transsion.player.orplayer.d
        public boolean isMute() {
            AliPlayer aliPlayer = w.this.f48459b;
            if (aliPlayer != null) {
                return aliPlayer.isMute();
            }
            return false;
        }

        @Override // com.transsion.player.orplayer.d
        public void pause() {
            AliPlayer aliPlayer = w.this.f48459b;
            if (aliPlayer != null) {
                aliPlayer.pause();
            }
        }

        @Override // com.transsion.player.orplayer.d
        public void play() {
            AliPlayer aliPlayer = w.this.f48459b;
            if (aliPlayer != null) {
                aliPlayer.start();
            }
        }

        @Override // com.transsion.player.orplayer.d
        public void setVolume(float f11) {
            AliPlayer aliPlayer = w.this.f48459b;
            if (aliPlayer != null) {
                aliPlayer.setVolume(f11);
            }
        }
    }

    public static final class f implements IPlayer.OnLoadingStatusListener {
        f() {
        }

        @Override // com.aliyun.player.IPlayer.OnLoadingStatusListener
        public void onLoadingBegin() {
            if (w.this.D.get()) {
                return;
            }
            String unused = w.this.f48458a;
            w.this.f48466i = true;
            com.transsion.player.orplayer.f fVar = w.this.f48461d;
            if (fVar != null) {
                fVar.onLoadingBegin(w.this.f48464g);
            }
            CopyOnWriteArrayList copyOnWriteArrayList = w.this.f48471n;
            w wVar = w.this;
            Iterator it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                ((com.transsion.player.orplayer.f) it.next()).onLoadingBegin(wVar.f48464g);
            }
        }

        @Override // com.aliyun.player.IPlayer.OnLoadingStatusListener
        public void onLoadingEnd() {
            if (w.this.D.get()) {
                return;
            }
            String unused = w.this.f48458a;
            w.this.f48466i = false;
            com.transsion.player.orplayer.f fVar = w.this.f48461d;
            if (fVar != null) {
                fVar.onLoadingEnd(w.this.f48464g);
            }
            CopyOnWriteArrayList copyOnWriteArrayList = w.this.f48471n;
            w wVar = w.this;
            Iterator it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                ((com.transsion.player.orplayer.f) it.next()).onLoadingEnd(wVar.f48464g);
            }
        }

        @Override // com.aliyun.player.IPlayer.OnLoadingStatusListener
        public void onLoadingProgress(int i11, float f11) {
            String unused = w.this.f48458a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onLoadingProgress percent:");
            sb2.append(i11);
            sb2.append(",netSpeed:");
            sb2.append(f11);
        }
    }

    public static final class g implements SurfaceHolder.Callback {
        g() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit d(SurfaceHolder surfaceHolder, w wVar) {
            SurfaceView surfaceView = wVar.G;
            if (surfaceHolder != (surfaceView != null ? surfaceView.getHolder() : null) || wVar.D.get()) {
                return Unit.f67061a;
            }
            AliPlayer aliPlayer = wVar.f48459b;
            if (aliPlayer != null) {
                aliPlayer.surfaceChanged();
            }
            return Unit.f67061a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit e(SurfaceHolder surfaceHolder, w wVar) {
            AliPlayer aliPlayer;
            SurfaceView surfaceView = wVar.G;
            if (surfaceHolder != (surfaceView != null ? surfaceView.getHolder() : null) || wVar.D.get()) {
                return Unit.f67061a;
            }
            Surface surface = surfaceHolder.getSurface();
            Surface surface2 = surface.isValid() ? surface : null;
            if (surface2 != null && (aliPlayer = wVar.f48459b) != null) {
                aliPlayer.setSurface(surface2);
            }
            return Unit.f67061a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit f(SurfaceHolder surfaceHolder, w wVar) {
            SurfaceView surfaceView = wVar.G;
            if (surfaceHolder != (surfaceView != null ? surfaceView.getHolder() : null) || wVar.D.get()) {
                return Unit.f67061a;
            }
            AliPlayer aliPlayer = wVar.f48459b;
            if (aliPlayer != null) {
                aliPlayer.setSurface(null);
            }
            return Unit.f67061a;
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(final SurfaceHolder holder, int i11, int i12, int i13) {
            Intrinsics.h(holder, "holder");
            final w wVar = w.this;
            wVar.a0(new Function0() { // from class: com.transsion.player.orplayer.z
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return w.g.d(holder, wVar);
                }
            });
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(final SurfaceHolder holder) {
            Intrinsics.h(holder, "holder");
            final w wVar = w.this;
            wVar.a0(new Function0() { // from class: com.transsion.player.orplayer.x
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return w.g.e(holder, wVar);
                }
            });
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(final SurfaceHolder holder) {
            Intrinsics.h(holder, "holder");
            final w wVar = w.this;
            wVar.c0(new Function0() { // from class: com.transsion.player.orplayer.y
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return w.g.f(holder, wVar);
                }
            });
        }
    }

    public static final class h implements TextureView.SurfaceTextureListener {
        h() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit d(TextureView textureView, w wVar, SurfaceTexture surfaceTexture) {
            if (textureView == null || textureView != wVar.F || textureView.getSurfaceTexture() != surfaceTexture || wVar.D.get()) {
                return Unit.f67061a;
            }
            Surface surface = new Surface(surfaceTexture);
            if (surface.isValid()) {
                wVar.I();
                wVar.H = surface;
                AliPlayer aliPlayer = wVar.f48459b;
                if (aliPlayer != null) {
                    aliPlayer.setSurface(surface);
                }
            } else {
                surface.release();
            }
            return Unit.f67061a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit e(TextureView textureView, w wVar) {
            if (textureView == null || textureView != wVar.F || wVar.D.get()) {
                return Unit.f67061a;
            }
            AliPlayer aliPlayer = wVar.f48459b;
            if (aliPlayer != null) {
                aliPlayer.setSurface(null);
            }
            Surface surface = wVar.H;
            if (surface != null) {
                surface.release();
            }
            wVar.H = null;
            return Unit.f67061a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit f(TextureView textureView, w wVar, SurfaceTexture surfaceTexture) {
            if (textureView == null || textureView != wVar.F || textureView.getSurfaceTexture() != surfaceTexture || wVar.D.get()) {
                return Unit.f67061a;
            }
            AliPlayer aliPlayer = wVar.f48459b;
            if (aliPlayer != null) {
                aliPlayer.surfaceChanged();
            }
            return Unit.f67061a;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(final SurfaceTexture surfaceTexture, int i11, int i12) {
            Intrinsics.h(surfaceTexture, "surfaceTexture");
            final TextureView textureView = w.this.F;
            final w wVar = w.this;
            wVar.a0(new Function0() { // from class: com.transsion.player.orplayer.b0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return w.h.d(textureView, wVar, surfaceTexture);
                }
            });
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            Intrinsics.h(surfaceTexture, "surfaceTexture");
            final TextureView textureView = w.this.F;
            final w wVar = w.this;
            wVar.a0(new Function0() { // from class: com.transsion.player.orplayer.c0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return w.h.e(textureView, wVar);
                }
            });
            return false;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(final SurfaceTexture surfaceTexture, int i11, int i12) {
            Intrinsics.h(surfaceTexture, "surfaceTexture");
            final TextureView textureView = w.this.F;
            final w wVar = w.this;
            wVar.a0(new Function0() { // from class: com.transsion.player.orplayer.a0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return w.h.f(textureView, wVar, surfaceTexture);
                }
            });
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
            Intrinsics.h(surfaceTexture, "surfaceTexture");
        }
    }

    public w(Context context, bo.d dVar) {
        Intrinsics.h(context, "context");
        this.f48458a = "ORPlayerImpl";
        this.f48463f = "";
        this.f48471n = new CopyOnWriteArrayList();
        this.f48476s = 50000L;
        this.f48477t = 500L;
        this.f48480w = -1L;
        this.f48481x = -1L;
        this.f48483z = new CopyOnWriteArrayList();
        this.A = -1L;
        this.D = new AtomicBoolean(false);
        this.I = new g();
        this.J = new h();
        this.f48472o = context;
        AliPlayer aliPlayerCreateAliPlayer = AliPlayerFactory.createAliPlayer(context);
        aliPlayerCreateAliPlayer.setTraceId(dVar != null ? dVar.o() : null);
        aliPlayerCreateAliPlayer.enableHardwareDecoder(dVar != null ? dVar.e() : true);
        this.f48459b = aliPlayerCreateAliPlayer;
        if (dVar == null || dVar.i()) {
            N();
        }
        setPlayerConfig(dVar == null ? bo.b.f16639a.a() : dVar);
        P(dVar != null ? dVar.j() : true);
    }

    private final void F() {
        SurfaceHolder holder;
        SurfaceView surfaceView = this.G;
        if (surfaceView != null && (holder = surfaceView.getHolder()) != null) {
            holder.removeCallback(this.I);
        }
        this.G = null;
        TextureView textureView = this.F;
        if (textureView != null) {
            if (textureView.getSurfaceTextureListener() != this.J) {
                textureView = null;
            }
            if (textureView != null) {
                textureView.setSurfaceTextureListener(null);
            }
        }
        this.F = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit G(w wVar) {
        wVar.I();
        wVar.F();
        return Unit.f67061a;
    }

    private final void H(long j11) {
        long j12 = this.A;
        if (j12 < 0) {
            return;
        }
        long jG = RangesKt.g(j11, j12);
        long j13 = this.A;
        if (jG > j13) {
            this.f48483z.add(new c(j13, jG));
        }
        this.A = -1L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void I() {
        AliPlayer aliPlayer = this.f48459b;
        if (aliPlayer != null) {
            aliPlayer.setSurface(null);
        }
        Surface surface = this.H;
        if (surface != null) {
            surface.release();
        }
        this.H = null;
    }

    private final long K() {
        int iF = RangesKt.f(this.f48474q, 0) + RangesKt.f(this.f48475r, 0);
        if (iF > 0) {
            return iF;
        }
        return 800000L;
    }

    private final boolean L(PlayError playError) {
        Integer errorCode;
        Integer errorCode2 = playError.getErrorCode();
        if ((errorCode2 == null || errorCode2.intValue() != 537133057) && ((errorCode = playError.getErrorCode()) == null || errorCode.intValue() != 537133058)) {
            return false;
        }
        if (this.C) {
            oo.e.f71074a.a(this.f48458a, "aliyun 已经切过软解，还是出错不再处理", true);
            return false;
        }
        oo.e.f71074a.c(this.f48458a, "aliyun onError -- 解码失败，强制切到软解", true);
        com.transsion.player.orplayer.f fVar = this.f48461d;
        if (fVar != null) {
            fVar.onAliyunDecodeErrorChangeSoftwareDecoder(this.f48464g);
        }
        Iterator it = this.f48471n.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onAliyunDecodeErrorChangeSoftwareDecoder(this.f48464g);
        }
        final ao.e eVar = this.f48464g;
        this.C = true;
        a0(new Function0() { // from class: com.transsion.player.orplayer.m
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return w.M(this.f48446a, eVar);
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit M(w wVar, ao.e eVar) {
        if (wVar.D.get()) {
            return Unit.f67061a;
        }
        wVar.stop();
        wVar.reset();
        AliPlayer aliPlayer = wVar.f48459b;
        if (aliPlayer != null) {
            aliPlayer.enableHardwareDecoder(false);
        }
        if (eVar != null) {
            wVar.setDataSource(eVar);
            wVar.C = true;
            wVar.prepare();
        }
        return Unit.f67061a;
    }

    private final void N() {
        this.f48460c = new com.transsion.player.orplayer.c(new e(), new Function1() { // from class: com.transsion.player.orplayer.h
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return w.O(this.f48439a, ((Boolean) obj).booleanValue());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit O(w wVar, boolean z10) {
        com.transsion.player.orplayer.f fVar = wVar.f48461d;
        if (fVar != null) {
            fVar.onFocusChange(z10);
        }
        Iterator it = wVar.f48471n.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onFocusChange(z10);
        }
        return Unit.f67061a;
    }

    private final void P(boolean z10) {
        bo.b bVar = bo.b.f16639a;
        g0(bVar.a(), bVar.c() && z10);
        AliPlayer aliPlayer = this.f48459b;
        if (aliPlayer != null) {
            aliPlayer.setOnRenderingStartListener(new IPlayer.OnRenderingStartListener() { // from class: com.transsion.player.orplayer.p
                @Override // com.aliyun.player.IPlayer.OnRenderingStartListener
                public final void onRenderingStart() {
                    w.V(this.f48451a);
                }
            });
        }
        AliPlayer aliPlayer2 = this.f48459b;
        if (aliPlayer2 != null) {
            aliPlayer2.setOnVideoSizeChangedListener(new IPlayer.OnVideoSizeChangedListener() { // from class: com.transsion.player.orplayer.q
                @Override // com.aliyun.player.IPlayer.OnVideoSizeChangedListener
                public final void onVideoSizeChanged(int i11, int i12) {
                    w.W(this.f48452a, i11, i12);
                }
            });
        }
        AliPlayer aliPlayer3 = this.f48459b;
        if (aliPlayer3 != null) {
            aliPlayer3.setOnErrorListener(new IPlayer.OnErrorListener() { // from class: com.transsion.player.orplayer.r
                @Override // com.aliyun.player.IPlayer.OnErrorListener
                public final void onError(ErrorInfo errorInfo) {
                    w.Q(this.f48453a, errorInfo);
                }
            });
        }
        AliPlayer aliPlayer4 = this.f48459b;
        if (aliPlayer4 != null) {
            aliPlayer4.setOnLoadingStatusListener(new f());
        }
        AliPlayer aliPlayer5 = this.f48459b;
        if (aliPlayer5 != null) {
            aliPlayer5.setOnPreparedListener(new IPlayer.OnPreparedListener() { // from class: com.transsion.player.orplayer.s
                @Override // com.aliyun.player.IPlayer.OnPreparedListener
                public final void onPrepared() {
                    w.R(this.f48454a);
                }
            });
        }
        AliPlayer aliPlayer6 = this.f48459b;
        if (aliPlayer6 != null) {
            aliPlayer6.setOnInfoListener(new IPlayer.OnInfoListener() { // from class: com.transsion.player.orplayer.t
                @Override // com.aliyun.player.IPlayer.OnInfoListener
                public final void onInfo(InfoBean infoBean) {
                    w.S(this.f48455a, infoBean);
                }
            });
        }
        AliPlayer aliPlayer7 = this.f48459b;
        if (aliPlayer7 != null) {
            aliPlayer7.setOnStateChangedListener(new IPlayer.OnStateChangedListener() { // from class: com.transsion.player.orplayer.u
                @Override // com.aliyun.player.IPlayer.OnStateChangedListener
                public final void onStateChanged(int i11) {
                    w.T(this.f48456a, i11);
                }
            });
        }
        AliPlayer aliPlayer8 = this.f48459b;
        if (aliPlayer8 != null) {
            aliPlayer8.setOnSeekCompleteListener(new IPlayer.OnSeekCompleteListener() { // from class: com.transsion.player.orplayer.v
                @Override // com.aliyun.player.IPlayer.OnSeekCompleteListener
                public final void onSeekComplete() {
                    w.U(this.f48457a);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Q(w wVar, ErrorInfo errorInfo) {
        if (wVar.D.get()) {
            return;
        }
        ErrorCode code = errorInfo.getCode();
        String msg = errorInfo.getMsg();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onError code:");
        sb2.append(code);
        sb2.append(",msg:");
        sb2.append(msg);
        PlayError playError = new PlayError(Integer.valueOf(errorInfo.getCode().getValue()), errorInfo.getMsg());
        if (wVar.L(playError)) {
            return;
        }
        com.transsion.player.orplayer.f fVar = wVar.f48461d;
        if (fVar != null) {
            fVar.onPlayError(playError, wVar.f48464g);
        }
        Iterator it = wVar.f48471n.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onPlayError(playError, wVar.f48464g);
        }
        if (errorInfo.getCode() == ErrorCode.ERROR_DECODE_AUDIO) {
            wVar.prepare();
            wVar.play();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void R(w wVar) {
        if (wVar.D.get()) {
            return;
        }
        wVar.f48469l = true;
        if (wVar.C && wVar.f48473p > 0) {
            oo.e.f71074a.a(wVar.f48458a, "aliyun onPrepare 内部的解码切换，已有播放进度，直接播放", true);
            wVar.seekTo(wVar.f48473p);
            wVar.play();
        } else {
            com.transsion.player.orplayer.f fVar = wVar.f48461d;
            if (fVar != null) {
                fVar.onPrepare(wVar.f48464g);
            }
            Iterator it = wVar.f48471n.iterator();
            while (it.hasNext()) {
                ((com.transsion.player.orplayer.f) it.next()).onPrepare(wVar.f48464g);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void S(w wVar, InfoBean infoBean) {
        if (wVar.D.get()) {
            return;
        }
        long extraValue = infoBean.getExtraValue();
        if (infoBean.getCode() == InfoCode.CurrentPosition) {
            wVar.f48473p = extraValue;
            wVar.B = extraValue;
            wVar.e0();
            com.transsion.player.orplayer.f fVar = wVar.f48461d;
            if (fVar != null) {
                fVar.onProgress(extraValue, wVar.f48464g);
            }
            Iterator it = wVar.f48471n.iterator();
            while (it.hasNext()) {
                ((com.transsion.player.orplayer.f) it.next()).onProgress(extraValue, wVar.f48464g);
            }
        }
        if (infoBean.getCode() == InfoCode.LoopingStart) {
            com.transsion.player.orplayer.f fVar2 = wVar.f48461d;
            if (fVar2 != null) {
                fVar2.onLoopingStart();
            }
            Iterator it2 = wVar.f48471n.iterator();
            while (it2.hasNext()) {
                ((com.transsion.player.orplayer.f) it2.next()).onLoopingStart();
            }
        }
        if (infoBean.getCode() == InfoCode.BufferedPosition) {
            wVar.f48478u = extraValue;
            wVar.f48479v = SystemClock.elapsedRealtime();
            com.transsion.player.orplayer.f fVar3 = wVar.f48461d;
            if (fVar3 != null) {
                fVar3.onBufferedPosition(extraValue, wVar.f48464g);
            }
            Iterator it3 = wVar.f48471n.iterator();
            while (it3.hasNext()) {
                ((com.transsion.player.orplayer.f) it3.next()).onBufferedPosition(extraValue, wVar.f48464g);
            }
        }
        if (infoBean.getCode() == InfoCode.SwitchToSoftwareVideoDecoder) {
            oo.e.f71074a.e(wVar.f48458a, "aliyun 硬解失败，自动切换到软件", true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void T(w wVar, int i11) {
        if (wVar.D.get()) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("setOnStateChangedListener status:");
        sb2.append(i11);
        boolean z10 = i11 == 3;
        wVar.f48465h = z10;
        com.transsion.player.orplayer.f fVar = wVar.f48461d;
        if (fVar != null) {
            fVar.onIsPlayingChanged(z10);
        }
        Iterator it = wVar.f48471n.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onIsPlayingChanged(wVar.f48465h);
        }
        wVar.f48468k = i11 == 6;
        com.transsion.player.orplayer.c cVar = wVar.f48460c;
        if (cVar != null) {
            cVar.f(wVar.f48465h);
        }
        if (i11 == 3) {
            wVar.k0(wVar.f48473p);
            com.transsion.player.orplayer.f fVar2 = wVar.f48461d;
            if (fVar2 != null) {
                fVar2.onVideoStart(wVar.f48464g);
            }
            Iterator it2 = wVar.f48471n.iterator();
            while (it2.hasNext()) {
                ((com.transsion.player.orplayer.f) it2.next()).onVideoStart(wVar.f48464g);
            }
            return;
        }
        if (i11 == 4) {
            wVar.H(wVar.f48473p);
            wVar.e0();
            com.transsion.player.orplayer.f fVar3 = wVar.f48461d;
            if (fVar3 != null) {
                fVar3.onVideoPause(wVar.f48464g);
            }
            Iterator it3 = wVar.f48471n.iterator();
            while (it3.hasNext()) {
                ((com.transsion.player.orplayer.f) it3.next()).onVideoPause(wVar.f48464g);
            }
            return;
        }
        if (i11 == 5) {
            wVar.H(wVar.f48473p);
            wVar.e0();
            wVar.Y("stopped");
            return;
        }
        if (i11 != 6) {
            if (i11 != 7) {
                return;
            }
            wVar.H(wVar.f48473p);
            wVar.e0();
            return;
        }
        wVar.H(wVar.f48473p);
        wVar.e0();
        wVar.Y(MediaItem.MUSIC_FLOAT_STATE_COMPLETION);
        com.transsion.player.orplayer.f fVar4 = wVar.f48461d;
        if (fVar4 != null) {
            fVar4.onCompletion(wVar.f48464g);
        }
        Iterator it4 = wVar.f48471n.iterator();
        while (it4.hasNext()) {
            ((com.transsion.player.orplayer.f) it4.next()).onCompletion(wVar.f48464g);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void U(w wVar) {
        if (wVar.D.get()) {
            return;
        }
        com.transsion.player.orplayer.f fVar = wVar.f48461d;
        if (fVar != null) {
            fVar.setOnSeekCompleteListener();
        }
        Iterator it = wVar.f48471n.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).setOnSeekCompleteListener();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void V(w wVar) {
        MediaInfo mediaInfo;
        List<TrackInfo> trackInfos;
        if (wVar.D.get()) {
            return;
        }
        AliPlayer aliPlayer = wVar.f48459b;
        if (aliPlayer != null && (mediaInfo = aliPlayer.getMediaInfo()) != null && (trackInfos = mediaInfo.getTrackInfos()) != null) {
            for (TrackInfo trackInfo : trackInfos) {
                oo.e.f71074a.a(wVar.f48458a, "setOnInfoListener onRenderFirstFrame " + com.blankj.utilcode.util.o.j(trackInfo), true);
                TrackInfo.Type type = trackInfo.mType;
                int i11 = type == null ? -1 : d.f48489a[type.ordinal()];
                if (i11 == 1) {
                    int i12 = trackInfo.videoBitrate;
                    wVar.f48474q = i12;
                    com.transsion.player.orplayer.f fVar = wVar.f48461d;
                    if (fVar != null) {
                        fVar.onTracksVideoBitrateChange(i12);
                    }
                    Iterator it = wVar.f48471n.iterator();
                    while (it.hasNext()) {
                        ((com.transsion.player.orplayer.f) it.next()).onTracksVideoBitrateChange(wVar.f48474q);
                    }
                } else if (i11 == 2) {
                    int i13 = trackInfo.videoBitrate;
                    wVar.f48475r = i13;
                    com.transsion.player.orplayer.f fVar2 = wVar.f48461d;
                    if (fVar2 != null) {
                        fVar2.onTracksAudioBitrateChange(i13);
                    }
                    Iterator it2 = wVar.f48471n.iterator();
                    while (it2.hasNext()) {
                        ((com.transsion.player.orplayer.f) it2.next()).onTracksAudioBitrateChange(wVar.f48475r);
                    }
                }
            }
        }
        int i14 = wVar.f48474q;
        int i15 = wVar.f48475r;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("setOnInfoListener onRenderFirstFrame，videoBitrate:");
        sb2.append(i14);
        sb2.append(", audioBitrate:");
        sb2.append(i15);
        com.transsion.player.orplayer.f fVar3 = wVar.f48461d;
        if (fVar3 != null) {
            fVar3.onRenderFirstFrame();
        }
        Iterator it3 = wVar.f48471n.iterator();
        while (it3.hasNext()) {
            ((com.transsion.player.orplayer.f) it3.next()).onRenderFirstFrame();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void W(w wVar, int i11, int i12) {
        if (wVar.D.get()) {
            return;
        }
        com.transsion.player.orplayer.f fVar = wVar.f48461d;
        if (fVar != null) {
            fVar.onVideoSizeChanged(i11, i12);
        }
        Iterator it = wVar.f48471n.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onVideoSizeChanged(i11, i12);
        }
    }

    private final void X() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long jG = RangesKt.g(this.f48473p, 0L);
        boolean z10 = jElapsedRealtime - this.f48479v <= 2000;
        long jG2 = z10 ? RangesKt.g(this.f48478u, jG) : jG;
        long jG3 = RangesKt.g(jG2 - jG, 0L);
        double dK = RangesKt.k((jG3 * 100.0d) / this.f48476s, 0.0d, 100.0d);
        this.f48470m = Double.valueOf(dK);
        boolean z11 = jG3 >= this.f48476s - this.f48477t;
        String str = String.format("%.1f", Arrays.copyOf(new Object[]{Double.valueOf(dK)}, 1));
        Intrinsics.g(str, "format(...)");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("aliyun-buffer-pool scene=release, current=");
        sb2.append(jG);
        sb2.append(", bufferedPosition=");
        sb2.append(jG2);
        sb2.append(", bufferedMs=");
        sb2.append(jG3);
        sb2.append(", poolPercent=");
        sb2.append(str);
        sb2.append(", isPoolFull=");
        sb2.append(z11);
        sb2.append(", bufferedFresh=");
        sb2.append(z10);
    }

    private final void Y(String str) {
        String str2;
        a aVarJ = J();
        Double dC = aVarJ.c();
        if (dC != null) {
            double dDoubleValue = dC.doubleValue();
            StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
            str2 = String.format("%.4f", Arrays.copyOf(new Object[]{Double.valueOf(dDoubleValue)}, 1));
            Intrinsics.g(str2, "format(...)");
        } else {
            str2 = "null";
        }
        long jB = aVarJ.b();
        long jA = aVarJ.a();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("aliyun-bw scene=");
        sb2.append(str);
        sb2.append(", downloadBytes=");
        sb2.append(jB);
        sb2.append(", consumedEstimated=");
        sb2.append(jA);
        sb2.append(", redundancyRate=");
        sb2.append(str2);
    }

    private final void Z() {
        this.f48480w = -1L;
        this.f48481x = -1L;
        this.f48482y = 0L;
        this.f48483z.clear();
        this.A = -1L;
        this.B = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a0(final Function0 function0) {
        Handler handler = this.E;
        if (handler == null || Intrinsics.c(Thread.currentThread(), handler.getLooper().getThread())) {
            function0.invoke();
        } else {
            handler.post(new Runnable() { // from class: com.transsion.player.orplayer.k
                @Override // java.lang.Runnable
                public final void run() {
                    w.b0(function0);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b0(Function0 function0) {
        function0.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c0(final Function0 function0) {
        Handler handler = this.E;
        if (handler == null || Intrinsics.c(Thread.currentThread(), handler.getLooper().getThread())) {
            function0.invoke();
            return;
        }
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        if (!handler.post(new Runnable() { // from class: com.transsion.player.orplayer.l
            @Override // java.lang.Runnable
            public final void run() {
                w.d0(function0, countDownLatch);
            }
        })) {
            oo.e.f71074a.c(this.f48458a, "Surface detach post failed", true);
            return;
        }
        try {
            if (countDownLatch.await(500L, TimeUnit.MILLISECONDS)) {
                return;
            }
            oo.e.f71074a.c(this.f48458a, "Surface detach timeout", true);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            oo.e.f71074a.c(this.f48458a, "Surface detach interrupted", true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d0(Function0 function0, CountDownLatch countDownLatch) {
        try {
            function0.invoke();
        } finally {
            countDownLatch.countDown();
        }
    }

    private final void e0() {
        long uidRxBytes = TrafficStats.getUidRxBytes(this.f48472o.getApplicationInfo().uid);
        if (uidRxBytes <= 0 || uidRxBytes == -1) {
            return;
        }
        if (this.f48480w < 0) {
            this.f48480w = uidRxBytes;
            this.f48481x = uidRxBytes;
            return;
        }
        long j11 = this.f48481x;
        if (j11 >= 0 && uidRxBytes >= j11) {
            this.f48482y += uidRxBytes - j11;
        }
        this.f48481x = uidRxBytes;
    }

    private final void g0(bo.d dVar, boolean z10) {
        CacheConfig cacheConfig = new CacheConfig();
        cacheConfig.mEnable = z10;
        cacheConfig.mMaxDurationS = 120L;
        File externalCacheDir = this.f48472o.getExternalCacheDir();
        String absolutePath = externalCacheDir != null ? externalCacheDir.getAbsolutePath() : null;
        String str = absolutePath + File.separator + "video_cache";
        cacheConfig.mDir = str;
        cacheConfig.mMaxSizeMB = dVar.a();
        AliPlayer aliPlayer = this.f48459b;
        if (aliPlayer != null) {
            aliPlayer.setCacheConfig(cacheConfig);
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            AliPlayerGlobalSettings.enableLocalCache(z10, 0, str);
            AliPlayerGlobalSettings.setCacheUrlHashCallback(new AliPlayerGlobalSettings.OnGetUrlHashCallback() { // from class: com.transsion.player.orplayer.j
                @Override // com.aliyun.player.AliPlayerGlobalSettings.OnGetUrlHashCallback
                public final String getUrlHashCallback(String str2) {
                    return w.h0(str2);
                }
            });
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String h0(String str) {
        try {
            URI uri = new URI(str);
            oo.d.a aVar = oo.d.f71072a;
            String string = new URI(uri.getScheme(), uri.getAuthority(), uri.getPath(), null, uri.getFragment()).toString();
            Intrinsics.g(string, "toString(...)");
            return aVar.a(string);
        } catch (Exception unused) {
            oo.d.a aVar2 = oo.d.f71072a;
            if (str == null) {
                str = "";
            }
            return aVar2.a(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit i0(SurfaceHolder surfaceHolder, w wVar) {
        AliPlayer aliPlayer;
        SurfaceView surfaceView = wVar.G;
        if (surfaceHolder != (surfaceView != null ? surfaceView.getHolder() : null) || wVar.D.get()) {
            return Unit.f67061a;
        }
        Surface surface = surfaceHolder.getSurface();
        Surface surface2 = surface.isValid() ? surface : null;
        if (surface2 != null && (aliPlayer = wVar.f48459b) != null) {
            aliPlayer.setSurface(surface2);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j0(TextureView textureView, w wVar, SurfaceTexture surfaceTexture) {
        if (textureView != wVar.F || wVar.D.get()) {
            return Unit.f67061a;
        }
        Surface surface = new Surface(surfaceTexture);
        if (surface.isValid()) {
            Surface surface2 = wVar.H;
            if (surface2 != null) {
                surface2.release();
            }
            wVar.H = surface;
            AliPlayer aliPlayer = wVar.f48459b;
            if (aliPlayer != null) {
                aliPlayer.setSurface(surface);
            }
        } else {
            surface.release();
        }
        return Unit.f67061a;
    }

    private final void k0(long j11) {
        if (this.A < 0) {
            this.A = RangesKt.g(j11, 0L);
        }
    }

    private final void l0(boolean z10) {
        if (z10) {
            Thread threadCurrentThread = Thread.currentThread();
            this.E = threadCurrentThread instanceof HandlerThread ? new Handler(((HandlerThread) threadCurrentThread).getLooper()) : new Handler(Looper.getMainLooper());
        }
    }

    private final long m0() {
        long jG = 0;
        for (c cVar : this.f48483z) {
            jG += RangesKt.g(cVar.a() - cVar.b(), 0L);
        }
        long j11 = this.A;
        if (j11 < 0) {
            return jG;
        }
        long j12 = this.B;
        return j12 > j11 ? jG + (j12 - j11) : jG;
    }

    public final a J() {
        Double dValueOf;
        long jM0 = (long) ((m0() / 1000.0d) * (K() / 8.0d));
        if (jM0 <= 0) {
            dValueOf = null;
        } else {
            long j11 = this.f48482y;
            dValueOf = Double.valueOf((j11 - jM0) / j11);
        }
        if (dValueOf != null && dValueOf.doubleValue() < 0.0d) {
            dValueOf = Double.valueOf(0.0d);
        }
        return new a(this.f48482y, jM0, dValueOf);
    }

    @Override // com.transsion.player.orplayer.g
    public boolean addDataSource(ao.e eVar) {
        return com.transsion.player.orplayer.g.b.a(this, eVar);
    }

    @Override // com.transsion.player.orplayer.g
    public void addPlayerListener(com.transsion.player.orplayer.f listener) {
        Intrinsics.h(listener, "listener");
        if (this.f48471n.contains(listener)) {
            return;
        }
        this.f48471n.add(listener);
    }

    @Override // com.transsion.player.orplayer.g
    public void changeTrackSelection(mo.d dVar, int i11) {
        com.transsion.player.orplayer.g.b.c(this, dVar, i11);
    }

    @Override // com.transsion.player.orplayer.g
    public void clearScreen() {
        AliPlayer aliPlayer = this.f48459b;
        if (aliPlayer != null) {
            aliPlayer.clearScreen();
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void clearSurfaceOnly() {
        a0(new Function0() { // from class: com.transsion.player.orplayer.o
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return w.G(this.f48450a);
            }
        });
    }

    @Override // com.transsion.player.orplayer.g
    public ao.e currentMediaSource() {
        return this.f48464g;
    }

    @Override // com.transsion.player.orplayer.g
    public void enableHardwareDecoder(boolean z10) {
        AliPlayer aliPlayer = this.f48459b;
        if (aliPlayer != null) {
            aliPlayer.enableHardwareDecoder(z10);
        }
    }

    public final void f0(com.transsion.player.orplayer.e eVar) {
        this.f48462e = eVar;
    }

    @Override // com.transsion.player.orplayer.g
    public Pair getBitrate() {
        return new Pair(Integer.valueOf(this.f48474q), Integer.valueOf(this.f48475r));
    }

    @Override // com.transsion.player.orplayer.g
    public long getCurrentPosition() {
        return this.f48473p;
    }

    @Override // com.transsion.player.orplayer.g
    public mo.c getCurrentTracks() {
        return com.transsion.player.orplayer.g.b.h(this);
    }

    @Override // com.transsion.player.orplayer.g
    public mo.b getCurrentVideoFormat() {
        return com.transsion.player.orplayer.g.b.i(this);
    }

    @Override // com.transsion.player.orplayer.g
    public Object getDownloadBitrate() {
        AliPlayer aliPlayer = this.f48459b;
        if (aliPlayer != null) {
            return aliPlayer.getOption(IPlayer.Option.DownloadBitrate);
        }
        return null;
    }

    @Override // com.transsion.player.orplayer.g
    public long getDuration() {
        AliPlayer aliPlayer = this.f48459b;
        if (aliPlayer != null) {
            return aliPlayer.getDuration();
        }
        return 0L;
    }

    @Override // com.transsion.player.orplayer.g
    public int getVideoHeight() {
        AliPlayer aliPlayer = this.f48459b;
        return aliPlayer != null ? aliPlayer.getVideoHeight() : com.transsion.player.orplayer.g.b.k(this);
    }

    @Override // com.transsion.player.orplayer.g
    public int getVideoWidth() {
        AliPlayer aliPlayer = this.f48459b;
        return aliPlayer != null ? aliPlayer.getVideoWidth() : com.transsion.player.orplayer.g.b.l(this);
    }

    @Override // com.transsion.player.orplayer.g
    public Float getVolume() {
        AliPlayer aliPlayer = this.f48459b;
        if (aliPlayer != null) {
            return Float.valueOf(aliPlayer.getVolume());
        }
        return null;
    }

    @Override // com.transsion.player.orplayer.g
    public boolean isComplete() {
        return this.f48468k;
    }

    @Override // com.transsion.player.orplayer.g
    public boolean isLoading() {
        return this.f48466i;
    }

    @Override // com.transsion.player.orplayer.g
    public boolean isMute() {
        AliPlayer aliPlayer = this.f48459b;
        if (aliPlayer != null) {
            return aliPlayer.isMute();
        }
        return false;
    }

    @Override // com.transsion.player.orplayer.g
    public boolean isPlaying() {
        return this.f48465h;
    }

    @Override // com.transsion.player.orplayer.g
    public boolean isPrepared() {
        return this.f48469l;
    }

    @Override // com.transsion.player.orplayer.g
    public void pause() {
        com.transsion.player.orplayer.c cVar = this.f48460c;
        if (cVar != null) {
            cVar.g(true);
        }
        AliPlayer aliPlayer = this.f48459b;
        if (aliPlayer != null) {
            aliPlayer.pause();
        }
        com.transsion.player.orplayer.c cVar2 = this.f48460c;
        if (cVar2 != null) {
            cVar2.b();
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void play() {
        com.transsion.player.orplayer.f fVar = this.f48461d;
        if (fVar != null) {
            fVar.initPlayer();
        }
        Iterator it = this.f48471n.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).initPlayer();
        }
        AliPlayer aliPlayer = this.f48459b;
        if (aliPlayer != null) {
            aliPlayer.start();
        }
        com.transsion.player.orplayer.c cVar = this.f48460c;
        if (cVar != null) {
            cVar.g(false);
        }
        com.transsion.player.orplayer.c cVar2 = this.f48460c;
        if (cVar2 != null) {
            cVar2.e();
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void prepare() {
        AliPlayer aliPlayer = this.f48459b;
        if (aliPlayer != null) {
            aliPlayer.prepare();
        }
        this.f48467j = false;
    }

    @Override // com.transsion.player.orplayer.g
    public void release() {
        if (this.D.compareAndSet(false, true)) {
            com.transsion.player.orplayer.f fVar = this.f48461d;
            ArrayList arrayList = new ArrayList(this.f48471n);
            this.f48461d = null;
            this.f48471n.clear();
            long jG = RangesKt.g(this.B, this.f48473p);
            this.f48473p = jG;
            this.B = jG;
            X();
            a aVarJ = J();
            com.transsion.player.orplayer.e eVar = this.f48462e;
            if (eVar != null) {
                eVar.a(aVarJ.c(), aVarJ.b(), aVarJ.a(), this.f48470m);
            }
            this.f48463f = "";
            H(this.f48473p);
            e0();
            Y("release");
            F();
            I();
            AliPlayer aliPlayer = this.f48459b;
            if (aliPlayer != null) {
                aliPlayer.setOnRenderingStartListener(null);
            }
            AliPlayer aliPlayer2 = this.f48459b;
            if (aliPlayer2 != null) {
                aliPlayer2.setOnVideoSizeChangedListener(null);
            }
            AliPlayer aliPlayer3 = this.f48459b;
            if (aliPlayer3 != null) {
                aliPlayer3.setOnErrorListener(null);
            }
            AliPlayer aliPlayer4 = this.f48459b;
            if (aliPlayer4 != null) {
                aliPlayer4.setOnLoadingStatusListener(null);
            }
            AliPlayer aliPlayer5 = this.f48459b;
            if (aliPlayer5 != null) {
                aliPlayer5.setOnPreparedListener(null);
            }
            AliPlayer aliPlayer6 = this.f48459b;
            if (aliPlayer6 != null) {
                aliPlayer6.setOnInfoListener(null);
            }
            AliPlayer aliPlayer7 = this.f48459b;
            if (aliPlayer7 != null) {
                aliPlayer7.setOnStateChangedListener(null);
            }
            AliPlayer aliPlayer8 = this.f48459b;
            if (aliPlayer8 != null) {
                aliPlayer8.setOnSeekCompleteListener(null);
            }
            AliPlayer aliPlayer9 = this.f48459b;
            if (aliPlayer9 != null) {
                aliPlayer9.release();
            }
            this.f48459b = null;
            if (fVar != null) {
                com.transsion.player.orplayer.f.a.u(fVar, null, 1, null);
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                com.transsion.player.orplayer.f.a.u((com.transsion.player.orplayer.f) it.next(), null, 1, null);
            }
            com.transsion.player.orplayer.c cVar = this.f48460c;
            if (cVar != null) {
                cVar.b();
            }
            this.f48469l = false;
            this.C = false;
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
    public void removePlayerListener(com.transsion.player.orplayer.f listener) {
        Intrinsics.h(listener, "listener");
        this.f48471n.remove(listener);
    }

    @Override // com.transsion.player.orplayer.g
    public boolean requestForce() {
        return com.transsion.player.orplayer.g.b.r(this);
    }

    @Override // com.transsion.player.orplayer.g
    public void reset() {
        AliPlayer aliPlayer = this.f48459b;
        if (aliPlayer != null) {
            aliPlayer.stop();
        }
        AliPlayer aliPlayer2 = this.f48459b;
        if (aliPlayer2 != null) {
            aliPlayer2.reset();
        }
        AliPlayer aliPlayer3 = this.f48459b;
        if (aliPlayer3 != null) {
            aliPlayer3.clearScreen();
        }
        com.transsion.player.orplayer.c cVar = this.f48460c;
        if (cVar != null) {
            cVar.b();
        }
        if (!this.f48467j) {
            com.transsion.player.orplayer.f fVar = this.f48461d;
            if (fVar != null) {
                fVar.onPlayerReset();
            }
            Iterator it = this.f48471n.iterator();
            while (it.hasNext()) {
                ((com.transsion.player.orplayer.f) it.next()).onPlayerReset();
            }
        }
        this.f48467j = true;
        this.f48469l = false;
        this.C = false;
    }

    @Override // com.transsion.player.orplayer.g
    public void seekTo(long j11) {
        H(this.f48473p);
        AliPlayer aliPlayer = this.f48459b;
        if (aliPlayer != null) {
            aliPlayer.setMaxAccurateSeekDelta(150000);
        }
        AliPlayer aliPlayer2 = this.f48459b;
        if (aliPlayer2 != null) {
            aliPlayer2.seekTo(j11, IPlayer.SeekMode.Accurate);
        }
        if (this.f48465h) {
            k0(j11);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void seekTo(String str, long j11) {
        com.transsion.player.orplayer.g.b.s(this, str, j11);
    }

    @Override // com.transsion.player.orplayer.g
    public void setAutoPlay(boolean z10) {
    }

    @Override // com.transsion.player.orplayer.g
    public void setDataSource(ao.e mediaSource) {
        Intrinsics.h(mediaSource, "mediaSource");
        Z();
        this.f48478u = 0L;
        this.f48479v = 0L;
        UrlSource urlSource = new UrlSource();
        String strK = mediaSource.k();
        this.f48463f = strK;
        this.f48464g = mediaSource;
        urlSource.setUri(strK);
        com.transsion.player.orplayer.f fVar = this.f48461d;
        if (fVar != null) {
            fVar.onSetDataSource();
        }
        Iterator it = this.f48471n.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onSetDataSource();
        }
        AliPlayer aliPlayer = this.f48459b;
        if (aliPlayer != null) {
            aliPlayer.setDataSource(urlSource);
        }
        this.f48469l = false;
        this.C = false;
    }

    @Override // com.transsion.player.orplayer.g
    public void setLooping(boolean z10) {
        AliPlayer aliPlayer = this.f48459b;
        if (aliPlayer != null) {
            aliPlayer.setLoop(z10);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void setMute(boolean z10) {
        AliPlayer aliPlayer = this.f48459b;
        if (aliPlayer != null) {
            aliPlayer.setMute(z10);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void setPlayerConfig(bo.d vodConfig) {
        Intrinsics.h(vodConfig, "vodConfig");
        AliPlayer aliPlayer = this.f48459b;
        PlayerConfig config = aliPlayer != null ? aliPlayer.getConfig() : null;
        Intrinsics.f(config, "null cannot be cast to non-null type com.aliyun.player.nativeclass.PlayerConfig");
        config.mClearFrameWhenStop = vodConfig.b();
        config.mEnableLocalCache = vodConfig.j();
        config.mPositionTimerIntervalMs = vodConfig.k();
        config.mMaxBufferDuration = vodConfig.g();
        config.mHighBufferDuration = vodConfig.f();
        config.mStartBufferDuration = vodConfig.n();
        config.mNetworkRetryCount = vodConfig.m();
        config.mNetworkTimeout = vodConfig.h();
        config.mDisableAudio = vodConfig.c();
        config.mDisableVideo = vodConfig.d();
        int iG = vodConfig.g();
        Integer numValueOf = Integer.valueOf(iG);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Aliplayer config:");
        sb2.append(numValueOf);
        if (iG > 0) {
            config.mMaxBufferDuration = iG;
        }
        AliPlayer aliPlayer2 = this.f48459b;
        if (aliPlayer2 != null) {
            aliPlayer2.setConfig(config);
        }
        this.f48476s = RangesKt.g(vodConfig.g(), 1L);
    }

    @Override // com.transsion.player.orplayer.g
    public void setPlayerListener(com.transsion.player.orplayer.f listener) {
        Intrinsics.h(listener, "listener");
        this.f48461d = listener;
    }

    @Override // com.transsion.player.orplayer.g
    public void setScaleMode(ScaleMode scaleMode) {
        Intrinsics.h(scaleMode, "scaleMode");
        int i11 = d.f48490b[scaleMode.ordinal()];
        if (i11 == 1) {
            AliPlayer aliPlayer = this.f48459b;
            if (aliPlayer != null) {
                aliPlayer.setScaleMode(IPlayer.ScaleMode.SCALE_ASPECT_FILL);
                return;
            }
            return;
        }
        if (i11 == 2) {
            AliPlayer aliPlayer2 = this.f48459b;
            if (aliPlayer2 != null) {
                aliPlayer2.setScaleMode(IPlayer.ScaleMode.SCALE_TO_FILL);
                return;
            }
            return;
        }
        if (i11 != 3) {
            throw new NoWhenBranchMatchedException();
        }
        AliPlayer aliPlayer3 = this.f48459b;
        if (aliPlayer3 != null) {
            aliPlayer3.setScaleMode(IPlayer.ScaleMode.SCALE_ASPECT_FIT);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void setSpeed(float f11) {
        AliPlayer aliPlayer = this.f48459b;
        if (aliPlayer != null) {
            aliPlayer.setSpeed(f11);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void setSurfaceView(SurfaceView surfaceView) {
        final SurfaceHolder holder;
        I();
        F();
        this.G = surfaceView;
        l0(surfaceView != null);
        if (surfaceView == null || (holder = surfaceView.getHolder()) == null) {
            return;
        }
        holder.addCallback(this.I);
        a0(new Function0() { // from class: com.transsion.player.orplayer.n
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return w.i0(holder, this);
            }
        });
    }

    @Override // com.transsion.player.orplayer.g
    public void setTextureView(final TextureView textureView) {
        final SurfaceTexture surfaceTexture;
        I();
        F();
        this.F = textureView;
        l0(textureView != null);
        if (textureView != null) {
            textureView.setSurfaceTextureListener(this.J);
        }
        if (textureView == null || (surfaceTexture = textureView.getSurfaceTexture()) == null) {
            return;
        }
        a0(new Function0() { // from class: com.transsion.player.orplayer.i
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return w.j0(textureView, this, surfaceTexture);
            }
        });
    }

    @Override // com.transsion.player.orplayer.g
    public void setVipResolution(boolean z10, int i11) {
    }

    @Override // com.transsion.player.orplayer.g
    public void setVolume(float f11) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("setVolume   volume:");
        sb2.append(f11);
        AliPlayer aliPlayer = this.f48459b;
        if (aliPlayer != null) {
            aliPlayer.setVolume(RangesKt.l(f11, 0.0f, 2.0f));
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void stop() {
        this.f48463f = "";
        com.transsion.player.orplayer.c cVar = this.f48460c;
        if (cVar != null) {
            cVar.g(true);
        }
        AliPlayer aliPlayer = this.f48459b;
        if (aliPlayer != null) {
            aliPlayer.stop();
        }
        com.transsion.player.orplayer.c cVar2 = this.f48460c;
        if (cVar2 != null) {
            cVar2.b();
        }
        this.C = false;
    }
}
