package androidx.media3.exoplayer.video;

import android.content.Context;
import android.os.Looper;
import android.util.Pair;
import android.util.SparseArray;
import android.view.Surface;
import androidx.media3.common.VideoFrameProcessingException;
import androidx.media3.common.j0;
import androidx.media3.common.k0;
import androidx.media3.common.l0;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.o0;
import androidx.media3.exoplayer.w3;
import com.google.common.base.Suppliers;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public final class q implements l0 {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final Executor f13173y = new Executor() { // from class: androidx.media3.exoplayer.video.p
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            q.G(runnable);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f13174a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final o0 f13175b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.media3.common.c0.a f13176c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final SparseArray f13177d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List f13178e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final j0 f13179f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final VideoSink f13180g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final VideoSink.b f13181h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final androidx.media3.common.util.i f13182i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final CopyOnWriteArraySet f13183j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final boolean f13184k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private androidx.media3.common.r f13185l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private androidx.media3.common.util.p f13186m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f13187n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Pair f13188o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f13189p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f13190q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private w3.a f13191r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f13192s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private long f13193t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f13194u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private long f13195v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f13196w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f13197x;

    class a implements VideoSink.b {
        a() {
        }

        @Override // androidx.media3.exoplayer.video.VideoSink.b
        public void a(long j11) {
            q.w(q.this);
            android.support.v4.media.session.c.a(androidx.media3.common.util.a.i(null));
            throw null;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink.b
        public void b() {
            q.w(q.this);
            android.support.v4.media.session.c.a(androidx.media3.common.util.a.i(null));
            throw null;
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f13199a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final u f13200b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private k0.a f13201c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private androidx.media3.common.c0.a f13202d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private List f13203e = ImmutableList.of();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private j0 f13204f = j0.f10096a;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private androidx.media3.common.util.i f13205g = androidx.media3.common.util.i.f10387a;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f13206h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private boolean f13207i;

        public b(Context context, u uVar) {
            this.f13199a = context.getApplicationContext();
            this.f13200b = uVar;
        }

        public q h() {
            androidx.media3.common.util.a.g(!this.f13207i);
            a aVar = null;
            if (this.f13202d == null) {
                if (this.f13201c == null) {
                    this.f13201c = new e(aVar);
                }
                this.f13202d = new f(this.f13201c);
            }
            q qVar = new q(this, aVar);
            this.f13207i = true;
            return qVar;
        }

        public b i(androidx.media3.common.util.i iVar) {
            this.f13205g = iVar;
            return this;
        }
    }

    private final class c implements VideoSink, d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f13208a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f13209b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private androidx.media3.common.r f13211d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f13212e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private long f13213f;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private boolean f13217j;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private ImmutableList f13210c = ImmutableList.of();

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private long f13214g = C.TIME_UNSET;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private VideoSink.a f13215h = VideoSink.a.f13073a;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private Executor f13216i = q.f13173y;

        public c(Context context, int i11) {
            this.f13209b = i11;
            this.f13208a = a1.f0(context);
        }

        private void w(androidx.media3.common.r rVar) {
            rVar.b().T(q.A(rVar.C)).N();
            android.support.v4.media.session.c.a(androidx.media3.common.util.a.i(null));
            throw null;
        }

        private void x(List list) {
            if (q.this.f13176c.a()) {
                this.f13210c = ImmutableList.copyOf((Collection) list);
            } else {
                this.f13210c = new ImmutableList.a().l(list).l(q.this.f13178e).e();
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void a(float f11) {
            q.this.N(f11);
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public boolean b(long j11, boolean z10, VideoSink.b bVar) {
            androidx.media3.common.util.a.g(isInitialized());
            if (!q.this.Q()) {
                return false;
            }
            android.support.v4.media.session.c.a(androidx.media3.common.util.a.i(null));
            throw null;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void c() {
            q.this.f13180g.c();
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void d(t tVar) {
            q.this.P(tVar);
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void e() {
            q.this.f13193t = this.f13214g;
            if (q.this.f13192s >= q.this.f13193t) {
                q.this.f13180g.e();
                q.this.f13194u = true;
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void f(long j11, long j12) {
            o0 o0Var = q.this.f13175b;
            long j13 = this.f13214g;
            o0Var.a(j13 == C.TIME_UNSET ? 0L : j13 + 1, Long.valueOf(j11));
            this.f13213f = j12;
            q.this.L(j12);
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void g() {
            q.this.f13180g.g();
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void h(w3.a aVar) {
            q.this.f13191r = aVar;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void i(List list) {
            if (this.f13210c.equals(list)) {
                return;
            }
            x(list);
            androidx.media3.common.r rVar = this.f13211d;
            if (rVar != null) {
                w(rVar);
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public boolean isEnded() {
            return isInitialized() && q.this.C();
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public boolean isInitialized() {
            return false;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public boolean j(boolean z10) {
            return q.this.E(z10 && isInitialized());
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public boolean k(androidx.media3.common.r rVar) throws VideoSink.VideoSinkException {
            androidx.media3.common.util.a.g(!isInitialized());
            q.e(q.this, rVar, this.f13209b);
            return false;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void l(boolean z10) {
            q.this.f13180g.l(z10);
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public Surface m() {
            androidx.media3.common.util.a.g(isInitialized());
            android.support.v4.media.session.c.a(androidx.media3.common.util.a.i(null));
            throw null;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void n() {
            q.this.f13180g.n();
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void o(int i11, androidx.media3.common.r rVar, List list) {
            androidx.media3.common.util.a.g(isInitialized());
            if (i11 != 1 && i11 != 2) {
                throw new UnsupportedOperationException("Unsupported input type " + i11);
            }
            x(list);
            this.f13212e = i11;
            this.f13211d = rVar;
            q.this.f13193t = C.TIME_UNSET;
            q.this.f13194u = false;
            w(rVar);
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void p(Surface surface, androidx.media3.common.util.l0 l0Var) {
            q.this.M(surface, l0Var);
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void q() {
            q.this.f13180g.q();
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void r(int i11) {
            q.this.f13180g.r(i11);
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void release() {
            q.this.J();
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void render(long j11, long j12) {
            q.this.K(j11, j12);
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void s() {
            q.this.y();
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void t(boolean z10) {
            if (isInitialized()) {
                throw null;
            }
            this.f13214g = C.TIME_UNSET;
            q.this.z(z10);
            this.f13217j = false;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void u(boolean z10) {
            q.this.f13180g.u(z10);
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void v(VideoSink.a aVar, Executor executor) {
            this.f13215h = aVar;
            this.f13216i = executor;
        }
    }

    public interface d {
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class e implements k0.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final com.google.common.base.q f13219a = Suppliers.a(new com.google.common.base.q() { // from class: androidx.media3.exoplayer.video.r
            @Override // com.google.common.base.q
            public final Object get() {
                return q.e.b();
            }
        });

        private e() {
        }

        /* synthetic */ e(a aVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ k0.a b() {
            try {
                Class<?> cls = Class.forName("androidx.media3.effect.DefaultVideoFrameProcessor$Factory$Builder");
                return (k0.a) androidx.media3.common.util.a.e(cls.getMethod("build", null).invoke(cls.getConstructor(null).newInstance(null), null));
            } catch (Exception e11) {
                throw new IllegalStateException(e11);
            }
        }
    }

    private static final class f implements androidx.media3.common.c0.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final k0.a f13220a;

        public f(k0.a aVar) {
            this.f13220a = aVar;
        }

        @Override // androidx.media3.common.c0.a
        public boolean a() {
            return false;
        }

        @Override // androidx.media3.common.c0.a
        public androidx.media3.common.c0 b(Context context, androidx.media3.common.i iVar, androidx.media3.common.l lVar, l0 l0Var, Executor executor, j0 j0Var, List list, long j11) throws VideoFrameProcessingException {
            try {
                try {
                    ((androidx.media3.common.c0.a) Class.forName("androidx.media3.effect.PreviewingSingleInputVideoGraph$Factory").getConstructor(k0.a.class).newInstance(this.f13220a)).b(context, iVar, lVar, l0Var, executor, j0Var, list, j11);
                    return null;
                } catch (Exception e11) {
                    e = e11;
                    throw VideoFrameProcessingException.from(e);
                }
            } catch (Exception e12) {
                e = e12;
            }
        }
    }

    private q(b bVar) {
        this.f13174a = bVar.f13199a;
        this.f13175b = new o0();
        this.f13176c = (androidx.media3.common.c0.a) androidx.media3.common.util.a.i(bVar.f13202d);
        this.f13177d = new SparseArray();
        this.f13178e = bVar.f13203e;
        this.f13179f = bVar.f13204f;
        androidx.media3.common.util.i iVar = bVar.f13205g;
        this.f13182i = iVar;
        this.f13180g = new androidx.media3.exoplayer.video.e(bVar.f13200b, iVar);
        this.f13181h = new a();
        this.f13183j = new CopyOnWriteArraySet();
        this.f13184k = bVar.f13206h;
        this.f13185l = new androidx.media3.common.r.b().N();
        this.f13192s = C.TIME_UNSET;
        this.f13193t = C.TIME_UNSET;
        this.f13196w = -1;
        this.f13190q = 0;
    }

    /* synthetic */ q(b bVar, a aVar) {
        this(bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static androidx.media3.common.i A(androidx.media3.common.i iVar) {
        return (iVar == null || !iVar.g()) ? androidx.media3.common.i.f10063h : iVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean C() {
        return this.f13189p == 0 && this.f13194u && this.f13180g.isEnded();
    }

    private boolean D() {
        return this.f13190q == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean E(boolean z10) {
        return this.f13180g.j(z10 && this.f13189p == 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void F() {
        this.f13189p--;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void G(Runnable runnable) {
    }

    private void H(Surface surface, int i11, int i12) {
    }

    private k0 I(androidx.media3.common.r rVar, int i11) throws VideoSink.VideoSinkException {
        if (i11 != 0) {
            if (!D()) {
                return null;
            }
            try {
                android.support.v4.media.session.c.a(androidx.media3.common.util.a.e(null));
                throw null;
            } catch (VideoFrameProcessingException e11) {
                throw new VideoSink.VideoSinkException(e11, rVar);
            }
        }
        androidx.media3.common.util.a.g(this.f13190q == 0);
        androidx.media3.common.i iVarA = A(rVar.C);
        if (this.f13184k) {
            iVarA = androidx.media3.common.i.f10063h;
        } else if (iVarA.f10073c == 7 && a1.f10350a < 34) {
            iVarA = iVarA.a().e(6).a();
        }
        androidx.media3.common.i iVar = iVarA;
        final androidx.media3.common.util.p pVarCreateHandler = this.f13182i.createHandler((Looper) androidx.media3.common.util.a.i(Looper.myLooper()), null);
        this.f13186m = pVarCreateHandler;
        try {
            androidx.media3.common.c0.a aVar = this.f13176c;
            Context context = this.f13174a;
            androidx.media3.common.l lVar = androidx.media3.common.l.f10097a;
            Objects.requireNonNull(pVarCreateHandler);
            aVar.b(context, iVar, lVar, this, new Executor() { // from class: androidx.media3.exoplayer.video.n
                @Override // java.util.concurrent.Executor
                public final void execute(Runnable runnable) {
                    pVarCreateHandler.post(runnable);
                }
            }, this.f13179f, this.f13178e, 0L);
            throw null;
        } catch (VideoFrameProcessingException e12) {
            throw new VideoSink.VideoSinkException(e12, rVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K(long j11, long j12) {
        this.f13180g.render(j11, j12);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L(long j11) {
        this.f13195v = j11;
        this.f13180g.f(this.f13187n, j11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N(float f11) {
        this.f13180g.a(f11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P(t tVar) {
        this.f13180g.d(tVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean Q() {
        int i11 = this.f13196w;
        return i11 != -1 && i11 == this.f13197x;
    }

    static /* synthetic */ k0 e(q qVar, androidx.media3.common.r rVar, int i11) throws VideoSink.VideoSinkException {
        qVar.I(rVar, i11);
        return null;
    }

    static /* synthetic */ androidx.media3.common.c0 w(q qVar) {
        qVar.getClass();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z(boolean z10) {
        if (D()) {
            this.f13189p++;
            this.f13180g.t(z10);
            while (this.f13175b.l() > 1) {
                this.f13175b.i();
            }
            if (this.f13175b.l() == 1) {
                this.f13180g.f(((Long) androidx.media3.common.util.a.e((Long) this.f13175b.i())).longValue(), this.f13195v);
            }
            this.f13192s = C.TIME_UNSET;
            this.f13193t = C.TIME_UNSET;
            this.f13194u = false;
            ((androidx.media3.common.util.p) androidx.media3.common.util.a.i(this.f13186m)).post(new Runnable() { // from class: androidx.media3.exoplayer.video.o
                @Override // java.lang.Runnable
                public final void run() {
                    this.f13172a.F();
                }
            });
        }
    }

    public VideoSink B(int i11) {
        androidx.media3.common.util.a.g(!a1.r(this.f13177d, i11));
        c cVar = new c(this.f13174a, i11);
        x(cVar);
        this.f13177d.put(i11, cVar);
        return cVar;
    }

    public void J() {
        if (this.f13190q == 2) {
            return;
        }
        androidx.media3.common.util.p pVar = this.f13186m;
        if (pVar != null) {
            pVar.removeCallbacksAndMessages(null);
        }
        this.f13188o = null;
        this.f13190q = 2;
    }

    public void M(Surface surface, androidx.media3.common.util.l0 l0Var) {
        Pair pair = this.f13188o;
        if (pair != null && ((Surface) pair.first).equals(surface) && ((androidx.media3.common.util.l0) this.f13188o.second).equals(l0Var)) {
            return;
        }
        this.f13188o = Pair.create(surface, l0Var);
        H(surface, l0Var.b(), l0Var.a());
    }

    public void O(int i11) {
        this.f13196w = i11;
    }

    public void x(d dVar) {
        this.f13183j.add(dVar);
    }

    public void y() {
        androidx.media3.common.util.l0 l0Var = androidx.media3.common.util.l0.f10407c;
        H(null, l0Var.b(), l0Var.a());
        this.f13188o = null;
    }
}
