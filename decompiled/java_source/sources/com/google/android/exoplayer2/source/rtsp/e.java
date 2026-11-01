package com.google.android.exoplayer2.source.rtsp;

import android.os.Handler;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes3.dex */
final class e implements Loader.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f26343a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final t f26344b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f26345c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final g9.n f26346d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final c.a f26348f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private f f26349g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile boolean f26350h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private volatile long f26352j;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Handler f26347e = p0.w();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private volatile long f26351i = C.TIME_UNSET;

    public interface a {
        void a(String str, c cVar);
    }

    public e(int i11, t tVar, a aVar, g9.n nVar, c.a aVar2) {
        this.f26343a = i11;
        this.f26344b = tVar;
        this.f26345c = aVar;
        this.f26346d = nVar;
        this.f26348f = aVar2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(String str, c cVar) {
        this.f26345c.a(str, cVar);
    }

    public void c() {
        ((f) com.google.android.exoplayer2.util.a.e(this.f26349g)).f();
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.d
    public void cancelLoad() {
        this.f26350h = true;
    }

    public void d(long j11, long j12) {
        this.f26351i = j11;
        this.f26352j = j12;
    }

    public void e(int i11) {
        if (((f) com.google.android.exoplayer2.util.a.e(this.f26349g)).e()) {
            return;
        }
        this.f26349g.g(i11);
    }

    public void f(long j11) {
        if (j11 == C.TIME_UNSET || ((f) com.google.android.exoplayer2.util.a.e(this.f26349g)).e()) {
            return;
        }
        this.f26349g.h(j11);
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.d
    public void load() {
        final c cVarA = null;
        try {
            cVarA = this.f26348f.a(this.f26343a);
            final String strC = cVarA.c();
            this.f26347e.post(new Runnable() { // from class: com.google.android.exoplayer2.source.rtsp.d
                @Override // java.lang.Runnable
                public final void run() {
                    this.f26336a.b(strC, cVarA);
                }
            });
            g9.f fVar = new g9.f((com.google.android.exoplayer2.upstream.g) com.google.android.exoplayer2.util.a.e(cVarA), 0L, -1L);
            f fVar2 = new f(this.f26344b.f26486a, this.f26343a);
            this.f26349g = fVar2;
            fVar2.b(this.f26346d);
            while (!this.f26350h) {
                if (this.f26351i != C.TIME_UNSET) {
                    this.f26349g.seek(this.f26352j, this.f26351i);
                    this.f26351i = C.TIME_UNSET;
                }
                if (this.f26349g.c(fVar, new g9.a0()) == -1) {
                }
            }
        } finally {
            com.google.android.exoplayer2.upstream.m.a(cVarA);
        }
    }
}
