package androidx.media3.exoplayer;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.media3.common.IllegalSeekPositionException;
import androidx.media3.common.PriorityTaskManager;
import androidx.media3.exoplayer.audio.AudioSink;
import androidx.media3.exoplayer.image.ImageOutput;
import androidx.media3.exoplayer.video.spherical.SphericalGLSurfaceView;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes2.dex */
final class b2 extends androidx.media3.common.g implements ExoPlayer {
    private final d A;
    private final androidx.media3.exoplayer.e B;
    private final k4 C;
    private final p4 D;
    private final s4 E;
    private final long F;
    private final m4 G;
    private final androidx.media3.common.util.g H;
    private int I;
    private boolean J;
    private int K;
    private int L;
    private boolean M;
    private c4 N;
    private g2.v O;
    private ExoPlayer.c P;
    private boolean Q;
    private androidx.media3.common.a0.b R;
    private androidx.media3.common.v S;
    private androidx.media3.common.v T;
    private androidx.media3.common.r U;
    private androidx.media3.common.r V;
    private Object W;
    private Surface X;
    private SurfaceHolder Y;
    private SphericalGLSurfaceView Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private boolean f11261a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final j2.f0 f11262b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private TextureView f11263b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final androidx.media3.common.a0.b f11264c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private int f11265c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.media3.common.util.l f11266d = new androidx.media3.common.util.l();

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private int f11267d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Context f11268e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private androidx.media3.common.util.l0 f11269e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final androidx.media3.common.a0 f11270f;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private j f11271f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final w3[] f11272g;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private j f11273g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final w3[] f11274h;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private androidx.media3.common.c f11275h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final j2.e0 f11276i;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private float f11277i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final androidx.media3.common.util.p f11278j;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private boolean f11279j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final r2.f f11280k;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private u1.b f11281k0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final r2 f11282l;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    private boolean f11283l0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final androidx.media3.common.util.t f11284m;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    private boolean f11285m0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final CopyOnWriteArraySet f11286n;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    private int f11287n0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final androidx.media3.common.e0.b f11288o;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    private PriorityTaskManager f11289o0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final List f11290p;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private boolean f11291p0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final boolean f11292q;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    private boolean f11293q0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final androidx.media3.exoplayer.source.r.a f11294r;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    private androidx.media3.common.m f11295r0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final y1.a f11296s;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    private androidx.media3.common.m0 f11297s0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final Looper f11298t;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    private androidx.media3.common.v f11299t0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final androidx.media3.exoplayer.upstream.e f11300u;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    private r3 f11301u0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final long f11302v;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    private int f11303v0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final long f11304w;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    private int f11305w0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final long f11306x;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    private long f11307x0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final androidx.media3.common.util.i f11308y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final c f11309z;

    /* JADX INFO: Access modifiers changed from: private */
    static final class b {
        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void b(Context context, boolean z10, b2 b2Var, y1.f4 f4Var) {
            y1.b4 b4VarE0 = y1.b4.E0(context);
            if (b4VarE0 == null) {
                androidx.media3.common.util.u.h("ExoPlayerImpl", "MediaMetricsService unavailable.");
                return;
            }
            if (z10) {
                b2Var.D(b4VarE0);
            }
            f4Var.b(b4VarE0.L0());
        }

        public static void c(final Context context, final b2 b2Var, final boolean z10, final y1.f4 f4Var) {
            b2Var.B1().createHandler(b2Var.G1(), null).post(new Runnable() { // from class: androidx.media3.exoplayer.c2
                @Override // java.lang.Runnable
                public final void run() {
                    b2.b.b(context, z10, b2Var, f4Var);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class c implements androidx.media3.exoplayer.video.i0, androidx.media3.exoplayer.audio.x, i2.h, e2.b, SurfaceHolder.Callback, TextureView.SurfaceTextureListener, SphericalGLSurfaceView.b, androidx.media3.exoplayer.e.b, k4.b, ExoPlayer.a {
        private c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void I(androidx.media3.common.a0.d dVar) {
            dVar.onMediaMetadataChanged(b2.this.S);
        }

        @Override // androidx.media3.exoplayer.audio.x
        public void a(Exception exc) {
            b2.this.f11296s.a(exc);
        }

        @Override // androidx.media3.exoplayer.video.i0
        public void b(String str) {
            b2.this.f11296s.b(str);
        }

        @Override // androidx.media3.exoplayer.audio.x
        public void c(String str) {
            b2.this.f11296s.c(str);
        }

        @Override // androidx.media3.exoplayer.audio.x
        public void d(long j11) {
            b2.this.f11296s.d(j11);
        }

        @Override // androidx.media3.exoplayer.video.i0
        public void e(Exception exc) {
            b2.this.f11296s.e(exc);
        }

        @Override // androidx.media3.exoplayer.video.i0
        public void f(Object obj, long j11) {
            b2.this.f11296s.f(obj, j11);
            if (b2.this.W == obj) {
                b2.this.f11284m.l(26, new androidx.media3.common.util.t.a() { // from class: androidx.media3.exoplayer.k2
                    @Override // androidx.media3.common.util.t.a
                    public final void invoke(Object obj2) {
                        ((androidx.media3.common.a0.d) obj2).onRenderedFirstFrame();
                    }
                });
            }
        }

        @Override // androidx.media3.exoplayer.audio.x
        public void g(Exception exc) {
            b2.this.f11296s.g(exc);
        }

        @Override // androidx.media3.exoplayer.audio.x
        public void h(int i11, long j11, long j12) {
            b2.this.f11296s.h(i11, j11, j12);
        }

        @Override // androidx.media3.exoplayer.video.i0
        public void i(long j11, int i11) {
            b2.this.f11296s.i(j11, i11);
        }

        @Override // androidx.media3.exoplayer.audio.x
        public void j(AudioSink.a aVar) {
            b2.this.f11296s.j(aVar);
        }

        @Override // androidx.media3.exoplayer.audio.x
        public void k(AudioSink.a aVar) {
            b2.this.f11296s.k(aVar);
        }

        @Override // androidx.media3.exoplayer.k4.b
        public void l(int i11) {
            final androidx.media3.common.m mVarW1 = b2.w1(b2.this.C);
            if (mVarW1.equals(b2.this.f11295r0)) {
                return;
            }
            b2.this.f11295r0 = mVarW1;
            b2.this.f11284m.l(29, new androidx.media3.common.util.t.a() { // from class: androidx.media3.exoplayer.i2
                @Override // androidx.media3.common.util.t.a
                public final void invoke(Object obj) {
                    ((androidx.media3.common.a0.d) obj).onDeviceInfoChanged(mVarW1);
                }
            });
        }

        @Override // androidx.media3.exoplayer.e.b
        public void m() {
            b2.this.I2(false, 3);
        }

        @Override // androidx.media3.exoplayer.audio.x
        public void n(j jVar) {
            b2.this.f11273g0 = jVar;
            b2.this.f11296s.n(jVar);
        }

        @Override // androidx.media3.exoplayer.video.i0
        public void o(j jVar) {
            b2.this.f11271f0 = jVar;
            b2.this.f11296s.o(jVar);
        }

        @Override // androidx.media3.exoplayer.audio.x
        public void onAudioDecoderInitialized(String str, long j11, long j12) {
            b2.this.f11296s.onAudioDecoderInitialized(str, j11, j12);
        }

        @Override // i2.h
        public void onCues(final List list) {
            b2.this.f11284m.l(27, new androidx.media3.common.util.t.a() { // from class: androidx.media3.exoplayer.g2
                @Override // androidx.media3.common.util.t.a
                public final void invoke(Object obj) {
                    ((androidx.media3.common.a0.d) obj).onCues(list);
                }
            });
        }

        @Override // i2.h
        public void onCues(final u1.b bVar) {
            b2.this.f11281k0 = bVar;
            b2.this.f11284m.l(27, new androidx.media3.common.util.t.a() { // from class: androidx.media3.exoplayer.d2
                @Override // androidx.media3.common.util.t.a
                public final void invoke(Object obj) {
                    ((androidx.media3.common.a0.d) obj).onCues(bVar);
                }
            });
        }

        @Override // androidx.media3.exoplayer.video.i0
        public void onDroppedFrames(int i11, long j11) {
            b2.this.f11296s.onDroppedFrames(i11, j11);
        }

        @Override // e2.b
        public void onMetadata(final androidx.media3.common.x xVar) {
            b2 b2Var = b2.this;
            b2Var.f11299t0 = b2Var.f11299t0.a().M(xVar).J();
            androidx.media3.common.v vVarS1 = b2.this.s1();
            if (!vVarS1.equals(b2.this.S)) {
                b2.this.S = vVarS1;
                b2.this.f11284m.i(14, new androidx.media3.common.util.t.a() { // from class: androidx.media3.exoplayer.e2
                    @Override // androidx.media3.common.util.t.a
                    public final void invoke(Object obj) {
                        this.f11623a.I((androidx.media3.common.a0.d) obj);
                    }
                });
            }
            b2.this.f11284m.i(28, new androidx.media3.common.util.t.a() { // from class: androidx.media3.exoplayer.f2
                @Override // androidx.media3.common.util.t.a
                public final void invoke(Object obj) {
                    ((androidx.media3.common.a0.d) obj).onMetadata(xVar);
                }
            });
            b2.this.f11284m.f();
        }

        @Override // androidx.media3.exoplayer.audio.x
        public void onSkipSilenceEnabledChanged(final boolean z10) {
            if (b2.this.f11279j0 == z10) {
                return;
            }
            b2.this.f11279j0 = z10;
            b2.this.f11284m.l(23, new androidx.media3.common.util.t.a() { // from class: androidx.media3.exoplayer.l2
                @Override // androidx.media3.common.util.t.a
                public final void invoke(Object obj) {
                    ((androidx.media3.common.a0.d) obj).onSkipSilenceEnabledChanged(z10);
                }
            });
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i11, int i12) {
            b2.this.C2(surfaceTexture);
            b2.this.p2(i11, i12);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            b2.this.D2(null);
            b2.this.p2(0, 0);
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i11, int i12) {
            b2.this.p2(i11, i12);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        @Override // androidx.media3.exoplayer.video.i0
        public void onVideoDecoderInitialized(String str, long j11, long j12) {
            b2.this.f11296s.onVideoDecoderInitialized(str, j11, j12);
        }

        @Override // androidx.media3.exoplayer.video.i0
        public void onVideoSizeChanged(final androidx.media3.common.m0 m0Var) {
            b2.this.f11297s0 = m0Var;
            b2.this.f11284m.l(25, new androidx.media3.common.util.t.a() { // from class: androidx.media3.exoplayer.h2
                @Override // androidx.media3.common.util.t.a
                public final void invoke(Object obj) {
                    ((androidx.media3.common.a0.d) obj).onVideoSizeChanged(m0Var);
                }
            });
        }

        @Override // androidx.media3.exoplayer.video.spherical.SphericalGLSurfaceView.b
        public void p(Surface surface) {
            b2.this.D2(null);
        }

        @Override // androidx.media3.exoplayer.video.spherical.SphericalGLSurfaceView.b
        public void q(Surface surface) {
            b2.this.D2(surface);
        }

        @Override // androidx.media3.exoplayer.k4.b
        public void r(final int i11, final boolean z10) {
            b2.this.f11284m.l(30, new androidx.media3.common.util.t.a() { // from class: androidx.media3.exoplayer.j2
                @Override // androidx.media3.common.util.t.a
                public final void invoke(Object obj) {
                    ((androidx.media3.common.a0.d) obj).onDeviceVolumeChanged(i11, z10);
                }
            });
        }

        @Override // androidx.media3.exoplayer.audio.x
        public void s(androidx.media3.common.r rVar, k kVar) {
            b2.this.V = rVar;
            b2.this.f11296s.s(rVar, kVar);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i11, int i12, int i13) {
            b2.this.p2(i12, i13);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            if (b2.this.f11261a0) {
                b2.this.D2(surfaceHolder.getSurface());
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            if (b2.this.f11261a0) {
                b2.this.D2(null);
            }
            b2.this.p2(0, 0);
        }

        @Override // androidx.media3.exoplayer.audio.x
        public void t(j jVar) {
            b2.this.f11296s.t(jVar);
            b2.this.V = null;
            b2.this.f11273g0 = null;
        }

        @Override // androidx.media3.exoplayer.video.i0
        public void u(androidx.media3.common.r rVar, k kVar) {
            b2.this.U = rVar;
            b2.this.f11296s.u(rVar, kVar);
        }

        @Override // androidx.media3.exoplayer.video.i0
        public void v(j jVar) {
            b2.this.f11296s.v(jVar);
            b2.this.U = null;
            b2.this.f11271f0 = null;
        }

        @Override // androidx.media3.exoplayer.ExoPlayer.a
        public /* synthetic */ void w(boolean z10) {
            p0.a(this, z10);
        }

        @Override // androidx.media3.exoplayer.ExoPlayer.a
        public void x(boolean z10) {
            b2.this.L2();
        }
    }

    private static final class d implements androidx.media3.exoplayer.video.t, k2.a, t3.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private androidx.media3.exoplayer.video.t f11311a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private k2.a f11312b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private androidx.media3.exoplayer.video.t f11313c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private k2.a f11314d;

        private d() {
        }

        @Override // k2.a
        public void a(long j11, float[] fArr) {
            k2.a aVar = this.f11314d;
            if (aVar != null) {
                aVar.a(j11, fArr);
            }
            k2.a aVar2 = this.f11312b;
            if (aVar2 != null) {
                aVar2.a(j11, fArr);
            }
        }

        @Override // k2.a
        public void b() {
            k2.a aVar = this.f11314d;
            if (aVar != null) {
                aVar.b();
            }
            k2.a aVar2 = this.f11312b;
            if (aVar2 != null) {
                aVar2.b();
            }
        }

        @Override // androidx.media3.exoplayer.video.t
        public void f(long j11, long j12, androidx.media3.common.r rVar, MediaFormat mediaFormat) {
            androidx.media3.exoplayer.video.t tVar = this.f11313c;
            if (tVar != null) {
                tVar.f(j11, j12, rVar, mediaFormat);
            }
            androidx.media3.exoplayer.video.t tVar2 = this.f11311a;
            if (tVar2 != null) {
                tVar2.f(j11, j12, rVar, mediaFormat);
            }
        }

        @Override // androidx.media3.exoplayer.t3.b
        public void handleMessage(int i11, Object obj) {
            if (i11 == 7) {
                this.f11311a = (androidx.media3.exoplayer.video.t) obj;
                return;
            }
            if (i11 == 8) {
                this.f11312b = (k2.a) obj;
                return;
            }
            if (i11 != 10000) {
                return;
            }
            SphericalGLSurfaceView sphericalGLSurfaceView = (SphericalGLSurfaceView) obj;
            if (sphericalGLSurfaceView == null) {
                this.f11313c = null;
                this.f11314d = null;
            } else {
                this.f11313c = sphericalGLSurfaceView.getVideoFrameMetadataListener();
                this.f11314d = sphericalGLSurfaceView.getCameraMotionListener();
            }
        }
    }

    private static final class e implements c3 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object f11315a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final androidx.media3.exoplayer.source.r f11316b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private androidx.media3.common.e0 f11317c;

        public e(Object obj, androidx.media3.exoplayer.source.p pVar) {
            this.f11315a = obj;
            this.f11316b = pVar;
            this.f11317c = pVar.W();
        }

        @Override // androidx.media3.exoplayer.c3
        public Object a() {
            return this.f11315a;
        }

        @Override // androidx.media3.exoplayer.c3
        public androidx.media3.common.e0 b() {
            return this.f11317c;
        }

        public void d(androidx.media3.common.e0 e0Var) {
            this.f11317c = e0Var;
        }
    }

    static {
        androidx.media3.common.u.a("media3.exoplayer");
    }

    public b2(ExoPlayer.b bVar, androidx.media3.common.a0 a0Var) {
        try {
            androidx.media3.common.util.u.f("ExoPlayerImpl", "Init " + Integer.toHexString(System.identityHashCode(this)) + " [AndroidXMedia3/1.7.1] [" + androidx.media3.common.util.a1.f10354e + "]");
            this.f11268e = bVar.f10959a.getApplicationContext();
            this.f11296s = (y1.a) bVar.f10967i.apply(bVar.f10960b);
            this.f11287n0 = bVar.f10969k;
            this.f11289o0 = bVar.f10970l;
            this.f11275h0 = bVar.f10971m;
            this.f11265c0 = bVar.f10977s;
            this.f11267d0 = bVar.f10978t;
            this.f11279j0 = bVar.f10975q;
            this.F = bVar.B;
            c cVar = new c();
            this.f11309z = cVar;
            this.A = new d();
            Handler handler = new Handler(bVar.f10968j);
            b4 b4Var = (b4) bVar.f10962d.get();
            w3[] w3VarArrA = b4Var.a(handler, cVar, cVar, cVar, cVar);
            this.f11272g = w3VarArrA;
            androidx.media3.common.util.a.g(w3VarArrA.length > 0);
            this.f11274h = new w3[w3VarArrA.length];
            int i11 = 0;
            while (true) {
                w3[] w3VarArr = this.f11274h;
                if (i11 >= w3VarArr.length) {
                    break;
                }
                w3 w3Var = this.f11272g[i11];
                c cVar2 = this.f11309z;
                w3VarArr[i11] = b4Var.b(w3Var, handler, cVar2, cVar2, cVar2, cVar2);
                i11++;
            }
            j2.e0 e0Var = (j2.e0) bVar.f10964f.get();
            this.f11276i = e0Var;
            this.f11294r = (androidx.media3.exoplayer.source.r.a) bVar.f10963e.get();
            androidx.media3.exoplayer.upstream.e eVar = (androidx.media3.exoplayer.upstream.e) bVar.f10966h.get();
            this.f11300u = eVar;
            this.f11292q = bVar.f10979u;
            this.N = bVar.f10980v;
            this.f11302v = bVar.f10981w;
            this.f11304w = bVar.f10982x;
            this.f11306x = bVar.f10983y;
            this.Q = bVar.C;
            Looper looper = bVar.f10968j;
            this.f11298t = looper;
            androidx.media3.common.util.i iVar = bVar.f10960b;
            this.f11308y = iVar;
            androidx.media3.common.a0 a0Var2 = a0Var == null ? this : a0Var;
            this.f11270f = a0Var2;
            this.f11284m = new androidx.media3.common.util.t(looper, iVar, new androidx.media3.common.util.t.b() { // from class: androidx.media3.exoplayer.j1
                @Override // androidx.media3.common.util.t.b
                public final void a(Object obj, androidx.media3.common.p pVar) {
                    this.f12043a.N1((androidx.media3.common.a0.d) obj, pVar);
                }
            });
            this.f11286n = new CopyOnWriteArraySet();
            this.f11290p = new ArrayList();
            this.O = new g2.v.a(0);
            this.P = ExoPlayer.c.f10985b;
            w3[] w3VarArr2 = this.f11272g;
            j2.f0 f0Var = new j2.f0(new z3[w3VarArr2.length], new j2.z[w3VarArr2.length], androidx.media3.common.i0.f10084b, null);
            this.f11262b = f0Var;
            this.f11288o = new androidx.media3.common.e0.b();
            androidx.media3.common.a0.b bVarE = new androidx.media3.common.a0.b.a().c(1, 2, 3, 13, 14, 15, 16, 17, 18, 19, 31, 20, 30, 21, 35, 22, 24, 27, 28, 32).d(29, e0Var.h()).d(23, bVar.f10976r).d(25, bVar.f10976r).d(33, bVar.f10976r).d(26, bVar.f10976r).d(34, bVar.f10976r).e();
            this.f11264c = bVarE;
            this.R = new androidx.media3.common.a0.b.a().b(bVarE).a(4).a(10).e();
            this.f11278j = iVar.createHandler(looper, null);
            r2.f fVar = new r2.f() { // from class: androidx.media3.exoplayer.l1
                @Override // androidx.media3.exoplayer.r2.f
                public final void a(r2.e eVar2) {
                    this.f12097a.P1(eVar2);
                }
            };
            this.f11280k = fVar;
            this.f11301u0 = r3.k(f0Var);
            this.f11296s.H(a0Var2, looper);
            y1.f4 f4Var = new y1.f4(bVar.H);
            r2 r2Var = new r2(this.f11268e, this.f11272g, this.f11274h, e0Var, f0Var, (u2) bVar.f10965g.get(), eVar, this.I, this.J, this.f11296s, this.N, bVar.f10984z, bVar.A, this.Q, bVar.I, looper, iVar, fVar, f4Var, bVar.E, this.P);
            this.f11282l = r2Var;
            Looper looperK = r2Var.K();
            this.f11277i0 = 1.0f;
            this.I = 0;
            androidx.media3.common.v vVar = androidx.media3.common.v.I;
            this.S = vVar;
            this.T = vVar;
            this.f11299t0 = vVar;
            this.f11303v0 = -1;
            this.f11281k0 = u1.b.f76592c;
            this.f11283l0 = true;
            M(this.f11296s);
            eVar.d(new Handler(looper), this.f11296s);
            n1(this.f11309z);
            long j11 = bVar.f10961c;
            if (j11 > 0) {
                r2Var.E(j11);
            }
            if (androidx.media3.common.util.a1.f10350a >= 31) {
                b.c(this.f11268e, this, bVar.D, f4Var);
            }
            androidx.media3.common.util.g gVar = new androidx.media3.common.util.g(0, looperK, looper, iVar, new androidx.media3.common.util.g.a() { // from class: androidx.media3.exoplayer.m1
                @Override // androidx.media3.common.util.g.a
                public final void a(Object obj, Object obj2) {
                    this.f12128a.q2(((Integer) obj).intValue(), ((Integer) obj2).intValue());
                }
            });
            this.H = gVar;
            gVar.h(new Runnable() { // from class: androidx.media3.exoplayer.n1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f12275a.Q1();
                }
            });
            androidx.media3.exoplayer.e eVar2 = new androidx.media3.exoplayer.e(bVar.f10959a, looperK, bVar.f10968j, this.f11309z, iVar);
            this.B = eVar2;
            eVar2.f(bVar.f10974p);
            if (bVar.G) {
                m4 m4Var = bVar.J;
                this.G = m4Var;
                m4Var.b(new m4.a() { // from class: androidx.media3.exoplayer.o1
                    @Override // androidx.media3.exoplayer.m4.a
                    public final void a(boolean z10) {
                        this.f12298a.r2(z10);
                    }
                }, this.f11268e, looper, looperK, iVar);
            } else {
                this.G = null;
            }
            if (bVar.f10976r) {
                this.C = new k4(bVar.f10959a, this.f11309z, this.f11275h0.b(), looperK, looper, iVar);
            } else {
                this.C = null;
            }
            p4 p4Var = new p4(bVar.f10959a, looperK, iVar);
            this.D = p4Var;
            p4Var.e(bVar.f10973o != 0);
            s4 s4Var = new s4(bVar.f10959a, looperK, iVar);
            this.E = s4Var;
            s4Var.e(bVar.f10973o == 2);
            this.f11295r0 = androidx.media3.common.m.f10098e;
            this.f11297s0 = androidx.media3.common.m0.f10111e;
            this.f11269e0 = androidx.media3.common.util.l0.f10407c;
            r2Var.d1(this.f11275h0, bVar.f10972n);
            w2(1, 3, this.f11275h0);
            w2(2, 4, Integer.valueOf(this.f11265c0));
            w2(2, 5, Integer.valueOf(this.f11267d0));
            w2(1, 9, Boolean.valueOf(this.f11279j0));
            w2(2, 7, this.A);
            w2(6, 8, this.A);
            x2(16, Integer.valueOf(this.f11287n0));
        } finally {
            this.f11266d.f();
        }
    }

    private Pair A1(r3 r3Var, r3 r3Var2, boolean z10, int i11, boolean z11, boolean z12) {
        androidx.media3.common.e0 e0Var = r3Var2.f12543a;
        androidx.media3.common.e0 e0Var2 = r3Var.f12543a;
        if (e0Var2.q() && e0Var.q()) {
            return new Pair(Boolean.FALSE, -1);
        }
        int i12 = 3;
        if (e0Var2.q() != e0Var.q()) {
            return new Pair(Boolean.TRUE, 3);
        }
        if (e0Var.n(e0Var.h(r3Var2.f12544b.f12883a, this.f11288o).f9936c, this.f9976a).f9951a.equals(e0Var2.n(e0Var2.h(r3Var.f12544b.f12883a, this.f11288o).f9936c, this.f9976a).f9951a)) {
            if (z10 && i11 == 0 && r3Var2.f12544b.f12886d < r3Var.f12544b.f12886d) {
                return new Pair(Boolean.TRUE, 0);
            }
            return (z10 && i11 == 1 && z12) ? new Pair(Boolean.TRUE, 2) : new Pair(Boolean.FALSE, -1);
        }
        if (z10 && i11 == 0) {
            i12 = 1;
        } else if (z10 && i11 == 1) {
            i12 = 2;
        } else if (!z11) {
            throw new IllegalStateException();
        }
        return new Pair(Boolean.TRUE, Integer.valueOf(i12));
    }

    private void A2(List list, int i11, long j11, boolean z10) {
        int i12;
        long j12;
        int iE1 = E1(this.f11301u0);
        long currentPosition = getCurrentPosition();
        this.K++;
        if (!this.f11290p.isEmpty()) {
            u2(0, this.f11290p.size());
        }
        List listO1 = o1(0, list);
        androidx.media3.common.e0 e0VarX1 = x1();
        if (!e0VarX1.q() && i11 >= e0VarX1.p()) {
            throw new IllegalSeekPositionException(e0VarX1, i11, j11);
        }
        if (z10) {
            int iA = e0VarX1.a(this.J);
            j12 = C.TIME_UNSET;
            i12 = iA;
        } else if (i11 == -1) {
            i12 = iE1;
            j12 = currentPosition;
        } else {
            i12 = i11;
            j12 = j11;
        }
        r3 r3VarN2 = n2(this.f11301u0, e0VarX1, o2(e0VarX1, i12, j12));
        int i13 = r3VarN2.f12547e;
        if (i12 != -1 && i13 != 1) {
            i13 = (e0VarX1.q() || i12 >= e0VarX1.p()) ? 4 : 2;
        }
        r3 r3VarM2 = m2(r3VarN2, i13);
        this.f11282l.i1(listO1, i12, androidx.media3.common.util.a1.R0(j12), this.O);
        J2(r3VarM2, 0, (this.f11301u0.f12544b.f12883a.equals(r3VarM2.f12544b.f12883a) || this.f11301u0.f12543a.q()) ? false : true, 4, D1(r3VarM2), -1, false);
    }

    private void B2(SurfaceHolder surfaceHolder) {
        this.f11261a0 = false;
        this.Y = surfaceHolder;
        surfaceHolder.addCallback(this.f11309z);
        Surface surface = this.Y.getSurface();
        if (surface == null || !surface.isValid()) {
            p2(0, 0);
        } else {
            Rect surfaceFrame = this.Y.getSurfaceFrame();
            p2(surfaceFrame.width(), surfaceFrame.height());
        }
    }

    private long C1(r3 r3Var) {
        if (!r3Var.f12544b.b()) {
            return androidx.media3.common.util.a1.y1(D1(r3Var));
        }
        r3Var.f12543a.h(r3Var.f12544b.f12883a, this.f11288o);
        return r3Var.f12545c == C.TIME_UNSET ? r3Var.f12543a.n(E1(r3Var), this.f9976a).b() : this.f11288o.n() + androidx.media3.common.util.a1.y1(r3Var.f12545c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C2(SurfaceTexture surfaceTexture) {
        Surface surface = new Surface(surfaceTexture);
        D2(surface);
        this.X = surface;
    }

    private long D1(r3 r3Var) {
        if (r3Var.f12543a.q()) {
            return androidx.media3.common.util.a1.R0(this.f11307x0);
        }
        long jM = r3Var.f12558p ? r3Var.m() : r3Var.f12561s;
        return r3Var.f12544b.b() ? jM : s2(r3Var.f12543a, r3Var.f12544b, jM);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D2(Object obj) {
        Object obj2 = this.W;
        boolean z10 = (obj2 == null || obj2 == obj) ? false : true;
        boolean zX1 = this.f11282l.x1(obj, z10 ? this.F : C.TIME_UNSET);
        if (z10) {
            Object obj3 = this.W;
            Surface surface = this.X;
            if (obj3 == surface) {
                surface.release();
                this.X = null;
            }
        }
        this.W = obj;
        if (zX1) {
            return;
        }
        F2(ExoPlaybackException.createForUnexpected(new ExoTimeoutException(3), 1003));
    }

    private int E1(r3 r3Var) {
        return r3Var.f12543a.q() ? this.f11303v0 : r3Var.f12543a.h(r3Var.f12544b.f12883a, this.f11288o).f9936c;
    }

    private Pair F1(androidx.media3.common.e0 e0Var, androidx.media3.common.e0 e0Var2, int i11, long j11) {
        boolean zQ = e0Var.q();
        long j12 = C.TIME_UNSET;
        if (zQ || e0Var2.q()) {
            boolean z10 = !e0Var.q() && e0Var2.q();
            int i12 = z10 ? -1 : i11;
            if (!z10) {
                j12 = j11;
            }
            return o2(e0Var2, i12, j12);
        }
        Pair pairJ = e0Var.j(this.f9976a, this.f11288o, i11, androidx.media3.common.util.a1.R0(j11));
        Object obj = ((Pair) androidx.media3.common.util.a1.i(pairJ)).first;
        if (e0Var2.b(obj) != -1) {
            return pairJ;
        }
        int iS0 = r2.S0(this.f9976a, this.f11288o, this.I, this.J, obj, e0Var, e0Var2);
        return iS0 != -1 ? o2(e0Var2, iS0, e0Var2.n(iS0, this.f9976a).b()) : o2(e0Var2, -1, C.TIME_UNSET);
    }

    private void F2(ExoPlaybackException exoPlaybackException) {
        r3 r3Var = this.f11301u0;
        r3 r3VarC = r3Var.c(r3Var.f12544b);
        r3VarC.f12559q = r3VarC.f12561s;
        r3VarC.f12560r = 0L;
        r3 r3VarM2 = m2(r3VarC, 1);
        if (exoPlaybackException != null) {
            r3VarM2 = r3VarM2.f(exoPlaybackException);
        }
        this.K++;
        this.f11282l.H1();
        J2(r3VarM2, 0, false, 5, C.TIME_UNSET, -1, false);
    }

    private void G2() {
        androidx.media3.common.a0.b bVar = this.R;
        androidx.media3.common.a0.b bVarO = androidx.media3.common.util.a1.O(this.f11270f, this.f11264c);
        this.R = bVarO;
        if (bVarO.equals(bVar)) {
            return;
        }
        this.f11284m.i(13, new androidx.media3.common.util.t.a() { // from class: androidx.media3.exoplayer.r1
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                this.f12487a.X1((androidx.media3.common.a0.d) obj);
            }
        });
    }

    private androidx.media3.common.a0.e H1(long j11) {
        androidx.media3.common.t tVar;
        Object obj;
        int iB;
        Object obj2;
        int iT = t();
        if (this.f11301u0.f12543a.q()) {
            tVar = null;
            obj = null;
            iB = -1;
            obj2 = null;
        } else {
            r3 r3Var = this.f11301u0;
            Object obj3 = r3Var.f12544b.f12883a;
            r3Var.f12543a.h(obj3, this.f11288o);
            iB = this.f11301u0.f12543a.b(obj3);
            obj = obj3;
            obj2 = this.f11301u0.f12543a.n(iT, this.f9976a).f9951a;
            tVar = this.f9976a.f9953c;
        }
        long jY1 = androidx.media3.common.util.a1.y1(j11);
        long jY2 = this.f11301u0.f12544b.b() ? androidx.media3.common.util.a1.y1(J1(this.f11301u0)) : jY1;
        androidx.media3.exoplayer.source.r.b bVar = this.f11301u0.f12544b;
        return new androidx.media3.common.a0.e(obj2, iT, tVar, obj, iB, jY1, jY2, bVar.f12884b, bVar.f12885c);
    }

    private void H2(int i11, int i12, List list) {
        this.K++;
        this.f11282l.M1(i11, i12, list);
        for (int i13 = i11; i13 < i12; i13++) {
            e eVar = (e) this.f11290p.get(i13);
            eVar.d(new g2.x(eVar.b(), (androidx.media3.common.t) list.get(i13 - i11)));
        }
        J2(this.f11301u0.j(x1()), 0, false, 4, C.TIME_UNSET, -1, false);
    }

    private androidx.media3.common.a0.e I1(int i11, r3 r3Var, int i12) {
        int i13;
        Object obj;
        androidx.media3.common.t tVar;
        Object obj2;
        int i14;
        long jJ1;
        long jJ2;
        androidx.media3.common.e0.b bVar = new androidx.media3.common.e0.b();
        if (r3Var.f12543a.q()) {
            i13 = i12;
            obj = null;
            tVar = null;
            obj2 = null;
            i14 = -1;
        } else {
            Object obj3 = r3Var.f12544b.f12883a;
            r3Var.f12543a.h(obj3, bVar);
            int i15 = bVar.f9936c;
            int iB = r3Var.f12543a.b(obj3);
            Object obj4 = r3Var.f12543a.n(i15, this.f9976a).f9951a;
            tVar = this.f9976a.f9953c;
            obj2 = obj3;
            i14 = iB;
            obj = obj4;
            i13 = i15;
        }
        if (i11 == 0) {
            if (r3Var.f12544b.b()) {
                androidx.media3.exoplayer.source.r.b bVar2 = r3Var.f12544b;
                jJ1 = bVar.b(bVar2.f12884b, bVar2.f12885c);
                jJ2 = J1(r3Var);
            } else {
                jJ1 = r3Var.f12544b.f12887e != -1 ? J1(this.f11301u0) : bVar.f9938e + bVar.f9937d;
                jJ2 = jJ1;
            }
        } else if (r3Var.f12544b.b()) {
            jJ1 = r3Var.f12561s;
            jJ2 = J1(r3Var);
        } else {
            jJ1 = bVar.f9938e + r3Var.f12561s;
            jJ2 = jJ1;
        }
        long jY1 = androidx.media3.common.util.a1.y1(jJ1);
        long jY2 = androidx.media3.common.util.a1.y1(jJ2);
        androidx.media3.exoplayer.source.r.b bVar3 = r3Var.f12544b;
        return new androidx.media3.common.a0.e(obj, i13, tVar, obj2, i14, jY1, jY2, bVar3.f12884b, bVar3.f12885c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I2(boolean z10, int i11) {
        int iV1 = v1(z10);
        r3 r3VarA = this.f11301u0;
        if (r3VarA.f12554l == z10 && r3VarA.f12556n == iV1 && r3VarA.f12555m == i11) {
            return;
        }
        this.K++;
        if (r3VarA.f12558p) {
            r3VarA = r3VarA.a();
        }
        r3 r3VarE = r3VarA.e(z10, i11, iV1);
        this.f11282l.l1(z10, i11, iV1);
        J2(r3VarE, 0, false, 5, C.TIME_UNSET, -1, false);
    }

    private static long J1(r3 r3Var) {
        androidx.media3.common.e0.c cVar = new androidx.media3.common.e0.c();
        androidx.media3.common.e0.b bVar = new androidx.media3.common.e0.b();
        r3Var.f12543a.h(r3Var.f12544b.f12883a, bVar);
        return r3Var.f12545c == C.TIME_UNSET ? r3Var.f12543a.n(bVar.f9936c, cVar).c() : bVar.o() + r3Var.f12545c;
    }

    private void J2(final r3 r3Var, final int i11, boolean z10, final int i12, long j11, int i13, boolean z11) {
        r3 r3Var2 = this.f11301u0;
        this.f11301u0 = r3Var;
        boolean zEquals = r3Var2.f12543a.equals(r3Var.f12543a);
        Pair pairA1 = A1(r3Var, r3Var2, z10, i12, !zEquals, z11);
        boolean zBooleanValue = ((Boolean) pairA1.first).booleanValue();
        final int iIntValue = ((Integer) pairA1.second).intValue();
        final androidx.media3.common.t tVar = null;
        if (zBooleanValue) {
            if (!r3Var.f12543a.q()) {
                tVar = r3Var.f12543a.n(r3Var.f12543a.h(r3Var.f12544b.f12883a, this.f11288o).f9936c, this.f9976a).f9953c;
            }
            this.f11299t0 = androidx.media3.common.v.I;
        }
        if (zBooleanValue || !r3Var2.f12552j.equals(r3Var.f12552j)) {
            this.f11299t0 = this.f11299t0.a().N(r3Var.f12552j).J();
        }
        androidx.media3.common.v vVarS1 = s1();
        boolean zEquals2 = vVarS1.equals(this.S);
        this.S = vVarS1;
        boolean z12 = r3Var2.f12554l != r3Var.f12554l;
        boolean z13 = r3Var2.f12547e != r3Var.f12547e;
        if (z13 || z12) {
            L2();
        }
        boolean z14 = r3Var2.f12549g;
        boolean z15 = r3Var.f12549g;
        boolean z16 = z14 != z15;
        if (z16) {
            K2(z15);
        }
        if (!zEquals) {
            this.f11284m.i(0, new androidx.media3.common.util.t.a() { // from class: androidx.media3.exoplayer.z0
                @Override // androidx.media3.common.util.t.a
                public final void invoke(Object obj) {
                    b2.Y1(r3Var, i11, (androidx.media3.common.a0.d) obj);
                }
            });
        }
        if (z10) {
            final androidx.media3.common.a0.e eVarI1 = I1(i12, r3Var2, i13);
            final androidx.media3.common.a0.e eVarH1 = H1(j11);
            this.f11284m.i(11, new androidx.media3.common.util.t.a() { // from class: androidx.media3.exoplayer.w1
                @Override // androidx.media3.common.util.t.a
                public final void invoke(Object obj) {
                    b2.Z1(i12, eVarI1, eVarH1, (androidx.media3.common.a0.d) obj);
                }
            });
        }
        if (zBooleanValue) {
            this.f11284m.i(1, new androidx.media3.common.util.t.a() { // from class: androidx.media3.exoplayer.x1
                @Override // androidx.media3.common.util.t.a
                public final void invoke(Object obj) {
                    ((androidx.media3.common.a0.d) obj).onMediaItemTransition(tVar, iIntValue);
                }
            });
        }
        if (r3Var2.f12548f != r3Var.f12548f) {
            this.f11284m.i(10, new androidx.media3.common.util.t.a() { // from class: androidx.media3.exoplayer.y1
                @Override // androidx.media3.common.util.t.a
                public final void invoke(Object obj) {
                    b2.b2(r3Var, (androidx.media3.common.a0.d) obj);
                }
            });
            if (r3Var.f12548f != null) {
                this.f11284m.i(10, new androidx.media3.common.util.t.a() { // from class: androidx.media3.exoplayer.z1
                    @Override // androidx.media3.common.util.t.a
                    public final void invoke(Object obj) {
                        b2.c2(r3Var, (androidx.media3.common.a0.d) obj);
                    }
                });
            }
        }
        j2.f0 f0Var = r3Var2.f12551i;
        j2.f0 f0Var2 = r3Var.f12551i;
        if (f0Var != f0Var2) {
            this.f11276i.i(f0Var2.f65758e);
            this.f11284m.i(2, new androidx.media3.common.util.t.a() { // from class: androidx.media3.exoplayer.a2
                @Override // androidx.media3.common.util.t.a
                public final void invoke(Object obj) {
                    b2.d2(r3Var, (androidx.media3.common.a0.d) obj);
                }
            });
        }
        if (!zEquals2) {
            final androidx.media3.common.v vVar = this.S;
            this.f11284m.i(14, new androidx.media3.common.util.t.a() { // from class: androidx.media3.exoplayer.a1
                @Override // androidx.media3.common.util.t.a
                public final void invoke(Object obj) {
                    ((androidx.media3.common.a0.d) obj).onMediaMetadataChanged(vVar);
                }
            });
        }
        if (z16) {
            this.f11284m.i(3, new androidx.media3.common.util.t.a() { // from class: androidx.media3.exoplayer.b1
                @Override // androidx.media3.common.util.t.a
                public final void invoke(Object obj) {
                    b2.f2(r3Var, (androidx.media3.common.a0.d) obj);
                }
            });
        }
        if (z13 || z12) {
            this.f11284m.i(-1, new androidx.media3.common.util.t.a() { // from class: androidx.media3.exoplayer.c1
                @Override // androidx.media3.common.util.t.a
                public final void invoke(Object obj) {
                    b2.g2(r3Var, (androidx.media3.common.a0.d) obj);
                }
            });
        }
        if (z13) {
            this.f11284m.i(4, new androidx.media3.common.util.t.a() { // from class: androidx.media3.exoplayer.d1
                @Override // androidx.media3.common.util.t.a
                public final void invoke(Object obj) {
                    b2.h2(r3Var, (androidx.media3.common.a0.d) obj);
                }
            });
        }
        if (z12 || r3Var2.f12555m != r3Var.f12555m) {
            this.f11284m.i(5, new androidx.media3.common.util.t.a() { // from class: androidx.media3.exoplayer.k1
                @Override // androidx.media3.common.util.t.a
                public final void invoke(Object obj) {
                    b2.i2(r3Var, (androidx.media3.common.a0.d) obj);
                }
            });
        }
        if (r3Var2.f12556n != r3Var.f12556n) {
            this.f11284m.i(6, new androidx.media3.common.util.t.a() { // from class: androidx.media3.exoplayer.t1
                @Override // androidx.media3.common.util.t.a
                public final void invoke(Object obj) {
                    b2.j2(r3Var, (androidx.media3.common.a0.d) obj);
                }
            });
        }
        if (r3Var2.n() != r3Var.n()) {
            this.f11284m.i(7, new androidx.media3.common.util.t.a() { // from class: androidx.media3.exoplayer.u1
                @Override // androidx.media3.common.util.t.a
                public final void invoke(Object obj) {
                    b2.k2(r3Var, (androidx.media3.common.a0.d) obj);
                }
            });
        }
        if (!r3Var2.f12557o.equals(r3Var.f12557o)) {
            this.f11284m.i(12, new androidx.media3.common.util.t.a() { // from class: androidx.media3.exoplayer.v1
                @Override // androidx.media3.common.util.t.a
                public final void invoke(Object obj) {
                    b2.l2(r3Var, (androidx.media3.common.a0.d) obj);
                }
            });
        }
        G2();
        this.f11284m.f();
        if (r3Var2.f12558p != r3Var.f12558p) {
            Iterator it = this.f11286n.iterator();
            while (it.hasNext()) {
                ((ExoPlayer.a) it.next()).x(r3Var.f12558p);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: K1, reason: merged with bridge method [inline-methods] */
    public void O1(r2.e eVar) {
        long jS2;
        int i11 = this.K - eVar.f12530c;
        this.K = i11;
        boolean z10 = true;
        if (eVar.f12531d) {
            this.L = eVar.f12532e;
            this.M = true;
        }
        if (i11 == 0) {
            androidx.media3.common.e0 e0Var = eVar.f12529b.f12543a;
            if (!this.f11301u0.f12543a.q() && e0Var.q()) {
                this.f11303v0 = -1;
                this.f11307x0 = 0L;
                this.f11305w0 = 0;
            }
            if (!e0Var.q()) {
                List listF = ((u3) e0Var).F();
                androidx.media3.common.util.a.g(listF.size() == this.f11290p.size());
                for (int i12 = 0; i12 < listF.size(); i12++) {
                    ((e) this.f11290p.get(i12)).d((androidx.media3.common.e0) listF.get(i12));
                }
            }
            boolean z11 = this.M;
            long j11 = C.TIME_UNSET;
            if (z11) {
                if (eVar.f12529b.f12544b.equals(this.f11301u0.f12544b) && eVar.f12529b.f12546d == this.f11301u0.f12561s) {
                    z10 = false;
                }
                if (z10) {
                    if (e0Var.q() || eVar.f12529b.f12544b.b()) {
                        jS2 = eVar.f12529b.f12546d;
                    } else {
                        r3 r3Var = eVar.f12529b;
                        jS2 = s2(e0Var, r3Var.f12544b, r3Var.f12546d);
                    }
                    j11 = jS2;
                }
            } else {
                z10 = false;
            }
            this.M = false;
            J2(eVar.f12529b, 1, z10, this.L, j11, -1, false);
        }
    }

    private void K2(boolean z10) {
        PriorityTaskManager priorityTaskManager = this.f11289o0;
        if (priorityTaskManager != null) {
            if (z10 && !this.f11291p0) {
                priorityTaskManager.a(this.f11287n0);
                this.f11291p0 = true;
            } else {
                if (z10 || !this.f11291p0) {
                    return;
                }
                priorityTaskManager.d(this.f11287n0);
                this.f11291p0 = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L2() {
        int playbackState = getPlaybackState();
        if (playbackState != 1) {
            if (playbackState == 2 || playbackState == 3) {
                this.D.f(getPlayWhenReady() && !L1());
                this.E.f(getPlayWhenReady());
                return;
            } else if (playbackState != 4) {
                throw new IllegalStateException();
            }
        }
        this.D.f(false);
        this.E.f(false);
    }

    private void M2() {
        this.f11266d.c();
        if (Thread.currentThread() != k().getThread()) {
            String strG = androidx.media3.common.util.a1.G("Player is accessed on the wrong thread.\nCurrent thread: '%s'\nExpected thread: '%s'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread", Thread.currentThread().getName(), k().getThread().getName());
            if (this.f11283l0) {
                throw new IllegalStateException(strG);
            }
            androidx.media3.common.util.u.i("ExoPlayerImpl", strG, this.f11285m0 ? null : new IllegalStateException());
            this.f11285m0 = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void N1(androidx.media3.common.a0.d dVar, androidx.media3.common.p pVar) {
        dVar.onEvents(this.f11270f, new androidx.media3.common.a0.c(pVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void P1(final r2.e eVar) {
        this.f11278j.post(new Runnable() { // from class: androidx.media3.exoplayer.p1
            @Override // java.lang.Runnable
            public final void run() {
                this.f12444a.O1(eVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Q1() {
        this.H.i(Integer.valueOf(androidx.media3.common.util.a1.J(this.f11268e)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void S1(androidx.media3.common.a0.d dVar) {
        dVar.onPlayerError(ExoPlaybackException.createForUnexpected(new ExoTimeoutException(1), 1003));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void X1(androidx.media3.common.a0.d dVar) {
        dVar.onAvailableCommandsChanged(this.R);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void Y1(r3 r3Var, int i11, androidx.media3.common.a0.d dVar) {
        dVar.onTimelineChanged(r3Var.f12543a, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void Z1(int i11, androidx.media3.common.a0.e eVar, androidx.media3.common.a0.e eVar2, androidx.media3.common.a0.d dVar) {
        dVar.onPositionDiscontinuity(i11);
        dVar.onPositionDiscontinuity(eVar, eVar2, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b2(r3 r3Var, androidx.media3.common.a0.d dVar) {
        dVar.onPlayerErrorChanged(r3Var.f12548f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c2(r3 r3Var, androidx.media3.common.a0.d dVar) {
        dVar.onPlayerError(r3Var.f12548f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d2(r3 r3Var, androidx.media3.common.a0.d dVar) {
        dVar.onTracksChanged(r3Var.f12551i.f65757d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void f2(r3 r3Var, androidx.media3.common.a0.d dVar) {
        dVar.onLoadingChanged(r3Var.f12549g);
        dVar.onIsLoadingChanged(r3Var.f12549g);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void g2(r3 r3Var, androidx.media3.common.a0.d dVar) {
        dVar.onPlayerStateChanged(r3Var.f12554l, r3Var.f12547e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void h2(r3 r3Var, androidx.media3.common.a0.d dVar) {
        dVar.onPlaybackStateChanged(r3Var.f12547e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void i2(r3 r3Var, androidx.media3.common.a0.d dVar) {
        dVar.onPlayWhenReadyChanged(r3Var.f12554l, r3Var.f12555m);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void j2(r3 r3Var, androidx.media3.common.a0.d dVar) {
        dVar.onPlaybackSuppressionReasonChanged(r3Var.f12556n);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void k2(r3 r3Var, androidx.media3.common.a0.d dVar) {
        dVar.onIsPlayingChanged(r3Var.n());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void l2(r3 r3Var, androidx.media3.common.a0.d dVar) {
        dVar.onPlaybackParametersChanged(r3Var.f12557o);
    }

    private static r3 m2(r3 r3Var, int i11) {
        r3 r3VarH = r3Var.h(i11);
        return (i11 == 1 || i11 == 4) ? r3VarH.b(false) : r3VarH;
    }

    private r3 n2(r3 r3Var, androidx.media3.common.e0 e0Var, Pair pair) {
        androidx.media3.common.util.a.a(e0Var.q() || pair != null);
        androidx.media3.common.e0 e0Var2 = r3Var.f12543a;
        long jC1 = C1(r3Var);
        r3 r3VarJ = r3Var.j(e0Var);
        if (e0Var.q()) {
            androidx.media3.exoplayer.source.r.b bVarL = r3.l();
            long jR0 = androidx.media3.common.util.a1.R0(this.f11307x0);
            r3 r3VarC = r3VarJ.d(bVarL, jR0, jR0, jR0, 0L, g2.z.f63264d, this.f11262b, ImmutableList.of()).c(bVarL);
            r3VarC.f12559q = r3VarC.f12561s;
            return r3VarC;
        }
        Object obj = r3VarJ.f12544b.f12883a;
        boolean zEquals = obj.equals(((Pair) androidx.media3.common.util.a1.i(pair)).first);
        androidx.media3.exoplayer.source.r.b bVar = !zEquals ? new androidx.media3.exoplayer.source.r.b(pair.first) : r3VarJ.f12544b;
        long jLongValue = ((Long) pair.second).longValue();
        long jR1 = androidx.media3.common.util.a1.R0(jC1);
        if (!e0Var2.q()) {
            jR1 -= e0Var2.h(obj, this.f11288o).o();
        }
        if (!zEquals || jLongValue < jR1) {
            androidx.media3.common.util.a.g(!bVar.b());
            r3 r3VarC2 = r3VarJ.d(bVar, jLongValue, jLongValue, jLongValue, 0L, !zEquals ? g2.z.f63264d : r3VarJ.f12550h, !zEquals ? this.f11262b : r3VarJ.f12551i, !zEquals ? ImmutableList.of() : r3VarJ.f12552j).c(bVar);
            r3VarC2.f12559q = jLongValue;
            return r3VarC2;
        }
        if (jLongValue == jR1) {
            int iB = e0Var.b(r3VarJ.f12553k.f12883a);
            if (iB == -1 || e0Var.f(iB, this.f11288o).f9936c != e0Var.h(bVar.f12883a, this.f11288o).f9936c) {
                e0Var.h(bVar.f12883a, this.f11288o);
                long jB = bVar.b() ? this.f11288o.b(bVar.f12884b, bVar.f12885c) : this.f11288o.f9937d;
                r3VarJ = r3VarJ.d(bVar, r3VarJ.f12561s, r3VarJ.f12561s, r3VarJ.f12546d, jB - r3VarJ.f12561s, r3VarJ.f12550h, r3VarJ.f12551i, r3VarJ.f12552j).c(bVar);
                r3VarJ.f12559q = jB;
            }
        } else {
            androidx.media3.common.util.a.g(!bVar.b());
            long jMax = Math.max(0L, r3VarJ.f12560r - (jLongValue - jR1));
            long j11 = r3VarJ.f12559q;
            if (r3VarJ.f12553k.equals(r3VarJ.f12544b)) {
                j11 = jLongValue + jMax;
            }
            r3VarJ = r3VarJ.d(bVar, jLongValue, jLongValue, jLongValue, jMax, r3VarJ.f12550h, r3VarJ.f12551i, r3VarJ.f12552j);
            r3VarJ.f12559q = j11;
        }
        return r3VarJ;
    }

    private List o1(int i11, List list) {
        ArrayList arrayList = new ArrayList();
        for (int i12 = 0; i12 < list.size(); i12++) {
            q3.c cVar = new q3.c((androidx.media3.exoplayer.source.r) list.get(i12), this.f11292q);
            arrayList.add(cVar);
            this.f11290p.add(i12 + i11, new e(cVar.f12478b, cVar.f12477a));
        }
        this.O = this.O.cloneAndInsert(i11, arrayList.size());
        return arrayList;
    }

    private Pair o2(androidx.media3.common.e0 e0Var, int i11, long j11) {
        if (e0Var.q()) {
            this.f11303v0 = i11;
            if (j11 == C.TIME_UNSET) {
                j11 = 0;
            }
            this.f11307x0 = j11;
            this.f11305w0 = 0;
            return null;
        }
        if (i11 == -1 || i11 >= e0Var.p()) {
            i11 = e0Var.a(this.J);
            j11 = e0Var.n(i11, this.f9976a).b();
        }
        return e0Var.j(this.f9976a, this.f11288o, i11, androidx.media3.common.util.a1.R0(j11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p2(final int i11, final int i12) {
        if (i11 == this.f11269e0.b() && i12 == this.f11269e0.a()) {
            return;
        }
        this.f11269e0 = new androidx.media3.common.util.l0(i11, i12);
        this.f11284m.l(24, new androidx.media3.common.util.t.a() { // from class: androidx.media3.exoplayer.f1
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((androidx.media3.common.a0.d) obj).onSurfaceSizeChanged(i11, i12);
            }
        });
        w2(2, 14, new androidx.media3.common.util.l0(i11, i12));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q2(int i11, final int i12) {
        M2();
        w2(1, 10, Integer.valueOf(i12));
        w2(2, 10, Integer.valueOf(i12));
        this.f11284m.l(21, new androidx.media3.common.util.t.a() { // from class: androidx.media3.exoplayer.s1
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((androidx.media3.common.a0.d) obj).onAudioSessionIdChanged(i12);
            }
        });
    }

    private r3 r1(r3 r3Var, int i11, List list) {
        androidx.media3.common.e0 e0Var = r3Var.f12543a;
        this.K++;
        List listO1 = o1(i11, list);
        androidx.media3.common.e0 e0VarX1 = x1();
        r3 r3VarN2 = n2(r3Var, e0VarX1, F1(e0Var, e0VarX1, E1(r3Var), C1(r3Var)));
        this.f11282l.p(i11, listO1, this.O);
        return r3VarN2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r2(boolean z10) {
        if (this.f11293q0) {
            return;
        }
        if (!z10) {
            I2(this.f11301u0.f12554l, 1);
            return;
        }
        r3 r3Var = this.f11301u0;
        if (r3Var.f12556n == 3) {
            I2(r3Var.f12554l, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public androidx.media3.common.v s1() {
        androidx.media3.common.e0 currentTimeline = getCurrentTimeline();
        if (currentTimeline.q()) {
            return this.f11299t0;
        }
        return this.f11299t0.a().L(currentTimeline.n(t(), this.f9976a).f9953c.f10214e).J();
    }

    private long s2(androidx.media3.common.e0 e0Var, androidx.media3.exoplayer.source.r.b bVar, long j11) {
        e0Var.h(bVar.f12883a, this.f11288o);
        return j11 + this.f11288o.o();
    }

    private boolean t1(int i11, int i12, List list) {
        if (i12 - i11 != list.size()) {
            return false;
        }
        for (int i13 = i11; i13 < i12; i13++) {
            if (!((e) this.f11290p.get(i13)).f11316b.q((androidx.media3.common.t) list.get(i13 - i11))) {
                return false;
            }
        }
        return true;
    }

    private r3 t2(r3 r3Var, int i11, int i12) {
        int iE1 = E1(r3Var);
        long jC1 = C1(r3Var);
        androidx.media3.common.e0 e0Var = r3Var.f12543a;
        int size = this.f11290p.size();
        this.K++;
        u2(i11, i12);
        androidx.media3.common.e0 e0VarX1 = x1();
        r3 r3VarN2 = n2(r3Var, e0VarX1, F1(e0Var, e0VarX1, iE1, jC1));
        int i13 = r3VarN2.f12547e;
        if (i13 != 1 && i13 != 4 && i11 < i12 && i12 == size && iE1 >= r3VarN2.f12543a.p()) {
            r3VarN2 = m2(r3VarN2, 4);
        }
        this.f11282l.H0(i11, i12, this.O);
        return r3VarN2;
    }

    private void u2(int i11, int i12) {
        for (int i13 = i12 - 1; i13 >= i11; i13--) {
            this.f11290p.remove(i13);
        }
        this.O = this.O.a(i11, i12);
    }

    private int v1(boolean z10) {
        m4 m4Var = this.G;
        if (m4Var == null || m4Var.a()) {
            return (this.f11301u0.f12556n != 1 || z10) ? 0 : 1;
        }
        return 3;
    }

    private void v2() {
        if (this.Z != null) {
            z1(this.A).m(10000).l(null).k();
            this.Z.removeVideoSurfaceListener(this.f11309z);
            this.Z = null;
        }
        TextureView textureView = this.f11263b0;
        if (textureView != null) {
            if (textureView.getSurfaceTextureListener() != this.f11309z) {
                androidx.media3.common.util.u.h("ExoPlayerImpl", "SurfaceTextureListener already unset or replaced.");
            } else {
                this.f11263b0.setSurfaceTextureListener(null);
            }
            this.f11263b0 = null;
        }
        SurfaceHolder surfaceHolder = this.Y;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(this.f11309z);
            this.Y = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static androidx.media3.common.m w1(k4 k4Var) {
        return new androidx.media3.common.m.b(0).g(k4Var != null ? k4Var.l() : 0).f(k4Var != null ? k4Var.k() : 0).e();
    }

    private void w2(int i11, int i12, Object obj) {
        for (w3 w3Var : this.f11272g) {
            if (i11 == -1 || w3Var.getTrackType() == i11) {
                z1(w3Var).m(i12).l(obj).k();
            }
        }
        for (w3 w3Var2 : this.f11274h) {
            if (w3Var2 != null && (i11 == -1 || w3Var2.getTrackType() == i11)) {
                z1(w3Var2).m(i12).l(obj).k();
            }
        }
    }

    private androidx.media3.common.e0 x1() {
        return new u3(this.f11290p, this.O);
    }

    private void x2(int i11, Object obj) {
        w2(-1, i11, obj);
    }

    private List y1(List list) {
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < list.size(); i11++) {
            arrayList.add(this.f11294r.d((androidx.media3.common.t) list.get(i11)));
        }
        return arrayList;
    }

    private t3 z1(t3.b bVar) {
        int iE1 = E1(this.f11301u0);
        r2 r2Var = this.f11282l;
        androidx.media3.common.e0 e0Var = this.f11301u0.f12543a;
        if (iE1 == -1) {
            iE1 = 0;
        }
        return new t3(r2Var, bVar, e0Var, iE1, this.f11308y, r2Var.K());
    }

    @Override // androidx.media3.common.a0
    public void A(boolean z10, int i11) {
        M2();
        k4 k4Var = this.C;
        if (k4Var != null) {
            k4Var.u(z10, i11);
        }
    }

    public androidx.media3.common.util.i B1() {
        return this.f11308y;
    }

    @Override // androidx.media3.common.a0
    public void C(int i11, int i12, List list) {
        M2();
        androidx.media3.common.util.a.a(i11 >= 0 && i12 >= i11);
        int size = this.f11290p.size();
        if (i11 > size) {
            return;
        }
        int iMin = Math.min(i12, size);
        if (t1(i11, iMin, list)) {
            H2(i11, iMin, list);
            return;
        }
        List listY1 = y1(list);
        if (this.f11290p.isEmpty()) {
            z2(listY1, this.f11303v0 == -1);
        } else {
            r3 r3VarT2 = t2(r1(this.f11301u0, iMin, listY1), i11, iMin);
            J2(r3VarT2, 0, !r3VarT2.f12544b.f12883a.equals(this.f11301u0.f12544b.f12883a), 4, D1(r3VarT2), -1, false);
        }
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void D(y1.c cVar) {
        this.f11296s.z((y1.c) androidx.media3.common.util.a.e(cVar));
    }

    public void E2(SurfaceHolder surfaceHolder) {
        M2();
        if (surfaceHolder == null) {
            clearVideoSurface();
            return;
        }
        v2();
        this.f11261a0 = true;
        this.Y = surfaceHolder;
        surfaceHolder.addCallback(this.f11309z);
        Surface surface = surfaceHolder.getSurface();
        if (surface == null || !surface.isValid()) {
            D2(null);
            p2(0, 0);
        } else {
            D2(surface);
            Rect surfaceFrame = surfaceHolder.getSurfaceFrame();
            p2(surfaceFrame.width(), surfaceFrame.height());
        }
    }

    @Override // androidx.media3.common.a0
    public void G(int i11, int i12) {
        M2();
        androidx.media3.common.util.a.a(i11 >= 0 && i12 >= i11);
        int size = this.f11290p.size();
        int iMin = Math.min(i12, size);
        if (i11 >= size || i11 == iMin) {
            return;
        }
        r3 r3VarT2 = t2(this.f11301u0, i11, iMin);
        J2(r3VarT2, 0, !r3VarT2.f12544b.f12883a.equals(this.f11301u0.f12544b.f12883a), 4, D1(r3VarT2), -1, false);
    }

    public Looper G1() {
        return this.f11282l.K();
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public androidx.media3.common.r I() {
        M2();
        return this.U;
    }

    @Override // androidx.media3.common.a0
    public u1.b K() {
        M2();
        return this.f11281k0;
    }

    @Override // androidx.media3.common.a0
    public void L(androidx.media3.common.a0.d dVar) {
        M2();
        this.f11284m.k((androidx.media3.common.a0.d) androidx.media3.common.util.a.e(dVar));
    }

    public boolean L1() {
        M2();
        return this.f11301u0.f12558p;
    }

    @Override // androidx.media3.common.a0
    public void M(androidx.media3.common.a0.d dVar) {
        this.f11284m.c((androidx.media3.common.a0.d) androidx.media3.common.util.a.e(dVar));
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public androidx.media3.common.r R() {
        M2();
        return this.V;
    }

    @Override // androidx.media3.common.a0
    public void S(int i11, List list) {
        M2();
        p1(i11, y1(list));
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void T(int i11, androidx.media3.exoplayer.source.r rVar) {
        M2();
        p1(i11, Collections.singletonList(rVar));
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void U(androidx.media3.exoplayer.source.r rVar) {
        M2();
        y2(Collections.singletonList(rVar));
    }

    @Override // androidx.media3.common.a0
    public void V(final androidx.media3.common.h0 h0Var) {
        M2();
        if (!this.f11276i.h() || h0Var.equals(this.f11276i.c())) {
            return;
        }
        this.f11276i.m(h0Var);
        this.f11284m.l(19, new androidx.media3.common.util.t.a() { // from class: androidx.media3.exoplayer.q1
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((androidx.media3.common.a0.d) obj).onTrackSelectionParametersChanged(h0Var);
            }
        });
    }

    @Override // androidx.media3.common.a0
    public boolean W() {
        M2();
        k4 k4Var = this.C;
        if (k4Var != null) {
            return k4Var.m();
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void X(androidx.media3.exoplayer.source.r rVar) {
        M2();
        q1(Collections.singletonList(rVar));
    }

    @Override // androidx.media3.common.a0
    public void b(androidx.media3.common.z zVar) {
        M2();
        if (zVar == null) {
            zVar = androidx.media3.common.z.f10563d;
        }
        if (this.f11301u0.f12557o.equals(zVar)) {
            return;
        }
        r3 r3VarG = this.f11301u0.g(zVar);
        this.K++;
        this.f11282l.n1(zVar);
        J2(r3VarG, 0, false, 5, C.TIME_UNSET, -1, false);
    }

    @Override // androidx.media3.common.a0
    public ExoPlaybackException c() {
        M2();
        return this.f11301u0.f12548f;
    }

    @Override // androidx.media3.common.a0
    public void clearVideoSurface() {
        M2();
        v2();
        D2(null);
        p2(0, 0);
    }

    @Override // androidx.media3.common.a0
    public void clearVideoSurfaceView(SurfaceView surfaceView) {
        M2();
        u1(surfaceView == null ? null : surfaceView.getHolder());
    }

    @Override // androidx.media3.common.a0
    public void clearVideoTextureView(TextureView textureView) {
        M2();
        if (textureView == null || textureView != this.f11263b0) {
            return;
        }
        clearVideoSurface();
    }

    @Override // androidx.media3.common.a0
    public long d() {
        M2();
        return androidx.media3.common.util.a1.y1(this.f11301u0.f12560r);
    }

    @Override // androidx.media3.common.a0
    public void e(List list, boolean z10) {
        M2();
        z2(y1(list), z10);
    }

    @Override // androidx.media3.common.g
    protected void e0(int i11, long j11, int i12, boolean z10) {
        M2();
        if (i11 == -1) {
            return;
        }
        androidx.media3.common.util.a.a(i11 >= 0);
        androidx.media3.common.e0 e0Var = this.f11301u0.f12543a;
        if (e0Var.q() || i11 < e0Var.p()) {
            this.f11296s.m();
            this.K++;
            if (isPlayingAd()) {
                androidx.media3.common.util.u.h("ExoPlayerImpl", "seekTo ignored because an ad is playing");
                r2.e eVar = new r2.e(this.f11301u0);
                eVar.b(1);
                this.f11280k.a(eVar);
                return;
            }
            r3 r3VarM2 = this.f11301u0;
            int i13 = r3VarM2.f12547e;
            if (i13 == 3 || (i13 == 4 && !e0Var.q())) {
                r3VarM2 = m2(this.f11301u0, 2);
            }
            int iT = t();
            r3 r3VarN2 = n2(r3VarM2, e0Var, o2(e0Var, i11, j11));
            this.f11282l.U0(e0Var, i11, androidx.media3.common.util.a1.R0(j11));
            J2(r3VarN2, 0, true, 1, D1(r3VarN2), iT, z10);
        }
    }

    @Override // androidx.media3.common.a0
    public long getBufferedPosition() {
        M2();
        if (!isPlayingAd()) {
            return u();
        }
        r3 r3Var = this.f11301u0;
        return r3Var.f12553k.equals(r3Var.f12544b) ? androidx.media3.common.util.a1.y1(this.f11301u0.f12559q) : getDuration();
    }

    @Override // androidx.media3.common.a0
    public long getContentPosition() {
        M2();
        return C1(this.f11301u0);
    }

    @Override // androidx.media3.common.a0
    public int getCurrentAdGroupIndex() {
        M2();
        if (isPlayingAd()) {
            return this.f11301u0.f12544b.f12884b;
        }
        return -1;
    }

    @Override // androidx.media3.common.a0
    public int getCurrentAdIndexInAdGroup() {
        M2();
        if (isPlayingAd()) {
            return this.f11301u0.f12544b.f12885c;
        }
        return -1;
    }

    @Override // androidx.media3.common.a0
    public int getCurrentPeriodIndex() {
        M2();
        if (this.f11301u0.f12543a.q()) {
            return this.f11305w0;
        }
        r3 r3Var = this.f11301u0;
        return r3Var.f12543a.b(r3Var.f12544b.f12883a);
    }

    @Override // androidx.media3.common.a0
    public long getCurrentPosition() {
        M2();
        return androidx.media3.common.util.a1.y1(D1(this.f11301u0));
    }

    @Override // androidx.media3.common.a0
    public androidx.media3.common.e0 getCurrentTimeline() {
        M2();
        return this.f11301u0.f12543a;
    }

    @Override // androidx.media3.common.a0
    public androidx.media3.common.i0 getCurrentTracks() {
        M2();
        return this.f11301u0.f12551i.f65757d;
    }

    @Override // androidx.media3.common.a0
    public long getDuration() {
        M2();
        if (!isPlayingAd()) {
            return Q();
        }
        r3 r3Var = this.f11301u0;
        androidx.media3.exoplayer.source.r.b bVar = r3Var.f12544b;
        r3Var.f12543a.h(bVar.f12883a, this.f11288o);
        return androidx.media3.common.util.a1.y1(this.f11288o.b(bVar.f12884b, bVar.f12885c));
    }

    @Override // androidx.media3.common.a0
    public boolean getPlayWhenReady() {
        M2();
        return this.f11301u0.f12554l;
    }

    @Override // androidx.media3.common.a0
    public androidx.media3.common.z getPlaybackParameters() {
        M2();
        return this.f11301u0.f12557o;
    }

    @Override // androidx.media3.common.a0
    public int getPlaybackState() {
        M2();
        return this.f11301u0.f12547e;
    }

    @Override // androidx.media3.common.a0
    public int getRepeatMode() {
        M2();
        return this.I;
    }

    @Override // androidx.media3.common.a0
    public boolean getShuffleModeEnabled() {
        M2();
        return this.J;
    }

    @Override // androidx.media3.common.a0
    public float getVolume() {
        M2();
        return this.f11277i0;
    }

    @Override // androidx.media3.common.a0
    public boolean isPlayingAd() {
        M2();
        return this.f11301u0.f12544b.b();
    }

    @Override // androidx.media3.common.a0
    public int j() {
        M2();
        return this.f11301u0.f12556n;
    }

    @Override // androidx.media3.common.a0
    public Looper k() {
        return this.f11298t;
    }

    @Override // androidx.media3.common.a0
    public androidx.media3.common.h0 l() {
        M2();
        return this.f11276i.c();
    }

    @Override // androidx.media3.common.a0
    public androidx.media3.common.a0.b n() {
        M2();
        return this.R;
    }

    public void n1(ExoPlayer.a aVar) {
        this.f11286n.add(aVar);
    }

    @Override // androidx.media3.common.a0
    public long o() {
        M2();
        return this.f11306x;
    }

    @Override // androidx.media3.common.a0
    public androidx.media3.common.m0 p() {
        M2();
        return this.f11297s0;
    }

    public void p1(int i11, List list) {
        M2();
        androidx.media3.common.util.a.a(i11 >= 0);
        int iMin = Math.min(i11, this.f11290p.size());
        if (this.f11290p.isEmpty()) {
            z2(list, this.f11303v0 == -1);
        } else {
            J2(r1(this.f11301u0, iMin, list), 0, false, 5, C.TIME_UNSET, -1, false);
        }
    }

    @Override // androidx.media3.common.a0
    public void prepare() {
        M2();
        r3 r3Var = this.f11301u0;
        if (r3Var.f12547e != 1) {
            return;
        }
        r3 r3VarF = r3Var.f(null);
        r3 r3VarM2 = m2(r3VarF, r3VarF.f12543a.q() ? 4 : 2);
        this.K++;
        this.f11282l.B0();
        J2(r3VarM2, 1, false, 5, C.TIME_UNSET, -1, false);
    }

    public void q1(List list) {
        M2();
        p1(this.f11290p.size(), list);
    }

    @Override // androidx.media3.common.a0
    public long r() {
        M2();
        return this.f11304w;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void release() {
        androidx.media3.common.util.u.f("ExoPlayerImpl", "Release " + Integer.toHexString(System.identityHashCode(this)) + " [AndroidXMedia3/1.7.1] [" + androidx.media3.common.util.a1.f10354e + "] [" + androidx.media3.common.u.b() + "]");
        M2();
        this.B.f(false);
        k4 k4Var = this.C;
        if (k4Var != null) {
            k4Var.t();
        }
        this.D.f(false);
        this.E.f(false);
        m4 m4Var = this.G;
        if (m4Var != null) {
            m4Var.disable();
        }
        if (!this.f11282l.D0()) {
            this.f11284m.l(10, new androidx.media3.common.util.t.a() { // from class: androidx.media3.exoplayer.g1
                @Override // androidx.media3.common.util.t.a
                public final void invoke(Object obj) {
                    b2.S1((androidx.media3.common.a0.d) obj);
                }
            });
        }
        this.f11284m.j();
        this.f11278j.removeCallbacksAndMessages(null);
        this.f11300u.c(this.f11296s);
        r3 r3Var = this.f11301u0;
        if (r3Var.f12558p) {
            this.f11301u0 = r3Var.a();
        }
        r3 r3VarM2 = m2(this.f11301u0, 1);
        this.f11301u0 = r3VarM2;
        r3 r3VarC = r3VarM2.c(r3VarM2.f12544b);
        this.f11301u0 = r3VarC;
        r3VarC.f12559q = r3VarC.f12561s;
        this.f11301u0.f12560r = 0L;
        this.f11296s.release();
        v2();
        Surface surface = this.X;
        if (surface != null) {
            surface.release();
            this.X = null;
        }
        if (this.f11291p0) {
            ((PriorityTaskManager) androidx.media3.common.util.a.e(this.f11289o0)).d(this.f11287n0);
            this.f11291p0 = false;
        }
        this.f11281k0 = u1.b.f76592c;
        this.f11293q0 = true;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setImageOutput(ImageOutput imageOutput) {
        M2();
        w2(4, 15, imageOutput);
    }

    @Override // androidx.media3.common.a0
    public void setPlayWhenReady(boolean z10) {
        M2();
        I2(z10, 1);
    }

    @Override // androidx.media3.common.a0
    public void setRepeatMode(final int i11) {
        M2();
        if (this.I != i11) {
            this.I = i11;
            this.f11282l.q1(i11);
            this.f11284m.i(8, new androidx.media3.common.util.t.a() { // from class: androidx.media3.exoplayer.h1
                @Override // androidx.media3.common.util.t.a
                public final void invoke(Object obj) {
                    ((androidx.media3.common.a0.d) obj).onRepeatModeChanged(i11);
                }
            });
            G2();
            this.f11284m.f();
        }
    }

    @Override // androidx.media3.common.a0
    public void setShuffleModeEnabled(final boolean z10) {
        M2();
        if (this.J != z10) {
            this.J = z10;
            this.f11282l.t1(z10);
            this.f11284m.i(9, new androidx.media3.common.util.t.a() { // from class: androidx.media3.exoplayer.i1
                @Override // androidx.media3.common.util.t.a
                public final void invoke(Object obj) {
                    ((androidx.media3.common.a0.d) obj).onShuffleModeEnabledChanged(z10);
                }
            });
            G2();
            this.f11284m.f();
        }
    }

    @Override // androidx.media3.common.a0
    public void setVideoSurfaceView(SurfaceView surfaceView) {
        M2();
        if (surfaceView instanceof androidx.media3.exoplayer.video.s) {
            v2();
            D2(surfaceView);
            B2(surfaceView.getHolder());
        } else {
            if (!(surfaceView instanceof SphericalGLSurfaceView)) {
                E2(surfaceView == null ? null : surfaceView.getHolder());
                return;
            }
            v2();
            this.Z = (SphericalGLSurfaceView) surfaceView;
            z1(this.A).m(10000).l(this.Z).k();
            this.Z.addVideoSurfaceListener(this.f11309z);
            D2(this.Z.getVideoSurface());
            B2(surfaceView.getHolder());
        }
    }

    @Override // androidx.media3.common.a0
    public void setVideoTextureView(TextureView textureView) {
        M2();
        if (textureView == null) {
            clearVideoSurface();
            return;
        }
        v2();
        this.f11263b0 = textureView;
        if (textureView.getSurfaceTextureListener() != null) {
            androidx.media3.common.util.u.h("ExoPlayerImpl", "Replacing existing SurfaceTextureListener.");
        }
        textureView.setSurfaceTextureListener(this.f11309z);
        SurfaceTexture surfaceTexture = textureView.isAvailable() ? textureView.getSurfaceTexture() : null;
        if (surfaceTexture == null) {
            D2(null);
            p2(0, 0);
        } else {
            C2(surfaceTexture);
            p2(textureView.getWidth(), textureView.getHeight());
        }
    }

    @Override // androidx.media3.common.a0
    public void setVolume(float f11) {
        M2();
        final float fO = androidx.media3.common.util.a1.o(f11, 0.0f, 1.0f);
        if (this.f11277i0 == fO) {
            return;
        }
        this.f11277i0 = fO;
        this.f11282l.z1(fO);
        this.f11284m.l(22, new androidx.media3.common.util.t.a() { // from class: androidx.media3.exoplayer.e1
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((androidx.media3.common.a0.d) obj).onVolumeChanged(fO);
            }
        });
    }

    @Override // androidx.media3.common.a0
    public void stop() {
        M2();
        F2(null);
        this.f11281k0 = new u1.b(ImmutableList.of(), this.f11301u0.f12561s);
    }

    @Override // androidx.media3.common.a0
    public int t() {
        M2();
        int iE1 = E1(this.f11301u0);
        if (iE1 == -1) {
            return 0;
        }
        return iE1;
    }

    @Override // androidx.media3.common.a0
    public long u() {
        M2();
        if (this.f11301u0.f12543a.q()) {
            return this.f11307x0;
        }
        r3 r3Var = this.f11301u0;
        if (r3Var.f12553k.f12886d != r3Var.f12544b.f12886d) {
            return r3Var.f12543a.n(t(), this.f9976a).d();
        }
        long j11 = r3Var.f12559q;
        if (this.f11301u0.f12553k.b()) {
            r3 r3Var2 = this.f11301u0;
            androidx.media3.common.e0.b bVarH = r3Var2.f12543a.h(r3Var2.f12553k.f12883a, this.f11288o);
            long jF = bVarH.f(this.f11301u0.f12553k.f12884b);
            j11 = jF == Long.MIN_VALUE ? bVarH.f9937d : jF;
        }
        r3 r3Var3 = this.f11301u0;
        return androidx.media3.common.util.a1.y1(s2(r3Var3.f12543a, r3Var3.f12553k, j11));
    }

    public void u1(SurfaceHolder surfaceHolder) {
        M2();
        if (surfaceHolder == null || surfaceHolder != this.Y) {
            return;
        }
        clearVideoSurface();
    }

    @Override // androidx.media3.common.a0
    public androidx.media3.common.v x() {
        M2();
        return this.S;
    }

    @Override // androidx.media3.common.a0
    public long y() {
        M2();
        return this.f11302v;
    }

    public void y2(List list) {
        M2();
        z2(list, true);
    }

    public void z2(List list, boolean z10) {
        M2();
        A2(list, -1, C.TIME_UNSET, z10);
    }
}
