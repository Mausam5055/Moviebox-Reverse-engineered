package androidx.media3.exoplayer;

import android.content.Context;
import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.media3.common.PriorityTaskManager;
import androidx.media3.exoplayer.image.ImageOutput;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes2.dex */
public interface ExoPlayer extends androidx.media3.common.a0 {

    public interface a {
        void w(boolean z10);

        void x(boolean z10);
    }

    public static final class b {
        long A;
        long B;
        boolean C;
        boolean D;
        s3 E;
        boolean F;
        boolean G;
        String H;
        boolean I;
        m4 J;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Context f10959a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        androidx.media3.common.util.i f10960b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        long f10961c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        com.google.common.base.q f10962d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        com.google.common.base.q f10963e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        com.google.common.base.q f10964f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        com.google.common.base.q f10965g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        com.google.common.base.q f10966h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        com.google.common.base.f f10967i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        Looper f10968j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        int f10969k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        PriorityTaskManager f10970l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        androidx.media3.common.c f10971m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        boolean f10972n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        int f10973o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        boolean f10974p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        boolean f10975q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        boolean f10976r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        int f10977s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        int f10978t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        boolean f10979u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        c4 f10980v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        long f10981w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        long f10982x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        long f10983y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        t2 f10984z;

        public b(final Context context) {
            this(context, new com.google.common.base.q() { // from class: androidx.media3.exoplayer.s0
                @Override // com.google.common.base.q
                public final Object get() {
                    return ExoPlayer.b.i(context);
                }
            }, new com.google.common.base.q() { // from class: androidx.media3.exoplayer.t0
                @Override // com.google.common.base.q
                public final Object get() {
                    return ExoPlayer.b.j(context);
                }
            });
        }

        private b(final Context context, com.google.common.base.q qVar, com.google.common.base.q qVar2) {
            this(context, qVar, qVar2, new com.google.common.base.q() { // from class: androidx.media3.exoplayer.v0
                @Override // com.google.common.base.q
                public final Object get() {
                    return ExoPlayer.b.k(context);
                }
            }, new com.google.common.base.q() { // from class: androidx.media3.exoplayer.w0
                @Override // com.google.common.base.q
                public final Object get() {
                    return new m();
                }
            }, new com.google.common.base.q() { // from class: androidx.media3.exoplayer.x0
                @Override // com.google.common.base.q
                public final Object get() {
                    return androidx.media3.exoplayer.upstream.j.m(context);
                }
            }, new com.google.common.base.f() { // from class: androidx.media3.exoplayer.y0
                @Override // com.google.common.base.f
                public final Object apply(Object obj) {
                    return new y1.s1((androidx.media3.common.util.i) obj);
                }
            });
        }

        private b(Context context, com.google.common.base.q qVar, com.google.common.base.q qVar2, com.google.common.base.q qVar3, com.google.common.base.q qVar4, com.google.common.base.q qVar5, com.google.common.base.f fVar) {
            this.f10959a = (Context) androidx.media3.common.util.a.e(context);
            this.f10962d = qVar;
            this.f10963e = qVar2;
            this.f10964f = qVar3;
            this.f10965g = qVar4;
            this.f10966h = qVar5;
            this.f10967i = fVar;
            this.f10968j = androidx.media3.common.util.a1.X();
            this.f10971m = androidx.media3.common.c.f9907g;
            this.f10973o = 0;
            this.f10977s = 1;
            this.f10978t = 0;
            this.f10979u = true;
            this.f10980v = c4.f11346g;
            this.f10981w = 5000L;
            this.f10982x = MBInterstitialActivity.WEB_LOAD_TIME;
            this.f10983y = 3000L;
            this.f10984z = new l.b().a();
            this.f10960b = androidx.media3.common.util.i.f10387a;
            this.A = 500L;
            this.B = 2000L;
            this.D = true;
            this.H = "";
            this.f10969k = -1000;
            this.J = new p();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ b4 i(Context context) {
            return new o(context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ androidx.media3.exoplayer.source.r.a j(Context context) {
            return new androidx.media3.exoplayer.source.i(context, new l2.m());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ j2.e0 k(Context context) {
            return new j2.n(context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ u2 m(u2 u2Var) {
            return u2Var;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ androidx.media3.exoplayer.source.r.a n(androidx.media3.exoplayer.source.r.a aVar) {
            return aVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ b4 o(b4 b4Var) {
            return b4Var;
        }

        public ExoPlayer h() {
            androidx.media3.common.util.a.g(!this.F);
            this.F = true;
            return new b2(this, null);
        }

        public b p(final u2 u2Var) {
            androidx.media3.common.util.a.g(!this.F);
            androidx.media3.common.util.a.e(u2Var);
            this.f10965g = new com.google.common.base.q() { // from class: androidx.media3.exoplayer.q0
                @Override // com.google.common.base.q
                public final Object get() {
                    return ExoPlayer.b.m(u2Var);
                }
            };
            return this;
        }

        public b q(final androidx.media3.exoplayer.source.r.a aVar) {
            androidx.media3.common.util.a.g(!this.F);
            androidx.media3.common.util.a.e(aVar);
            this.f10963e = new com.google.common.base.q() { // from class: androidx.media3.exoplayer.r0
                @Override // com.google.common.base.q
                public final Object get() {
                    return ExoPlayer.b.n(aVar);
                }
            };
            return this;
        }

        public b r(final b4 b4Var) {
            androidx.media3.common.util.a.g(!this.F);
            androidx.media3.common.util.a.e(b4Var);
            this.f10962d = new com.google.common.base.q() { // from class: androidx.media3.exoplayer.u0
                @Override // com.google.common.base.q
                public final Object get() {
                    return ExoPlayer.b.o(b4Var);
                }
            };
            return this;
        }
    }

    public static class c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final c f10985b = new c(C.TIME_UNSET);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f10986a;

        public c(long j11) {
            this.f10986a = j11;
        }
    }

    void D(y1.c cVar);

    androidx.media3.common.r I();

    void P(int i11, androidx.media3.common.t tVar);

    androidx.media3.common.r R();

    void T(int i11, androidx.media3.exoplayer.source.r rVar);

    void U(androidx.media3.exoplayer.source.r rVar);

    void X(androidx.media3.exoplayer.source.r rVar);

    @Override // androidx.media3.common.a0
    ExoPlaybackException c();

    void release();

    void setImageOutput(@Nullable ImageOutput imageOutput);
}
