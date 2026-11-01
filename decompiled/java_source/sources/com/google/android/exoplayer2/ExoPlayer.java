package com.google.android.exoplayer2;

import android.content.Context;
import android.os.Looper;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;

/* JADX INFO: loaded from: classes3.dex */
public interface ExoPlayer extends o2 {

    public interface a {
        void x(boolean z10);
    }

    public static final class b {
        boolean A;
        boolean B;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Context f24444a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        com.google.android.exoplayer2.util.e f24445b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        long f24446c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        com.google.common.base.q f24447d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        com.google.common.base.q f24448e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        com.google.common.base.q f24449f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        com.google.common.base.q f24450g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        com.google.common.base.q f24451h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        com.google.common.base.f f24452i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        Looper f24453j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        PriorityTaskManager f24454k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        com.google.android.exoplayer2.audio.e f24455l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        boolean f24456m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        int f24457n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        boolean f24458o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        boolean f24459p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        int f24460q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        int f24461r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        boolean f24462s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        c3 f24463t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        long f24464u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        long f24465v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        s1 f24466w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        long f24467x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        long f24468y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        boolean f24469z;

        public b(final Context context) {
            this(context, new com.google.common.base.q() { // from class: com.google.android.exoplayer2.t
                @Override // com.google.common.base.q
                public final Object get() {
                    return ExoPlayer.b.g(context);
                }
            }, new com.google.common.base.q() { // from class: com.google.android.exoplayer2.u
                @Override // com.google.common.base.q
                public final Object get() {
                    return ExoPlayer.b.h(context);
                }
            });
        }

        private b(final Context context, com.google.common.base.q qVar, com.google.common.base.q qVar2) {
            this(context, qVar, qVar2, new com.google.common.base.q() { // from class: com.google.android.exoplayer2.w
                @Override // com.google.common.base.q
                public final Object get() {
                    return ExoPlayer.b.i(context);
                }
            }, new com.google.common.base.q() { // from class: com.google.android.exoplayer2.x
                @Override // com.google.common.base.q
                public final Object get() {
                    return new n();
                }
            }, new com.google.common.base.q() { // from class: com.google.android.exoplayer2.y
                @Override // com.google.common.base.q
                public final Object get() {
                    return com.google.android.exoplayer2.upstream.q.m(context);
                }
            }, new com.google.common.base.f() { // from class: com.google.android.exoplayer2.z
                @Override // com.google.common.base.f
                public final Object apply(Object obj) {
                    return new e9.p1((com.google.android.exoplayer2.util.e) obj);
                }
            });
        }

        private b(Context context, com.google.common.base.q qVar, com.google.common.base.q qVar2, com.google.common.base.q qVar3, com.google.common.base.q qVar4, com.google.common.base.q qVar5, com.google.common.base.f fVar) {
            this.f24444a = context;
            this.f24447d = qVar;
            this.f24448e = qVar2;
            this.f24449f = qVar3;
            this.f24450g = qVar4;
            this.f24451h = qVar5;
            this.f24452i = fVar;
            this.f24453j = com.google.android.exoplayer2.util.p0.Q();
            this.f24455l = com.google.android.exoplayer2.audio.e.f24634g;
            this.f24457n = 0;
            this.f24460q = 1;
            this.f24461r = 0;
            this.f24462s = true;
            this.f24463t = c3.f24834g;
            this.f24464u = 5000L;
            this.f24465v = MBInterstitialActivity.WEB_LOAD_TIME;
            this.f24466w = new m.b().a();
            this.f24445b = com.google.android.exoplayer2.util.e.f27567a;
            this.f24467x = 500L;
            this.f24468y = 2000L;
            this.A = true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ b3 g(Context context) {
            return new p(context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ com.google.android.exoplayer2.source.o.a h(Context context) {
            return new com.google.android.exoplayer2.source.i(context, new g9.i());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ la.q i(Context context) {
            return new com.google.android.exoplayer2.trackselection.e(context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ b3 k(b3 b3Var) {
            return b3Var;
        }

        public ExoPlayer f() {
            com.google.android.exoplayer2.util.a.g(!this.B);
            this.B = true;
            return new z0(this, null);
        }

        public b l(final b3 b3Var) {
            com.google.android.exoplayer2.util.a.g(!this.B);
            this.f24447d = new com.google.common.base.q() { // from class: com.google.android.exoplayer2.v
                @Override // com.google.common.base.q
                public final Object get() {
                    return ExoPlayer.b.k(b3Var);
                }
            };
            return this;
        }
    }

    void a(com.google.android.exoplayer2.source.o oVar);
}
