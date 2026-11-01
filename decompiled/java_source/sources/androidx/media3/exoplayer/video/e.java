package androidx.media3.exoplayer.video;

import android.media.MediaFormat;
import android.view.Surface;
import androidx.media3.common.m0;
import androidx.media3.common.util.l0;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.w3;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayDeque;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
final class e implements VideoSink {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final u f13094a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.media3.common.util.i f13095b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final x f13096c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Queue f13097d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Surface f13098e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private androidx.media3.common.r f13099f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f13100g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f13101h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private VideoSink.a f13102i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Executor f13103j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private t f13104k;

    /* JADX INFO: Access modifiers changed from: private */
    final class b implements x.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private androidx.media3.common.r f13105a;

        private b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void f() {
            e.this.f13102i.c(e.this);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void g(m0 m0Var) {
            e.this.f13102i.b(e.this, m0Var);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void h() {
            e.this.f13102i.a(e.this);
        }

        @Override // androidx.media3.exoplayer.video.x.a
        public void a() {
            e.this.f13103j.execute(new Runnable() { // from class: androidx.media3.exoplayer.video.g
                @Override // java.lang.Runnable
                public final void run() {
                    this.f13113a.f();
                }
            });
            ((VideoSink.b) e.this.f13097d.remove()).b();
        }

        @Override // androidx.media3.exoplayer.video.x.a
        public void b(long j11, long j12, boolean z10) {
            if (z10 && e.this.f13098e != null) {
                e.this.f13103j.execute(new Runnable() { // from class: androidx.media3.exoplayer.video.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f13110a.h();
                    }
                });
            }
            androidx.media3.common.r rVarN = this.f13105a;
            if (rVarN == null) {
                rVarN = new androidx.media3.common.r.b().N();
            }
            e.this.f13104k.f(j12, e.this.f13095b.nanoTime(), rVarN, null);
            ((VideoSink.b) e.this.f13097d.remove()).a(j11);
        }

        @Override // androidx.media3.exoplayer.video.x.a
        public void onVideoSizeChanged(final m0 m0Var) {
            this.f13105a = new androidx.media3.common.r.b().B0(m0Var.f10115a).d0(m0Var.f10116b).u0("video/raw").N();
            e.this.f13103j.execute(new Runnable() { // from class: androidx.media3.exoplayer.video.h
                @Override // java.lang.Runnable
                public final void run() {
                    this.f13117a.g(m0Var);
                }
            });
        }
    }

    public e(u uVar, androidx.media3.common.util.i iVar) {
        this.f13094a = uVar;
        uVar.o(iVar);
        this.f13095b = iVar;
        this.f13096c = new x(new b(), uVar);
        this.f13097d = new ArrayDeque();
        this.f13099f = new androidx.media3.common.r.b().N();
        this.f13100g = C.TIME_UNSET;
        this.f13102i = VideoSink.a.f13073a;
        this.f13103j = new Executor() { // from class: androidx.media3.exoplayer.video.c
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                e.E(runnable);
            }
        };
        this.f13104k = new t() { // from class: androidx.media3.exoplayer.video.d
            @Override // androidx.media3.exoplayer.video.t
            public final void f(long j11, long j12, androidx.media3.common.r rVar, MediaFormat mediaFormat) {
                e.F(j11, j12, rVar, mediaFormat);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void E(Runnable runnable) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void F(long j11, long j12, androidx.media3.common.r rVar, MediaFormat mediaFormat) {
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public void a(float f11) {
        this.f13094a.r(f11);
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public boolean b(long j11, boolean z10, VideoSink.b bVar) {
        this.f13097d.add(bVar);
        this.f13096c.g(j11 - this.f13101h);
        return true;
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public void c() {
        this.f13094a.a();
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public void d(t tVar) {
        this.f13104k = tVar;
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public void e() {
        this.f13096c.l();
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public void f(long j11, long j12) {
        if (j11 != this.f13100g) {
            this.f13096c.h(j11);
            this.f13100g = j11;
        }
        this.f13101h = j12;
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public void g() {
        this.f13094a.l();
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public void h(w3.a aVar) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public void i(List list) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public boolean isEnded() {
        return this.f13096c.d();
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public boolean isInitialized() {
        return true;
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public boolean j(boolean z10) {
        return this.f13094a.d(z10);
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public boolean k(androidx.media3.common.r rVar) {
        return true;
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public void l(boolean z10) {
        this.f13094a.h(z10);
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public Surface m() {
        return (Surface) androidx.media3.common.util.a.i(this.f13098e);
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public void n() {
        this.f13094a.k();
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public void o(int i11, androidx.media3.common.r rVar, List list) {
        androidx.media3.common.util.a.g(list.isEmpty());
        int i12 = rVar.f10168v;
        androidx.media3.common.r rVar2 = this.f13099f;
        if (i12 != rVar2.f10168v || rVar.f10169w != rVar2.f10169w) {
            this.f13096c.i(i12, rVar.f10169w);
        }
        float f11 = rVar.f10170x;
        if (f11 != this.f13099f.f10170x) {
            this.f13094a.p(f11);
        }
        this.f13099f = rVar;
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public void p(Surface surface, l0 l0Var) {
        this.f13098e = surface;
        this.f13094a.q(surface);
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public void q() {
        this.f13094a.g();
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public void r(int i11) {
        this.f13094a.n(i11);
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public void release() {
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public void render(long j11, long j12) throws VideoSink.VideoSinkException {
        try {
            this.f13096c.j(j11, j12);
        } catch (ExoPlaybackException e11) {
            throw new VideoSink.VideoSinkException(e11, this.f13099f);
        }
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public void s() {
        this.f13098e = null;
        this.f13094a.q(null);
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public void t(boolean z10) {
        if (z10) {
            this.f13094a.m();
        }
        this.f13096c.b();
        this.f13097d.clear();
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public void u(boolean z10) {
        this.f13094a.e(z10);
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public void v(VideoSink.a aVar, Executor executor) {
        this.f13102i = aVar;
        this.f13103j = executor;
    }
}
