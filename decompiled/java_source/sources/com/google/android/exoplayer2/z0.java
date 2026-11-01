package com.google.android.exoplayer2;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.media.AudioTrack;
import android.media.MediaFormat;
import android.media.metrics.LogSessionId;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.trackselection.TrackSelectionParameters;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes3.dex */
final class z0 extends g implements ExoPlayer {
    private final f A;
    private final f3 B;
    private final q3 C;
    private final r3 D;
    private final long E;
    private int F;
    private boolean G;
    private int H;
    private int I;
    private boolean J;
    private int K;
    private c3 L;
    private t9.t M;
    private boolean N;
    private o2.b O;
    private a2 P;
    private a2 Q;
    private o1 R;
    private o1 S;
    private AudioTrack T;
    private Object U;
    private Surface V;
    private SurfaceHolder W;
    private SphericalGLSurfaceView X;
    private boolean Y;
    private TextureView Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private int f28019a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final la.r f28020b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private int f28021b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final o2.b f28022c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private int f28023c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.android.exoplayer2.util.h f28024d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private int f28025d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Context f28026e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private com.google.android.exoplayer2.decoder.e f28027e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final o2 f28028f;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private com.google.android.exoplayer2.decoder.e f28029f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final x2[] f28030g;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private int f28031g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final la.q f28032h;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private com.google.android.exoplayer2.audio.e f28033h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final com.google.android.exoplayer2.util.o f28034i;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private float f28035i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final l1.f f28036j;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private boolean f28037j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final l1 f28038k;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private ba.f f28039k0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final com.google.android.exoplayer2.util.r f28040l;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    private boolean f28041l0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final CopyOnWriteArraySet f28042m;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    private boolean f28043m0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final k3.b f28044n;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    private PriorityTaskManager f28045n0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final List f28046o;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    private boolean f28047o0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final boolean f28048p;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private boolean f28049p0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final com.google.android.exoplayer2.source.o.a f28050q;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    private r f28051q0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final e9.a f28052r;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    private com.google.android.exoplayer2.video.y f28053r0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final Looper f28054s;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    private a2 f28055s0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.e f28056t;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    private l2 f28057t0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final long f28058u;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    private int f28059u0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final long f28060v;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    private int f28061v0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final com.google.android.exoplayer2.util.e f28062w;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    private long f28063w0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final c f28064x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final d f28065y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final AudioBecomingNoisyManager f28066z;

    private static final class b {
        public static e9.u1 a(Context context, z0 z0Var, boolean z10) {
            e9.s1 s1VarB0 = e9.s1.B0(context);
            if (s1VarB0 == null) {
                com.google.android.exoplayer2.util.s.i("ExoPlayerImpl", "MediaMetricsService unavailable.");
                return new e9.u1(LogSessionId.LOG_SESSION_ID_NONE);
            }
            if (z10) {
                z0Var.O0(s1VarB0);
            }
            return new e9.u1(s1VarB0.I0());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class c implements com.google.android.exoplayer2.video.w, com.google.android.exoplayer2.audio.r, ba.o, com.google.android.exoplayer2.metadata.e, SurfaceHolder.Callback, TextureView.SurfaceTextureListener, SphericalGLSurfaceView.b, f.b, AudioBecomingNoisyManager.a, f3.b, ExoPlayer.a {
        private c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void J(o2.d dVar) {
            dVar.onMediaMetadataChanged(z0.this.P);
        }

        @Override // com.google.android.exoplayer2.audio.r
        public void a(Exception exc) {
            z0.this.f28052r.a(exc);
        }

        @Override // com.google.android.exoplayer2.video.w
        public void b(String str) {
            z0.this.f28052r.b(str);
        }

        @Override // com.google.android.exoplayer2.audio.r
        public void c(String str) {
            z0.this.f28052r.c(str);
        }

        @Override // com.google.android.exoplayer2.audio.r
        public void d(long j11) {
            z0.this.f28052r.d(j11);
        }

        @Override // com.google.android.exoplayer2.video.w
        public void e(Exception exc) {
            z0.this.f28052r.e(exc);
        }

        @Override // com.google.android.exoplayer2.video.w
        public void f(Object obj, long j11) {
            z0.this.f28052r.f(obj, j11);
            if (z0.this.U == obj) {
                z0.this.f28040l.l(26, new com.google.android.exoplayer2.util.r.a() { // from class: com.google.android.exoplayer2.g1
                    @Override // com.google.android.exoplayer2.util.r.a
                    public final void invoke(Object obj2) {
                        ((o2.d) obj2).onRenderedFirstFrame();
                    }
                });
            }
        }

        @Override // com.google.android.exoplayer2.audio.r
        public void g(Exception exc) {
            z0.this.f28052r.g(exc);
        }

        @Override // com.google.android.exoplayer2.audio.r
        public void h(int i11, long j11, long j12) {
            z0.this.f28052r.h(i11, j11, j12);
        }

        @Override // com.google.android.exoplayer2.video.w
        public void i(long j11, int i11) {
            z0.this.f28052r.i(j11, i11);
        }

        @Override // com.google.android.exoplayer2.audio.r
        public void j(com.google.android.exoplayer2.decoder.e eVar) {
            z0.this.f28029f0 = eVar;
            z0.this.f28052r.j(eVar);
        }

        @Override // com.google.android.exoplayer2.video.w
        public void k(o1 o1Var, com.google.android.exoplayer2.decoder.g gVar) {
            z0.this.R = o1Var;
            z0.this.f28052r.k(o1Var, gVar);
        }

        @Override // com.google.android.exoplayer2.f3.b
        public void l(int i11) {
            final r rVarT0 = z0.T0(z0.this.B);
            if (rVarT0.equals(z0.this.f28051q0)) {
                return;
            }
            z0.this.f28051q0 = rVarT0;
            z0.this.f28040l.l(29, new com.google.android.exoplayer2.util.r.a() { // from class: com.google.android.exoplayer2.f1
                @Override // com.google.android.exoplayer2.util.r.a
                public final void invoke(Object obj) {
                    ((o2.d) obj).onDeviceInfoChanged(rVarT0);
                }
            });
        }

        @Override // com.google.android.exoplayer2.AudioBecomingNoisyManager.a
        public void m() {
            z0.this.b2(false, -1, 3);
        }

        @Override // com.google.android.exoplayer2.video.w
        public void n(com.google.android.exoplayer2.decoder.e eVar) {
            z0.this.f28052r.n(eVar);
            z0.this.R = null;
            z0.this.f28027e0 = null;
        }

        @Override // com.google.android.exoplayer2.audio.r
        public void o(com.google.android.exoplayer2.decoder.e eVar) {
            z0.this.f28052r.o(eVar);
            z0.this.S = null;
            z0.this.f28029f0 = null;
        }

        @Override // com.google.android.exoplayer2.audio.r
        public void onAudioDecoderInitialized(String str, long j11, long j12) {
            z0.this.f28052r.onAudioDecoderInitialized(str, j11, j12);
        }

        @Override // ba.o
        public void onCues(final ba.f fVar) {
            z0.this.f28039k0 = fVar;
            z0.this.f28040l.l(27, new com.google.android.exoplayer2.util.r.a() { // from class: com.google.android.exoplayer2.b1
                @Override // com.google.android.exoplayer2.util.r.a
                public final void invoke(Object obj) {
                    ((o2.d) obj).onCues(fVar);
                }
            });
        }

        @Override // ba.o
        public void onCues(final List list) {
            z0.this.f28040l.l(27, new com.google.android.exoplayer2.util.r.a() { // from class: com.google.android.exoplayer2.a1
                @Override // com.google.android.exoplayer2.util.r.a
                public final void invoke(Object obj) {
                    ((o2.d) obj).onCues(list);
                }
            });
        }

        @Override // com.google.android.exoplayer2.video.w
        public void onDroppedFrames(int i11, long j11) {
            z0.this.f28052r.onDroppedFrames(i11, j11);
        }

        @Override // com.google.android.exoplayer2.metadata.e
        public void onMetadata(final Metadata metadata) {
            z0 z0Var = z0.this;
            z0Var.f28055s0 = z0Var.f28055s0.b().I(metadata).F();
            a2 a2VarR0 = z0.this.R0();
            if (!a2VarR0.equals(z0.this.P)) {
                z0.this.P = a2VarR0;
                z0.this.f28040l.i(14, new com.google.android.exoplayer2.util.r.a() { // from class: com.google.android.exoplayer2.c1
                    @Override // com.google.android.exoplayer2.util.r.a
                    public final void invoke(Object obj) {
                        this.f24820a.J((o2.d) obj);
                    }
                });
            }
            z0.this.f28040l.i(28, new com.google.android.exoplayer2.util.r.a() { // from class: com.google.android.exoplayer2.d1
                @Override // com.google.android.exoplayer2.util.r.a
                public final void invoke(Object obj) {
                    ((o2.d) obj).onMetadata(metadata);
                }
            });
            z0.this.f28040l.f();
        }

        @Override // com.google.android.exoplayer2.audio.r
        public void onSkipSilenceEnabledChanged(final boolean z10) {
            if (z0.this.f28037j0 == z10) {
                return;
            }
            z0.this.f28037j0 = z10;
            z0.this.f28040l.l(23, new com.google.android.exoplayer2.util.r.a() { // from class: com.google.android.exoplayer2.i1
                @Override // com.google.android.exoplayer2.util.r.a
                public final void invoke(Object obj) {
                    ((o2.d) obj).onSkipSilenceEnabledChanged(z10);
                }
            });
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i11, int i12) {
            z0.this.V1(surfaceTexture);
            z0.this.K1(i11, i12);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            z0.this.W1(null);
            z0.this.K1(0, 0);
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i11, int i12) {
            z0.this.K1(i11, i12);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        @Override // com.google.android.exoplayer2.video.w
        public void onVideoDecoderInitialized(String str, long j11, long j12) {
            z0.this.f28052r.onVideoDecoderInitialized(str, j11, j12);
        }

        @Override // com.google.android.exoplayer2.video.w
        public void onVideoSizeChanged(final com.google.android.exoplayer2.video.y yVar) {
            z0.this.f28053r0 = yVar;
            z0.this.f28040l.l(25, new com.google.android.exoplayer2.util.r.a() { // from class: com.google.android.exoplayer2.h1
                @Override // com.google.android.exoplayer2.util.r.a
                public final void invoke(Object obj) {
                    ((o2.d) obj).onVideoSizeChanged(yVar);
                }
            });
        }

        @Override // com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView.b
        public void p(Surface surface) {
            z0.this.W1(null);
        }

        @Override // com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView.b
        public void q(Surface surface) {
            z0.this.W1(surface);
        }

        @Override // com.google.android.exoplayer2.f3.b
        public void r(final int i11, final boolean z10) {
            z0.this.f28040l.l(30, new com.google.android.exoplayer2.util.r.a() { // from class: com.google.android.exoplayer2.e1
                @Override // com.google.android.exoplayer2.util.r.a
                public final void invoke(Object obj) {
                    ((o2.d) obj).onDeviceVolumeChanged(i11, z10);
                }
            });
        }

        @Override // com.google.android.exoplayer2.f.b
        public void s(float f11) {
            z0.this.Q1();
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i11, int i12, int i13) {
            z0.this.K1(i12, i13);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            if (z0.this.Y) {
                z0.this.W1(surfaceHolder.getSurface());
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            if (z0.this.Y) {
                z0.this.W1(null);
            }
            z0.this.K1(0, 0);
        }

        @Override // com.google.android.exoplayer2.audio.r
        public void t(o1 o1Var, com.google.android.exoplayer2.decoder.g gVar) {
            z0.this.S = o1Var;
            z0.this.f28052r.t(o1Var, gVar);
        }

        @Override // com.google.android.exoplayer2.f.b
        public void u(int i11) {
            boolean playWhenReady = z0.this.getPlayWhenReady();
            z0.this.b2(playWhenReady, i11, z0.c1(playWhenReady, i11));
        }

        @Override // com.google.android.exoplayer2.video.w
        public void v(com.google.android.exoplayer2.decoder.e eVar) {
            z0.this.f28027e0 = eVar;
            z0.this.f28052r.v(eVar);
        }

        @Override // com.google.android.exoplayer2.video.w
        public /* synthetic */ void w(o1 o1Var) {
            com.google.android.exoplayer2.video.l.a(this, o1Var);
        }

        @Override // com.google.android.exoplayer2.ExoPlayer.a
        public void x(boolean z10) {
            z0.this.e2();
        }

        @Override // com.google.android.exoplayer2.audio.r
        public /* synthetic */ void y(o1 o1Var) {
            com.google.android.exoplayer2.audio.g.a(this, o1Var);
        }
    }

    private static final class d implements com.google.android.exoplayer2.video.i, ma.a, s2.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private com.google.android.exoplayer2.video.i f28068a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private ma.a f28069b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private com.google.android.exoplayer2.video.i f28070c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private ma.a f28071d;

        private d() {
        }

        @Override // ma.a
        public void a(long j11, float[] fArr) {
            ma.a aVar = this.f28071d;
            if (aVar != null) {
                aVar.a(j11, fArr);
            }
            ma.a aVar2 = this.f28069b;
            if (aVar2 != null) {
                aVar2.a(j11, fArr);
            }
        }

        @Override // ma.a
        public void b() {
            ma.a aVar = this.f28071d;
            if (aVar != null) {
                aVar.b();
            }
            ma.a aVar2 = this.f28069b;
            if (aVar2 != null) {
                aVar2.b();
            }
        }

        @Override // com.google.android.exoplayer2.video.i
        public void f(long j11, long j12, o1 o1Var, MediaFormat mediaFormat) {
            com.google.android.exoplayer2.video.i iVar = this.f28070c;
            if (iVar != null) {
                iVar.f(j11, j12, o1Var, mediaFormat);
            }
            com.google.android.exoplayer2.video.i iVar2 = this.f28068a;
            if (iVar2 != null) {
                iVar2.f(j11, j12, o1Var, mediaFormat);
            }
        }

        @Override // com.google.android.exoplayer2.s2.b
        public void handleMessage(int i11, Object obj) {
            if (i11 == 7) {
                this.f28068a = (com.google.android.exoplayer2.video.i) obj;
                return;
            }
            if (i11 == 8) {
                this.f28069b = (ma.a) obj;
                return;
            }
            if (i11 != 10000) {
                return;
            }
            SphericalGLSurfaceView sphericalGLSurfaceView = (SphericalGLSurfaceView) obj;
            if (sphericalGLSurfaceView == null) {
                this.f28070c = null;
                this.f28071d = null;
            } else {
                this.f28070c = sphericalGLSurfaceView.getVideoFrameMetadataListener();
                this.f28071d = sphericalGLSurfaceView.getCameraMotionListener();
            }
        }
    }

    private static final class e implements f2 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object f28072a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private k3 f28073b;

        public e(Object obj, k3 k3Var) {
            this.f28072a = obj;
            this.f28073b = k3Var;
        }

        @Override // com.google.android.exoplayer2.f2
        public Object a() {
            return this.f28072a;
        }

        @Override // com.google.android.exoplayer2.f2
        public k3 b() {
            return this.f28073b;
        }
    }

    static {
        m1.a("goog.exo.exoplayer");
    }

    public z0(ExoPlayer.b bVar, o2 o2Var) {
        com.google.android.exoplayer2.util.h hVar = new com.google.android.exoplayer2.util.h();
        this.f28024d = hVar;
        try {
            com.google.android.exoplayer2.util.s.f("ExoPlayerImpl", "Init " + Integer.toHexString(System.identityHashCode(this)) + " [ExoPlayerLib/2.18.1] [" + com.google.android.exoplayer2.util.p0.f27630e + "]");
            Context applicationContext = bVar.f24444a.getApplicationContext();
            this.f28026e = applicationContext;
            e9.a aVar = (e9.a) bVar.f24452i.apply(bVar.f24445b);
            this.f28052r = aVar;
            this.f28045n0 = bVar.f24454k;
            this.f28033h0 = bVar.f24455l;
            this.f28019a0 = bVar.f24460q;
            this.f28021b0 = bVar.f24461r;
            this.f28037j0 = bVar.f24459p;
            this.E = bVar.f24468y;
            c cVar = new c();
            this.f28064x = cVar;
            d dVar = new d();
            this.f28065y = dVar;
            Handler handler = new Handler(bVar.f24453j);
            x2[] x2VarArrA = ((b3) bVar.f24447d.get()).a(handler, cVar, cVar, cVar, cVar);
            this.f28030g = x2VarArrA;
            com.google.android.exoplayer2.util.a.g(x2VarArrA.length > 0);
            la.q qVar = (la.q) bVar.f24449f.get();
            this.f28032h = qVar;
            this.f28050q = (com.google.android.exoplayer2.source.o.a) bVar.f24448e.get();
            com.google.android.exoplayer2.upstream.e eVar = (com.google.android.exoplayer2.upstream.e) bVar.f24451h.get();
            this.f28056t = eVar;
            this.f28048p = bVar.f24462s;
            this.L = bVar.f24463t;
            this.f28058u = bVar.f24464u;
            this.f28060v = bVar.f24465v;
            this.N = bVar.f24469z;
            Looper looper = bVar.f24453j;
            this.f28054s = looper;
            com.google.android.exoplayer2.util.e eVar2 = bVar.f24445b;
            this.f28062w = eVar2;
            o2 o2Var2 = o2Var == null ? this : o2Var;
            this.f28028f = o2Var2;
            this.f28040l = new com.google.android.exoplayer2.util.r(looper, eVar2, new com.google.android.exoplayer2.util.r.b() { // from class: com.google.android.exoplayer2.j0
                @Override // com.google.android.exoplayer2.util.r.b
                public final void a(Object obj, com.google.android.exoplayer2.util.m mVar) {
                    this.f25144a.l1((o2.d) obj, mVar);
                }
            });
            this.f28042m = new CopyOnWriteArraySet();
            this.f28046o = new ArrayList();
            this.M = new t9.t.a(0);
            la.r rVar = new la.r(new a3[x2VarArrA.length], new com.google.android.exoplayer2.trackselection.h[x2VarArrA.length], p3.f25599b, null);
            this.f28020b = rVar;
            this.f28044n = new k3.b();
            o2.b bVarE = new o2.b.a().c(1, 2, 3, 13, 14, 15, 16, 17, 18, 19, 31, 20, 30, 21, 22, 23, 24, 25, 26, 27, 28).d(29, qVar.e()).e();
            this.f28022c = bVarE;
            this.O = new o2.b.a().b(bVarE).a(4).a(10).e();
            this.f28034i = eVar2.createHandler(looper, null);
            l1.f fVar = new l1.f() { // from class: com.google.android.exoplayer2.k0
                @Override // com.google.android.exoplayer2.l1.f
                public final void a(l1.e eVar3) {
                    this.f25148a.n1(eVar3);
                }
            };
            this.f28036j = fVar;
            this.f28057t0 = l2.j(rVar);
            aVar.q(o2Var2, looper);
            int i11 = com.google.android.exoplayer2.util.p0.f27626a;
            l1 l1Var = new l1(x2VarArrA, qVar, rVar, (t1) bVar.f24450g.get(), eVar, this.F, this.G, aVar, this.L, bVar.f24466w, bVar.f24467x, this.N, looper, eVar2, fVar, i11 < 31 ? new e9.u1() : b.a(applicationContext, this, bVar.A));
            this.f28038k = l1Var;
            this.f28035i0 = 1.0f;
            this.F = 0;
            a2 a2Var = a2.G;
            this.P = a2Var;
            this.Q = a2Var;
            this.f28055s0 = a2Var;
            this.f28059u0 = -1;
            if (i11 < 21) {
                this.f28031g0 = i1(0);
            } else {
                this.f28031g0 = com.google.android.exoplayer2.util.p0.F(applicationContext);
            }
            this.f28039k0 = ba.f.f16285b;
            this.f28041l0 = true;
            C(aVar);
            eVar.f(new Handler(looper), aVar);
            P0(cVar);
            long j11 = bVar.f24446c;
            if (j11 > 0) {
                l1Var.s(j11);
            }
            AudioBecomingNoisyManager audioBecomingNoisyManager = new AudioBecomingNoisyManager(bVar.f24444a, handler, cVar);
            this.f28066z = audioBecomingNoisyManager;
            audioBecomingNoisyManager.b(bVar.f24458o);
            f fVar2 = new f(bVar.f24444a, handler, cVar);
            this.A = fVar2;
            fVar2.m(bVar.f24456m ? this.f28033h0 : null);
            f3 f3Var = new f3(bVar.f24444a, handler, cVar);
            this.B = f3Var;
            f3Var.h(com.google.android.exoplayer2.util.p0.g0(this.f28033h0.f24638c));
            q3 q3Var = new q3(bVar.f24444a);
            this.C = q3Var;
            q3Var.a(bVar.f24457n != 0);
            r3 r3Var = new r3(bVar.f24444a);
            this.D = r3Var;
            r3Var.a(bVar.f24457n == 2);
            this.f28051q0 = T0(f3Var);
            this.f28053r0 = com.google.android.exoplayer2.video.y.f28007e;
            qVar.i(this.f28033h0);
            P1(1, 10, Integer.valueOf(this.f28031g0));
            P1(2, 10, Integer.valueOf(this.f28031g0));
            P1(1, 3, this.f28033h0);
            P1(2, 4, Integer.valueOf(this.f28019a0));
            P1(2, 5, Integer.valueOf(this.f28021b0));
            P1(1, 9, Boolean.valueOf(this.f28037j0));
            P1(2, 7, dVar);
            P1(6, 8, dVar);
            hVar.f();
        } catch (Throwable th2) {
            this.f28024d.f();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void B1(l2 l2Var, o2.d dVar) {
        dVar.onLoadingChanged(l2Var.f25249g);
        dVar.onIsLoadingChanged(l2Var.f25249g);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void C1(l2 l2Var, o2.d dVar) {
        dVar.onPlayerStateChanged(l2Var.f25254l, l2Var.f25247e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void D1(l2 l2Var, o2.d dVar) {
        dVar.onPlaybackStateChanged(l2Var.f25247e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void E1(l2 l2Var, int i11, o2.d dVar) {
        dVar.onPlayWhenReadyChanged(l2Var.f25254l, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void F1(l2 l2Var, o2.d dVar) {
        dVar.onPlaybackSuppressionReasonChanged(l2Var.f25255m);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void G1(l2 l2Var, o2.d dVar) {
        dVar.onIsPlayingChanged(j1(l2Var));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void H1(l2 l2Var, o2.d dVar) {
        dVar.onPlaybackParametersChanged(l2Var.f25256n);
    }

    private l2 I1(l2 l2Var, k3 k3Var, Pair pair) {
        com.google.android.exoplayer2.util.a.a(k3Var.u() || pair != null);
        k3 k3Var2 = l2Var.f25243a;
        l2 l2VarI = l2Var.i(k3Var);
        if (k3Var.u()) {
            com.google.android.exoplayer2.source.o.b bVarK = l2.k();
            long jB0 = com.google.android.exoplayer2.util.p0.B0(this.f28063w0);
            l2 l2VarB = l2VarI.c(bVarK, jB0, jB0, jB0, 0L, t9.x.f76163d, this.f28020b, ImmutableList.of()).b(bVarK);
            l2VarB.f25258p = l2VarB.f25260r;
            return l2VarB;
        }
        Object obj = l2VarI.f25244b.f76114a;
        boolean zEquals = obj.equals(((Pair) com.google.android.exoplayer2.util.p0.j(pair)).first);
        com.google.android.exoplayer2.source.o.b bVar = !zEquals ? new com.google.android.exoplayer2.source.o.b(pair.first) : l2VarI.f25244b;
        long jLongValue = ((Long) pair.second).longValue();
        long jB1 = com.google.android.exoplayer2.util.p0.B0(getContentPosition());
        if (!k3Var2.u()) {
            jB1 -= k3Var2.l(obj, this.f28044n).q();
        }
        if (!zEquals || jLongValue < jB1) {
            com.google.android.exoplayer2.util.a.g(!bVar.b());
            l2 l2VarB2 = l2VarI.c(bVar, jLongValue, jLongValue, jLongValue, 0L, !zEquals ? t9.x.f76163d : l2VarI.f25250h, !zEquals ? this.f28020b : l2VarI.f25251i, !zEquals ? ImmutableList.of() : l2VarI.f25252j).b(bVar);
            l2VarB2.f25258p = jLongValue;
            return l2VarB2;
        }
        if (jLongValue == jB1) {
            int iF = k3Var.f(l2VarI.f25253k.f76114a);
            if (iF == -1 || k3Var.j(iF, this.f28044n).f25156c != k3Var.l(bVar.f76114a, this.f28044n).f25156c) {
                k3Var.l(bVar.f76114a, this.f28044n);
                long jE = bVar.b() ? this.f28044n.e(bVar.f76115b, bVar.f76116c) : this.f28044n.f25157d;
                l2VarI = l2VarI.c(bVar, l2VarI.f25260r, l2VarI.f25260r, l2VarI.f25246d, jE - l2VarI.f25260r, l2VarI.f25250h, l2VarI.f25251i, l2VarI.f25252j).b(bVar);
                l2VarI.f25258p = jE;
            }
        } else {
            com.google.android.exoplayer2.util.a.g(!bVar.b());
            long jMax = Math.max(0L, l2VarI.f25259q - (jLongValue - jB1));
            long j11 = l2VarI.f25258p;
            if (l2VarI.f25253k.equals(l2VarI.f25244b)) {
                j11 = jLongValue + jMax;
            }
            l2VarI = l2VarI.c(bVar, jLongValue, jLongValue, jLongValue, jMax, l2VarI.f25250h, l2VarI.f25251i, l2VarI.f25252j);
            l2VarI.f25258p = j11;
        }
        return l2VarI;
    }

    private Pair J1(k3 k3Var, int i11, long j11) {
        if (k3Var.u()) {
            this.f28059u0 = i11;
            if (j11 == C.TIME_UNSET) {
                j11 = 0;
            }
            this.f28063w0 = j11;
            this.f28061v0 = 0;
            return null;
        }
        if (i11 == -1 || i11 >= k3Var.t()) {
            i11 = k3Var.e(this.G);
            j11 = k3Var.r(i11, this.f25094a).e();
        }
        return k3Var.n(this.f25094a, this.f28044n, i11, com.google.android.exoplayer2.util.p0.B0(j11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K1(final int i11, final int i12) {
        if (i11 == this.f28023c0 && i12 == this.f28025d0) {
            return;
        }
        this.f28023c0 = i11;
        this.f28025d0 = i12;
        this.f28040l.l(24, new com.google.android.exoplayer2.util.r.a() { // from class: com.google.android.exoplayer2.n0
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((o2.d) obj).onSurfaceSizeChanged(i11, i12);
            }
        });
    }

    private long L1(k3 k3Var, com.google.android.exoplayer2.source.o.b bVar, long j11) {
        k3Var.l(bVar.f76114a, this.f28044n);
        return j11 + this.f28044n.q();
    }

    private l2 M1(int i11, int i12) {
        com.google.android.exoplayer2.util.a.a(i11 >= 0 && i12 >= i11 && i12 <= this.f28046o.size());
        int iT = t();
        k3 currentTimeline = getCurrentTimeline();
        int size = this.f28046o.size();
        this.H++;
        N1(i11, i12);
        k3 k3VarU0 = U0();
        l2 l2VarI1 = I1(this.f28057t0, k3VarU0, b1(currentTimeline, k3VarU0));
        int i13 = l2VarI1.f25247e;
        if (i13 != 1 && i13 != 4 && i11 < i12 && i12 == size && iT >= l2VarI1.f25243a.t()) {
            l2VarI1 = l2VarI1.g(4);
        }
        this.f28038k.l0(i11, i12, this.M);
        return l2VarI1;
    }

    private void N1(int i11, int i12) {
        for (int i13 = i12 - 1; i13 >= i11; i13--) {
            this.f28046o.remove(i13);
        }
        this.M = this.M.a(i11, i12);
    }

    private void O1() {
        if (this.X != null) {
            W0(this.f28065y).n(10000).m(null).l();
            this.X.removeVideoSurfaceListener(this.f28064x);
            this.X = null;
        }
        TextureView textureView = this.Z;
        if (textureView != null) {
            if (textureView.getSurfaceTextureListener() != this.f28064x) {
                com.google.android.exoplayer2.util.s.i("ExoPlayerImpl", "SurfaceTextureListener already unset or replaced.");
            } else {
                this.Z.setSurfaceTextureListener(null);
            }
            this.Z = null;
        }
        SurfaceHolder surfaceHolder = this.W;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(this.f28064x);
            this.W = null;
        }
    }

    private void P1(int i11, int i12, Object obj) {
        for (x2 x2Var : this.f28030g) {
            if (x2Var.getTrackType() == i11) {
                W0(x2Var).n(i12).m(obj).l();
            }
        }
    }

    private List Q0(int i11, List list) {
        ArrayList arrayList = new ArrayList();
        for (int i12 = 0; i12 < list.size(); i12++) {
            h2.c cVar = new h2.c((com.google.android.exoplayer2.source.o) list.get(i12), this.f28048p);
            arrayList.add(cVar);
            this.f28046o.add(i12 + i11, new e(cVar.f25133b, cVar.f25132a.P()));
        }
        this.M = this.M.cloneAndInsert(i11, arrayList.size());
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q1() {
        P1(1, 2, Float.valueOf(this.f28035i0 * this.A.g()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public a2 R0() {
        k3 currentTimeline = getCurrentTimeline();
        if (currentTimeline.u()) {
            return this.f28055s0;
        }
        return this.f28055s0.b().H(currentTimeline.r(t(), this.f25094a).f25171c.f27712e).F();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static r T0(f3 f3Var) {
        return new r(0, f3Var.d(), f3Var.c());
    }

    private void T1(List list, int i11, long j11, boolean z10) {
        int i12;
        long j12;
        int iA1 = a1();
        long currentPosition = getCurrentPosition();
        this.H++;
        if (!this.f28046o.isEmpty()) {
            N1(0, this.f28046o.size());
        }
        List listQ0 = Q0(0, list);
        k3 k3VarU0 = U0();
        if (!k3VarU0.u() && i11 >= k3VarU0.t()) {
            throw new IllegalSeekPositionException(k3VarU0, i11, j11);
        }
        if (z10) {
            int iE = k3VarU0.e(this.G);
            j12 = C.TIME_UNSET;
            i12 = iE;
        } else if (i11 == -1) {
            i12 = iA1;
            j12 = currentPosition;
        } else {
            i12 = i11;
            j12 = j11;
        }
        l2 l2VarI1 = I1(this.f28057t0, k3VarU0, J1(k3VarU0, i12, j12));
        int i13 = l2VarI1.f25247e;
        if (i12 != -1 && i13 != 1) {
            i13 = (k3VarU0.u() || i12 >= k3VarU0.t()) ? 4 : 2;
        }
        l2 l2VarG = l2VarI1.g(i13);
        this.f28038k.K0(listQ0, i12, com.google.android.exoplayer2.util.p0.B0(j12), this.M);
        c2(l2VarG, 0, 1, false, (this.f28057t0.f25244b.f76114a.equals(l2VarG.f25244b.f76114a) || this.f28057t0.f25243a.u()) ? false : true, 4, Z0(l2VarG), -1);
    }

    private k3 U0() {
        return new t2(this.f28046o, this.M);
    }

    private void U1(SurfaceHolder surfaceHolder) {
        this.Y = false;
        this.W = surfaceHolder;
        surfaceHolder.addCallback(this.f28064x);
        Surface surface = this.W.getSurface();
        if (surface == null || !surface.isValid()) {
            K1(0, 0);
        } else {
            Rect surfaceFrame = this.W.getSurfaceFrame();
            K1(surfaceFrame.width(), surfaceFrame.height());
        }
    }

    private List V0(List list) {
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < list.size(); i11++) {
            arrayList.add(this.f28050q.a((v1) list.get(i11)));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V1(SurfaceTexture surfaceTexture) {
        Surface surface = new Surface(surfaceTexture);
        W1(surface);
        this.V = surface;
    }

    private s2 W0(s2.b bVar) {
        int iA1 = a1();
        l1 l1Var = this.f28038k;
        k3 k3Var = this.f28057t0.f25243a;
        if (iA1 == -1) {
            iA1 = 0;
        }
        return new s2(l1Var, bVar, k3Var, iA1, this.f28062w, l1Var.z());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W1(Object obj) {
        boolean z10;
        ArrayList arrayList = new ArrayList();
        x2[] x2VarArr = this.f28030g;
        int length = x2VarArr.length;
        int i11 = 0;
        while (true) {
            z10 = true;
            if (i11 >= length) {
                break;
            }
            x2 x2Var = x2VarArr[i11];
            if (x2Var.getTrackType() == 2) {
                arrayList.add(W0(x2Var).n(1).m(obj).l());
            }
            i11++;
        }
        Object obj2 = this.U;
        if (obj2 == null || obj2 == obj) {
            z10 = false;
        } else {
            try {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((s2) it.next()).a(this.E);
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            } catch (TimeoutException unused2) {
            }
            z10 = false;
            Object obj3 = this.U;
            Surface surface = this.V;
            if (obj3 == surface) {
                surface.release();
                this.V = null;
            }
        }
        this.U = obj;
        if (z10) {
            Z1(false, ExoPlaybackException.createForUnexpected(new ExoTimeoutException(3), 1003));
        }
    }

    private Pair X0(l2 l2Var, l2 l2Var2, boolean z10, int i11, boolean z11) {
        k3 k3Var = l2Var2.f25243a;
        k3 k3Var2 = l2Var.f25243a;
        if (k3Var2.u() && k3Var.u()) {
            return new Pair(Boolean.FALSE, -1);
        }
        int i12 = 3;
        if (k3Var2.u() != k3Var.u()) {
            return new Pair(Boolean.TRUE, 3);
        }
        if (k3Var.r(k3Var.l(l2Var2.f25244b.f76114a, this.f28044n).f25156c, this.f25094a).f25169a.equals(k3Var2.r(k3Var2.l(l2Var.f25244b.f76114a, this.f28044n).f25156c, this.f25094a).f25169a)) {
            return (z10 && i11 == 0 && l2Var2.f25244b.f76117d < l2Var.f25244b.f76117d) ? new Pair(Boolean.TRUE, 0) : new Pair(Boolean.FALSE, -1);
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

    private long Z0(l2 l2Var) {
        if (l2Var.f25243a.u()) {
            return com.google.android.exoplayer2.util.p0.B0(this.f28063w0);
        }
        return l2Var.f25244b.b() ? l2Var.f25260r : L1(l2Var.f25243a, l2Var.f25244b, l2Var.f25260r);
    }

    private void Z1(boolean z10, ExoPlaybackException exoPlaybackException) {
        l2 l2VarB;
        if (z10) {
            l2VarB = M1(0, this.f28046o.size()).e(null);
        } else {
            l2 l2Var = this.f28057t0;
            l2VarB = l2Var.b(l2Var.f25244b);
            l2VarB.f25258p = l2VarB.f25260r;
            l2VarB.f25259q = 0L;
        }
        l2 l2VarG = l2VarB.g(1);
        if (exoPlaybackException != null) {
            l2VarG = l2VarG.e(exoPlaybackException);
        }
        l2 l2Var2 = l2VarG;
        this.H++;
        this.f28038k.e1();
        c2(l2Var2, 0, 1, false, l2Var2.f25243a.u() && !this.f28057t0.f25243a.u(), 4, Z0(l2Var2), -1);
    }

    private int a1() {
        if (this.f28057t0.f25243a.u()) {
            return this.f28059u0;
        }
        l2 l2Var = this.f28057t0;
        return l2Var.f25243a.l(l2Var.f25244b.f76114a, this.f28044n).f25156c;
    }

    private void a2() {
        o2.b bVar = this.O;
        o2.b bVarH = com.google.android.exoplayer2.util.p0.H(this.f28028f, this.f28022c);
        this.O = bVarH;
        if (bVarH.equals(bVar)) {
            return;
        }
        this.f28040l.i(13, new com.google.android.exoplayer2.util.r.a() { // from class: com.google.android.exoplayer2.q0
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                this.f25608a.t1((o2.d) obj);
            }
        });
    }

    private Pair b1(k3 k3Var, k3 k3Var2) {
        long contentPosition = getContentPosition();
        if (k3Var.u() || k3Var2.u()) {
            boolean z10 = !k3Var.u() && k3Var2.u();
            int iA1 = z10 ? -1 : a1();
            if (z10) {
                contentPosition = -9223372036854775807L;
            }
            return J1(k3Var2, iA1, contentPosition);
        }
        Pair pairN = k3Var.n(this.f25094a, this.f28044n, t(), com.google.android.exoplayer2.util.p0.B0(contentPosition));
        Object obj = ((Pair) com.google.android.exoplayer2.util.p0.j(pairN)).first;
        if (k3Var2.f(obj) != -1) {
            return pairN;
        }
        Object objW0 = l1.w0(this.f25094a, this.f28044n, this.F, this.G, obj, k3Var, k3Var2);
        if (objW0 == null) {
            return J1(k3Var2, -1, C.TIME_UNSET);
        }
        k3Var2.l(objW0, this.f28044n);
        int i11 = this.f28044n.f25156c;
        return J1(k3Var2, i11, k3Var2.r(i11, this.f25094a).e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b2(boolean z10, int i11, int i12) {
        int i13 = 0;
        boolean z11 = z10 && i11 != -1;
        if (z11 && i11 != 1) {
            i13 = 1;
        }
        l2 l2Var = this.f28057t0;
        if (l2Var.f25254l == z11 && l2Var.f25255m == i13) {
            return;
        }
        this.H++;
        l2 l2VarD = l2Var.d(z11, i13);
        this.f28038k.N0(z11, i13);
        c2(l2VarD, 0, i12, false, false, 5, C.TIME_UNSET, -1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int c1(boolean z10, int i11) {
        return (!z10 || i11 == 1) ? 1 : 2;
    }

    private void c2(final l2 l2Var, final int i11, final int i12, boolean z10, boolean z11, final int i13, long j11, int i14) {
        l2 l2Var2 = this.f28057t0;
        this.f28057t0 = l2Var;
        Pair pairX0 = X0(l2Var, l2Var2, z11, i13, !l2Var2.f25243a.equals(l2Var.f25243a));
        boolean zBooleanValue = ((Boolean) pairX0.first).booleanValue();
        final int iIntValue = ((Integer) pairX0.second).intValue();
        a2 a2VarR0 = this.P;
        final v1 v1Var = null;
        if (zBooleanValue) {
            if (!l2Var.f25243a.u()) {
                v1Var = l2Var.f25243a.r(l2Var.f25243a.l(l2Var.f25244b.f76114a, this.f28044n).f25156c, this.f25094a).f25171c;
            }
            this.f28055s0 = a2.G;
        }
        if (zBooleanValue || !l2Var2.f25252j.equals(l2Var.f25252j)) {
            this.f28055s0 = this.f28055s0.b().J(l2Var.f25252j).F();
            a2VarR0 = R0();
        }
        boolean zEquals = a2VarR0.equals(this.P);
        this.P = a2VarR0;
        boolean z12 = l2Var2.f25254l != l2Var.f25254l;
        boolean z13 = l2Var2.f25247e != l2Var.f25247e;
        if (z13 || z12) {
            e2();
        }
        boolean z14 = l2Var2.f25249g;
        boolean z15 = l2Var.f25249g;
        boolean z16 = z14 != z15;
        if (z16) {
            d2(z15);
        }
        if (!l2Var2.f25243a.equals(l2Var.f25243a)) {
            this.f28040l.i(0, new com.google.android.exoplayer2.util.r.a() { // from class: com.google.android.exoplayer2.s0
                @Override // com.google.android.exoplayer2.util.r.a
                public final void invoke(Object obj) {
                    z0.u1(l2Var, i11, (o2.d) obj);
                }
            });
        }
        if (z11) {
            final o2.e eVarF1 = f1(i13, l2Var2, i14);
            final o2.e eVarE1 = e1(j11);
            this.f28040l.i(11, new com.google.android.exoplayer2.util.r.a() { // from class: com.google.android.exoplayer2.y0
                @Override // com.google.android.exoplayer2.util.r.a
                public final void invoke(Object obj) {
                    z0.v1(i13, eVarF1, eVarE1, (o2.d) obj);
                }
            });
        }
        if (zBooleanValue) {
            this.f28040l.i(1, new com.google.android.exoplayer2.util.r.a() { // from class: com.google.android.exoplayer2.b0
                @Override // com.google.android.exoplayer2.util.r.a
                public final void invoke(Object obj) {
                    ((o2.d) obj).onMediaItemTransition(v1Var, iIntValue);
                }
            });
        }
        if (l2Var2.f25248f != l2Var.f25248f) {
            this.f28040l.i(10, new com.google.android.exoplayer2.util.r.a() { // from class: com.google.android.exoplayer2.c0
                @Override // com.google.android.exoplayer2.util.r.a
                public final void invoke(Object obj) {
                    z0.x1(l2Var, (o2.d) obj);
                }
            });
            if (l2Var.f25248f != null) {
                this.f28040l.i(10, new com.google.android.exoplayer2.util.r.a() { // from class: com.google.android.exoplayer2.d0
                    @Override // com.google.android.exoplayer2.util.r.a
                    public final void invoke(Object obj) {
                        z0.y1(l2Var, (o2.d) obj);
                    }
                });
            }
        }
        la.r rVar = l2Var2.f25251i;
        la.r rVar2 = l2Var.f25251i;
        if (rVar != rVar2) {
            this.f28032h.f(rVar2.f68804e);
            this.f28040l.i(2, new com.google.android.exoplayer2.util.r.a() { // from class: com.google.android.exoplayer2.e0
                @Override // com.google.android.exoplayer2.util.r.a
                public final void invoke(Object obj) {
                    z0.z1(l2Var, (o2.d) obj);
                }
            });
        }
        if (!zEquals) {
            final a2 a2Var = this.P;
            this.f28040l.i(14, new com.google.android.exoplayer2.util.r.a() { // from class: com.google.android.exoplayer2.f0
                @Override // com.google.android.exoplayer2.util.r.a
                public final void invoke(Object obj) {
                    ((o2.d) obj).onMediaMetadataChanged(a2Var);
                }
            });
        }
        if (z16) {
            this.f28040l.i(3, new com.google.android.exoplayer2.util.r.a() { // from class: com.google.android.exoplayer2.g0
                @Override // com.google.android.exoplayer2.util.r.a
                public final void invoke(Object obj) {
                    z0.B1(l2Var, (o2.d) obj);
                }
            });
        }
        if (z13 || z12) {
            this.f28040l.i(-1, new com.google.android.exoplayer2.util.r.a() { // from class: com.google.android.exoplayer2.h0
                @Override // com.google.android.exoplayer2.util.r.a
                public final void invoke(Object obj) {
                    z0.C1(l2Var, (o2.d) obj);
                }
            });
        }
        if (z13) {
            this.f28040l.i(4, new com.google.android.exoplayer2.util.r.a() { // from class: com.google.android.exoplayer2.i0
                @Override // com.google.android.exoplayer2.util.r.a
                public final void invoke(Object obj) {
                    z0.D1(l2Var, (o2.d) obj);
                }
            });
        }
        if (z12) {
            this.f28040l.i(5, new com.google.android.exoplayer2.util.r.a() { // from class: com.google.android.exoplayer2.t0
                @Override // com.google.android.exoplayer2.util.r.a
                public final void invoke(Object obj) {
                    z0.E1(l2Var, i12, (o2.d) obj);
                }
            });
        }
        if (l2Var2.f25255m != l2Var.f25255m) {
            this.f28040l.i(6, new com.google.android.exoplayer2.util.r.a() { // from class: com.google.android.exoplayer2.u0
                @Override // com.google.android.exoplayer2.util.r.a
                public final void invoke(Object obj) {
                    z0.F1(l2Var, (o2.d) obj);
                }
            });
        }
        if (j1(l2Var2) != j1(l2Var)) {
            this.f28040l.i(7, new com.google.android.exoplayer2.util.r.a() { // from class: com.google.android.exoplayer2.v0
                @Override // com.google.android.exoplayer2.util.r.a
                public final void invoke(Object obj) {
                    z0.G1(l2Var, (o2.d) obj);
                }
            });
        }
        if (!l2Var2.f25256n.equals(l2Var.f25256n)) {
            this.f28040l.i(12, new com.google.android.exoplayer2.util.r.a() { // from class: com.google.android.exoplayer2.w0
                @Override // com.google.android.exoplayer2.util.r.a
                public final void invoke(Object obj) {
                    z0.H1(l2Var, (o2.d) obj);
                }
            });
        }
        if (z10) {
            this.f28040l.i(-1, new com.google.android.exoplayer2.util.r.a() { // from class: com.google.android.exoplayer2.x0
                @Override // com.google.android.exoplayer2.util.r.a
                public final void invoke(Object obj) {
                    ((o2.d) obj).onSeekProcessed();
                }
            });
        }
        a2();
        this.f28040l.f();
        if (l2Var2.f25257o != l2Var.f25257o) {
            Iterator it = this.f28042m.iterator();
            while (it.hasNext()) {
                ((ExoPlayer.a) it.next()).x(l2Var.f25257o);
            }
        }
    }

    private void d2(boolean z10) {
        PriorityTaskManager priorityTaskManager = this.f28045n0;
        if (priorityTaskManager != null) {
            if (z10 && !this.f28047o0) {
                priorityTaskManager.a(0);
                this.f28047o0 = true;
            } else {
                if (z10 || !this.f28047o0) {
                    return;
                }
                priorityTaskManager.d(0);
                this.f28047o0 = false;
            }
        }
    }

    private o2.e e1(long j11) {
        v1 v1Var;
        Object obj;
        int iF;
        Object obj2;
        int iT = t();
        if (this.f28057t0.f25243a.u()) {
            v1Var = null;
            obj = null;
            iF = -1;
            obj2 = null;
        } else {
            l2 l2Var = this.f28057t0;
            Object obj3 = l2Var.f25244b.f76114a;
            l2Var.f25243a.l(obj3, this.f28044n);
            iF = this.f28057t0.f25243a.f(obj3);
            obj = obj3;
            obj2 = this.f28057t0.f25243a.r(iT, this.f25094a).f25169a;
            v1Var = this.f25094a.f25171c;
        }
        long jE1 = com.google.android.exoplayer2.util.p0.e1(j11);
        long jE2 = this.f28057t0.f25244b.b() ? com.google.android.exoplayer2.util.p0.e1(g1(this.f28057t0)) : jE1;
        com.google.android.exoplayer2.source.o.b bVar = this.f28057t0.f25244b;
        return new o2.e(obj2, iT, v1Var, obj, iF, jE1, jE2, bVar.f76115b, bVar.f76116c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e2() {
        int playbackState = getPlaybackState();
        if (playbackState != 1) {
            if (playbackState == 2 || playbackState == 3) {
                this.C.b(getPlayWhenReady() && !Y0());
                this.D.b(getPlayWhenReady());
                return;
            } else if (playbackState != 4) {
                throw new IllegalStateException();
            }
        }
        this.C.b(false);
        this.D.b(false);
    }

    private o2.e f1(int i11, l2 l2Var, int i12) {
        int i13;
        Object obj;
        v1 v1Var;
        Object obj2;
        int i14;
        long jG1;
        long jG2;
        k3.b bVar = new k3.b();
        if (l2Var.f25243a.u()) {
            i13 = i12;
            obj = null;
            v1Var = null;
            obj2 = null;
            i14 = -1;
        } else {
            Object obj3 = l2Var.f25244b.f76114a;
            l2Var.f25243a.l(obj3, bVar);
            int i15 = bVar.f25156c;
            int iF = l2Var.f25243a.f(obj3);
            Object obj4 = l2Var.f25243a.r(i15, this.f25094a).f25169a;
            v1Var = this.f25094a.f25171c;
            obj2 = obj3;
            i14 = iF;
            obj = obj4;
            i13 = i15;
        }
        if (i11 == 0) {
            if (l2Var.f25244b.b()) {
                com.google.android.exoplayer2.source.o.b bVar2 = l2Var.f25244b;
                jG1 = bVar.e(bVar2.f76115b, bVar2.f76116c);
                jG2 = g1(l2Var);
            } else {
                jG1 = l2Var.f25244b.f76118e != -1 ? g1(this.f28057t0) : bVar.f25158e + bVar.f25157d;
                jG2 = jG1;
            }
        } else if (l2Var.f25244b.b()) {
            jG1 = l2Var.f25260r;
            jG2 = g1(l2Var);
        } else {
            jG1 = bVar.f25158e + l2Var.f25260r;
            jG2 = jG1;
        }
        long jE1 = com.google.android.exoplayer2.util.p0.e1(jG1);
        long jE2 = com.google.android.exoplayer2.util.p0.e1(jG2);
        com.google.android.exoplayer2.source.o.b bVar3 = l2Var.f25244b;
        return new o2.e(obj, i13, v1Var, obj2, i14, jE1, jE2, bVar3.f76115b, bVar3.f76116c);
    }

    private void f2() {
        this.f28024d.c();
        if (Thread.currentThread() != k().getThread()) {
            String strC = com.google.android.exoplayer2.util.p0.C("Player is accessed on the wrong thread.\nCurrent thread: '%s'\nExpected thread: '%s'\nSee https://exoplayer.dev/issues/player-accessed-on-wrong-thread", Thread.currentThread().getName(), k().getThread().getName());
            if (this.f28041l0) {
                throw new IllegalStateException(strC);
            }
            com.google.android.exoplayer2.util.s.j("ExoPlayerImpl", strC, this.f28043m0 ? null : new IllegalStateException());
            this.f28043m0 = true;
        }
    }

    private static long g1(l2 l2Var) {
        k3.d dVar = new k3.d();
        k3.b bVar = new k3.b();
        l2Var.f25243a.l(l2Var.f25244b.f76114a, bVar);
        return l2Var.f25245c == C.TIME_UNSET ? l2Var.f25243a.r(bVar.f25156c, dVar).f() : bVar.q() + l2Var.f25245c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: h1, reason: merged with bridge method [inline-methods] */
    public void m1(l1.e eVar) {
        long j11;
        boolean z10;
        long jL1;
        int i11 = this.H - eVar.f25228c;
        this.H = i11;
        boolean z11 = true;
        if (eVar.f25229d) {
            this.I = eVar.f25230e;
            this.J = true;
        }
        if (eVar.f25231f) {
            this.K = eVar.f25232g;
        }
        if (i11 == 0) {
            k3 k3Var = eVar.f25227b.f25243a;
            if (!this.f28057t0.f25243a.u() && k3Var.u()) {
                this.f28059u0 = -1;
                this.f28063w0 = 0L;
                this.f28061v0 = 0;
            }
            if (!k3Var.u()) {
                List listK = ((t2) k3Var).K();
                com.google.android.exoplayer2.util.a.g(listK.size() == this.f28046o.size());
                for (int i12 = 0; i12 < listK.size(); i12++) {
                    ((e) this.f28046o.get(i12)).f28073b = (k3) listK.get(i12);
                }
            }
            if (this.J) {
                if (eVar.f25227b.f25244b.equals(this.f28057t0.f25244b) && eVar.f25227b.f25246d == this.f28057t0.f25260r) {
                    z11 = false;
                }
                if (z11) {
                    if (k3Var.u() || eVar.f25227b.f25244b.b()) {
                        jL1 = eVar.f25227b.f25246d;
                    } else {
                        l2 l2Var = eVar.f25227b;
                        jL1 = L1(k3Var, l2Var.f25244b, l2Var.f25246d);
                    }
                    j11 = jL1;
                } else {
                    j11 = -9223372036854775807L;
                }
                z10 = z11;
            } else {
                j11 = -9223372036854775807L;
                z10 = false;
            }
            this.J = false;
            c2(eVar.f25227b, 1, this.K, false, z10, this.I, j11, -1);
        }
    }

    private int i1(int i11) {
        AudioTrack audioTrack = this.T;
        if (audioTrack != null && audioTrack.getAudioSessionId() != i11) {
            this.T.release();
            this.T = null;
        }
        if (this.T == null) {
            this.T = new AudioTrack(3, 4000, 4, 2, 2, 0, i11);
        }
        return this.T.getAudioSessionId();
    }

    private static boolean j1(l2 l2Var) {
        return l2Var.f25247e == 3 && l2Var.f25254l && l2Var.f25255m == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l1(o2.d dVar, com.google.android.exoplayer2.util.m mVar) {
        dVar.onEvents(this.f28028f, new o2.c(mVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n1(final l1.e eVar) {
        this.f28034i.post(new Runnable() { // from class: com.google.android.exoplayer2.p0
            @Override // java.lang.Runnable
            public final void run() {
                this.f25595a.m1(eVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void o1(o2.d dVar) {
        dVar.onPlayerError(ExoPlaybackException.createForUnexpected(new ExoTimeoutException(1), 1003));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t1(o2.d dVar) {
        dVar.onAvailableCommandsChanged(this.O);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void u1(l2 l2Var, int i11, o2.d dVar) {
        dVar.onTimelineChanged(l2Var.f25243a, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void v1(int i11, o2.e eVar, o2.e eVar2, o2.d dVar) {
        dVar.onPositionDiscontinuity(i11);
        dVar.onPositionDiscontinuity(eVar, eVar2, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void x1(l2 l2Var, o2.d dVar) {
        dVar.onPlayerErrorChanged(l2Var.f25248f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void y1(l2 l2Var, o2.d dVar) {
        dVar.onPlayerError(l2Var.f25248f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void z1(l2 l2Var, o2.d dVar) {
        dVar.onTracksChanged(l2Var.f25251i.f68803d);
    }

    @Override // com.google.android.exoplayer2.o2
    public void A(o2.d dVar) {
        com.google.android.exoplayer2.util.a.e(dVar);
        this.f28040l.k(dVar);
    }

    @Override // com.google.android.exoplayer2.o2
    public void C(o2.d dVar) {
        com.google.android.exoplayer2.util.a.e(dVar);
        this.f28040l.c(dVar);
    }

    @Override // com.google.android.exoplayer2.o2
    public void D(final TrackSelectionParameters trackSelectionParameters) {
        f2();
        if (!this.f28032h.e() || trackSelectionParameters.equals(this.f28032h.b())) {
            return;
        }
        this.f28032h.j(trackSelectionParameters);
        this.f28040l.l(19, new com.google.android.exoplayer2.util.r.a() { // from class: com.google.android.exoplayer2.o0
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((o2.d) obj).onTrackSelectionParametersChanged(trackSelectionParameters);
            }
        });
    }

    public void O0(e9.c cVar) {
        com.google.android.exoplayer2.util.a.e(cVar);
        this.f28052r.C(cVar);
    }

    public void P0(ExoPlayer.a aVar) {
        this.f28042m.add(aVar);
    }

    public void R1(List list) {
        f2();
        S1(list, true);
    }

    public void S0(SurfaceHolder surfaceHolder) {
        f2();
        if (surfaceHolder == null || surfaceHolder != this.W) {
            return;
        }
        clearVideoSurface();
    }

    public void S1(List list, boolean z10) {
        f2();
        T1(list, -1, C.TIME_UNSET, z10);
    }

    public void X1(SurfaceHolder surfaceHolder) {
        f2();
        if (surfaceHolder == null) {
            clearVideoSurface();
            return;
        }
        O1();
        this.Y = true;
        this.W = surfaceHolder;
        surfaceHolder.addCallback(this.f28064x);
        Surface surface = surfaceHolder.getSurface();
        if (surface == null || !surface.isValid()) {
            W1(null);
            K1(0, 0);
        } else {
            W1(surface);
            Rect surfaceFrame = surfaceHolder.getSurfaceFrame();
            K1(surfaceFrame.width(), surfaceFrame.height());
        }
    }

    public boolean Y0() {
        f2();
        return this.f28057t0.f25257o;
    }

    public void Y1(boolean z10) {
        f2();
        this.A.p(getPlayWhenReady(), 1);
        Z1(z10, null);
        this.f28039k0 = ba.f.f16285b;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void a(com.google.android.exoplayer2.source.o oVar) {
        f2();
        R1(Collections.singletonList(oVar));
    }

    @Override // com.google.android.exoplayer2.o2
    public void b(n2 n2Var) {
        f2();
        if (n2Var == null) {
            n2Var = n2.f25473d;
        }
        if (this.f28057t0.f25256n.equals(n2Var)) {
            return;
        }
        l2 l2VarF = this.f28057t0.f(n2Var);
        this.H++;
        this.f28038k.P0(n2Var);
        c2(l2VarF, 0, 1, false, false, 5, C.TIME_UNSET, -1);
    }

    @Override // com.google.android.exoplayer2.o2
    public void clearVideoSurface() {
        f2();
        O1();
        W1(null);
        K1(0, 0);
    }

    @Override // com.google.android.exoplayer2.o2
    public void clearVideoSurfaceView(SurfaceView surfaceView) {
        f2();
        S0(surfaceView == null ? null : surfaceView.getHolder());
    }

    @Override // com.google.android.exoplayer2.o2
    public void clearVideoTextureView(TextureView textureView) {
        f2();
        if (textureView == null || textureView != this.Z) {
            return;
        }
        clearVideoSurface();
    }

    @Override // com.google.android.exoplayer2.o2
    public long d() {
        f2();
        return com.google.android.exoplayer2.util.p0.e1(this.f28057t0.f25259q);
    }

    @Override // com.google.android.exoplayer2.o2
    /* JADX INFO: renamed from: d1, reason: merged with bridge method [inline-methods] */
    public ExoPlaybackException c() {
        f2();
        return this.f28057t0.f25248f;
    }

    @Override // com.google.android.exoplayer2.o2
    public void e(List list, boolean z10) {
        f2();
        S1(V0(list), z10);
    }

    @Override // com.google.android.exoplayer2.o2
    public long getContentPosition() {
        f2();
        if (!isPlayingAd()) {
            return getCurrentPosition();
        }
        l2 l2Var = this.f28057t0;
        l2Var.f25243a.l(l2Var.f25244b.f76114a, this.f28044n);
        l2 l2Var2 = this.f28057t0;
        return l2Var2.f25245c == C.TIME_UNSET ? l2Var2.f25243a.r(t(), this.f25094a).e() : this.f28044n.p() + com.google.android.exoplayer2.util.p0.e1(this.f28057t0.f25245c);
    }

    @Override // com.google.android.exoplayer2.o2
    public int getCurrentAdGroupIndex() {
        f2();
        if (isPlayingAd()) {
            return this.f28057t0.f25244b.f76115b;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.o2
    public int getCurrentAdIndexInAdGroup() {
        f2();
        if (isPlayingAd()) {
            return this.f28057t0.f25244b.f76116c;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.o2
    public int getCurrentPeriodIndex() {
        f2();
        if (this.f28057t0.f25243a.u()) {
            return this.f28061v0;
        }
        l2 l2Var = this.f28057t0;
        return l2Var.f25243a.f(l2Var.f25244b.f76114a);
    }

    @Override // com.google.android.exoplayer2.o2
    public long getCurrentPosition() {
        f2();
        return com.google.android.exoplayer2.util.p0.e1(Z0(this.f28057t0));
    }

    @Override // com.google.android.exoplayer2.o2
    public k3 getCurrentTimeline() {
        f2();
        return this.f28057t0.f25243a;
    }

    @Override // com.google.android.exoplayer2.o2
    public p3 getCurrentTracks() {
        f2();
        return this.f28057t0.f25251i.f68803d;
    }

    @Override // com.google.android.exoplayer2.o2
    public long getDuration() {
        f2();
        if (!isPlayingAd()) {
            return E();
        }
        l2 l2Var = this.f28057t0;
        com.google.android.exoplayer2.source.o.b bVar = l2Var.f25244b;
        l2Var.f25243a.l(bVar.f76114a, this.f28044n);
        return com.google.android.exoplayer2.util.p0.e1(this.f28044n.e(bVar.f76115b, bVar.f76116c));
    }

    @Override // com.google.android.exoplayer2.o2
    public boolean getPlayWhenReady() {
        f2();
        return this.f28057t0.f25254l;
    }

    @Override // com.google.android.exoplayer2.o2
    public n2 getPlaybackParameters() {
        f2();
        return this.f28057t0.f25256n;
    }

    @Override // com.google.android.exoplayer2.o2
    public int getPlaybackState() {
        f2();
        return this.f28057t0.f25247e;
    }

    @Override // com.google.android.exoplayer2.o2
    public int getRepeatMode() {
        f2();
        return this.F;
    }

    @Override // com.google.android.exoplayer2.o2
    public boolean getShuffleModeEnabled() {
        f2();
        return this.G;
    }

    @Override // com.google.android.exoplayer2.o2
    public float getVolume() {
        f2();
        return this.f28035i0;
    }

    @Override // com.google.android.exoplayer2.o2
    public boolean isPlayingAd() {
        f2();
        return this.f28057t0.f25244b.b();
    }

    @Override // com.google.android.exoplayer2.o2
    public int j() {
        f2();
        return this.f28057t0.f25255m;
    }

    @Override // com.google.android.exoplayer2.o2
    public Looper k() {
        return this.f28054s;
    }

    @Override // com.google.android.exoplayer2.o2
    public TrackSelectionParameters l() {
        f2();
        return this.f28032h.b();
    }

    @Override // com.google.android.exoplayer2.o2
    public o2.b n() {
        f2();
        return this.O;
    }

    @Override // com.google.android.exoplayer2.o2
    public long o() {
        f2();
        return 3000L;
    }

    @Override // com.google.android.exoplayer2.o2
    public com.google.android.exoplayer2.video.y p() {
        f2();
        return this.f28053r0;
    }

    @Override // com.google.android.exoplayer2.o2
    public void prepare() {
        f2();
        boolean playWhenReady = getPlayWhenReady();
        int iP = this.A.p(playWhenReady, 2);
        b2(playWhenReady, iP, c1(playWhenReady, iP));
        l2 l2Var = this.f28057t0;
        if (l2Var.f25247e != 1) {
            return;
        }
        l2 l2VarE = l2Var.e(null);
        l2 l2VarG = l2VarE.g(l2VarE.f25243a.u() ? 4 : 2);
        this.H++;
        this.f28038k.g0();
        c2(l2VarG, 1, 1, false, false, 5, C.TIME_UNSET, -1);
    }

    @Override // com.google.android.exoplayer2.o2
    public long r() {
        f2();
        return this.f28060v;
    }

    @Override // com.google.android.exoplayer2.o2
    public void release() {
        AudioTrack audioTrack;
        com.google.android.exoplayer2.util.s.f("ExoPlayerImpl", "Release " + Integer.toHexString(System.identityHashCode(this)) + " [ExoPlayerLib/2.18.1] [" + com.google.android.exoplayer2.util.p0.f27630e + "] [" + m1.b() + "]");
        f2();
        if (com.google.android.exoplayer2.util.p0.f27626a < 21 && (audioTrack = this.T) != null) {
            audioTrack.release();
            this.T = null;
        }
        this.f28066z.b(false);
        this.B.g();
        this.C.b(false);
        this.D.b(false);
        this.A.i();
        if (!this.f28038k.i0()) {
            this.f28040l.l(10, new com.google.android.exoplayer2.util.r.a() { // from class: com.google.android.exoplayer2.l0
                @Override // com.google.android.exoplayer2.util.r.a
                public final void invoke(Object obj) {
                    z0.o1((o2.d) obj);
                }
            });
        }
        this.f28040l.j();
        this.f28034i.removeCallbacksAndMessages(null);
        this.f28056t.d(this.f28052r);
        l2 l2VarG = this.f28057t0.g(1);
        this.f28057t0 = l2VarG;
        l2 l2VarB = l2VarG.b(l2VarG.f25244b);
        this.f28057t0 = l2VarB;
        l2VarB.f25258p = l2VarB.f25260r;
        this.f28057t0.f25259q = 0L;
        this.f28052r.release();
        this.f28032h.g();
        O1();
        Surface surface = this.V;
        if (surface != null) {
            surface.release();
            this.V = null;
        }
        if (this.f28047o0) {
            ((PriorityTaskManager) com.google.android.exoplayer2.util.a.e(this.f28045n0)).d(0);
            this.f28047o0 = false;
        }
        this.f28039k0 = ba.f.f16285b;
        this.f28049p0 = true;
    }

    @Override // com.google.android.exoplayer2.o2
    public void seekTo(int i11, long j11) {
        f2();
        this.f28052r.m();
        k3 k3Var = this.f28057t0.f25243a;
        if (i11 < 0 || (!k3Var.u() && i11 >= k3Var.t())) {
            throw new IllegalSeekPositionException(k3Var, i11, j11);
        }
        this.H++;
        if (isPlayingAd()) {
            com.google.android.exoplayer2.util.s.i("ExoPlayerImpl", "seekTo ignored because an ad is playing");
            l1.e eVar = new l1.e(this.f28057t0);
            eVar.b(1);
            this.f28036j.a(eVar);
            return;
        }
        int i12 = getPlaybackState() != 1 ? 2 : 1;
        int iT = t();
        l2 l2VarI1 = I1(this.f28057t0.g(i12), k3Var, J1(k3Var, i11, j11));
        this.f28038k.y0(k3Var, i11, com.google.android.exoplayer2.util.p0.B0(j11));
        c2(l2VarI1, 0, 1, true, true, 1, Z0(l2VarI1), iT);
    }

    @Override // com.google.android.exoplayer2.o2
    public void setPlayWhenReady(boolean z10) {
        f2();
        int iP = this.A.p(z10, getPlaybackState());
        b2(z10, iP, c1(z10, iP));
    }

    @Override // com.google.android.exoplayer2.o2
    public void setRepeatMode(final int i11) {
        f2();
        if (this.F != i11) {
            this.F = i11;
            this.f28038k.R0(i11);
            this.f28040l.i(8, new com.google.android.exoplayer2.util.r.a() { // from class: com.google.android.exoplayer2.m0
                @Override // com.google.android.exoplayer2.util.r.a
                public final void invoke(Object obj) {
                    ((o2.d) obj).onRepeatModeChanged(i11);
                }
            });
            a2();
            this.f28040l.f();
        }
    }

    @Override // com.google.android.exoplayer2.o2
    public void setShuffleModeEnabled(final boolean z10) {
        f2();
        if (this.G != z10) {
            this.G = z10;
            this.f28038k.U0(z10);
            this.f28040l.i(9, new com.google.android.exoplayer2.util.r.a() { // from class: com.google.android.exoplayer2.a0
                @Override // com.google.android.exoplayer2.util.r.a
                public final void invoke(Object obj) {
                    ((o2.d) obj).onShuffleModeEnabledChanged(z10);
                }
            });
            a2();
            this.f28040l.f();
        }
    }

    @Override // com.google.android.exoplayer2.o2
    public void setVideoSurfaceView(SurfaceView surfaceView) {
        f2();
        if (surfaceView instanceof com.google.android.exoplayer2.video.h) {
            O1();
            W1(surfaceView);
            U1(surfaceView.getHolder());
        } else {
            if (!(surfaceView instanceof SphericalGLSurfaceView)) {
                X1(surfaceView == null ? null : surfaceView.getHolder());
                return;
            }
            O1();
            this.X = (SphericalGLSurfaceView) surfaceView;
            W0(this.f28065y).n(10000).m(this.X).l();
            this.X.addVideoSurfaceListener(this.f28064x);
            W1(this.X.getVideoSurface());
            U1(surfaceView.getHolder());
        }
    }

    @Override // com.google.android.exoplayer2.o2
    public void setVideoTextureView(TextureView textureView) {
        f2();
        if (textureView == null) {
            clearVideoSurface();
            return;
        }
        O1();
        this.Z = textureView;
        if (textureView.getSurfaceTextureListener() != null) {
            com.google.android.exoplayer2.util.s.i("ExoPlayerImpl", "Replacing existing SurfaceTextureListener.");
        }
        textureView.setSurfaceTextureListener(this.f28064x);
        SurfaceTexture surfaceTexture = textureView.isAvailable() ? textureView.getSurfaceTexture() : null;
        if (surfaceTexture == null) {
            W1(null);
            K1(0, 0);
        } else {
            V1(surfaceTexture);
            K1(textureView.getWidth(), textureView.getHeight());
        }
    }

    @Override // com.google.android.exoplayer2.o2
    public void setVolume(float f11) {
        f2();
        final float fP = com.google.android.exoplayer2.util.p0.p(f11, 0.0f, 1.0f);
        if (this.f28035i0 == fP) {
            return;
        }
        this.f28035i0 = fP;
        Q1();
        this.f28040l.l(22, new com.google.android.exoplayer2.util.r.a() { // from class: com.google.android.exoplayer2.r0
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((o2.d) obj).onVolumeChanged(fP);
            }
        });
    }

    @Override // com.google.android.exoplayer2.o2
    public void stop() {
        f2();
        Y1(false);
    }

    @Override // com.google.android.exoplayer2.o2
    public int t() {
        f2();
        int iA1 = a1();
        if (iA1 == -1) {
            return 0;
        }
        return iA1;
    }

    @Override // com.google.android.exoplayer2.o2
    public long u() {
        f2();
        if (this.f28057t0.f25243a.u()) {
            return this.f28063w0;
        }
        l2 l2Var = this.f28057t0;
        if (l2Var.f25253k.f76117d != l2Var.f25244b.f76117d) {
            return l2Var.f25243a.r(t(), this.f25094a).g();
        }
        long j11 = l2Var.f25258p;
        if (this.f28057t0.f25253k.b()) {
            l2 l2Var2 = this.f28057t0;
            k3.b bVarL = l2Var2.f25243a.l(l2Var2.f25253k.f76114a, this.f28044n);
            long jI = bVarL.i(this.f28057t0.f25253k.f76115b);
            j11 = jI == Long.MIN_VALUE ? bVarL.f25157d : jI;
        }
        l2 l2Var3 = this.f28057t0;
        return com.google.android.exoplayer2.util.p0.e1(L1(l2Var3.f25243a, l2Var3.f25253k, j11));
    }

    @Override // com.google.android.exoplayer2.o2
    public a2 x() {
        f2();
        return this.P;
    }

    @Override // com.google.android.exoplayer2.o2
    public long y() {
        f2();
        return this.f28058u;
    }
}
