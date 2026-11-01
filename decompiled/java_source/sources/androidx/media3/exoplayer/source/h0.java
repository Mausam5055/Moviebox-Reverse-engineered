package androidx.media3.exoplayer.source;

import android.net.Uri;
import com.google.common.collect.ImmutableList;

/* JADX INFO: loaded from: classes2.dex */
public final class h0 extends androidx.media3.exoplayer.source.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final w1.h f12797h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final androidx.media3.datasource.a.InterfaceC0091a f12798i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final androidx.media3.common.r f12799j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final long f12800k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final androidx.media3.exoplayer.upstream.m f12801l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final boolean f12802m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final androidx.media3.common.e0 f12803n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final androidx.media3.common.t f12804o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final com.google.common.base.q f12805p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private w1.n f12806q;

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final androidx.media3.datasource.a.InterfaceC0091a f12807a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private androidx.media3.exoplayer.upstream.m f12808b = new androidx.media3.exoplayer.upstream.k();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f12809c = true;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Object f12810d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f12811e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private com.google.common.base.q f12812f;

        public b(androidx.media3.datasource.a.InterfaceC0091a interfaceC0091a) {
            this.f12807a = (androidx.media3.datasource.a.InterfaceC0091a) androidx.media3.common.util.a.e(interfaceC0091a);
        }

        public h0 a(androidx.media3.common.t.k kVar, long j11) {
            return new h0(this.f12811e, kVar, this.f12807a, j11, this.f12808b, this.f12809c, this.f12810d, this.f12812f);
        }

        public b b(androidx.media3.exoplayer.upstream.m mVar) {
            if (mVar == null) {
                mVar = new androidx.media3.exoplayer.upstream.k();
            }
            this.f12808b = mVar;
            return this;
        }
    }

    private h0(String str, androidx.media3.common.t.k kVar, androidx.media3.datasource.a.InterfaceC0091a interfaceC0091a, long j11, androidx.media3.exoplayer.upstream.m mVar, boolean z10, Object obj, com.google.common.base.q qVar) {
        this.f12798i = interfaceC0091a;
        this.f12800k = j11;
        this.f12801l = mVar;
        this.f12802m = z10;
        androidx.media3.common.t tVarA = new androidx.media3.common.t.c().i(Uri.EMPTY).d(kVar.f10329a.toString()).g(ImmutableList.of(kVar)).h(obj).a();
        this.f12804o = tVarA;
        androidx.media3.common.r.b bVarH0 = new androidx.media3.common.r.b().u0((String) com.google.common.base.h.a(kVar.f10330b, "text/x-unknown")).j0(kVar.f10331c).w0(kVar.f10332d).s0(kVar.f10333e).h0(kVar.f10334f);
        String str2 = kVar.f10335g;
        this.f12799j = bVarH0.f0(str2 == null ? str : str2).N();
        this.f12797h = new w1.h.b().i(kVar.f10329a).b(1).a();
        this.f12803n = new g2.w(j11, true, false, false, null, tVarA);
        this.f12805p = qVar;
    }

    @Override // androidx.media3.exoplayer.source.a
    protected void B() {
    }

    @Override // androidx.media3.exoplayer.source.r
    public androidx.media3.common.t a() {
        return this.f12804o;
    }

    @Override // androidx.media3.exoplayer.source.r
    public q g(r.b bVar, androidx.media3.exoplayer.upstream.b bVar2, long j11) {
        w1.h hVar = this.f12797h;
        androidx.media3.datasource.a.InterfaceC0091a interfaceC0091a = this.f12798i;
        w1.n nVar = this.f12806q;
        androidx.media3.common.r rVar = this.f12799j;
        long j12 = this.f12800k;
        androidx.media3.exoplayer.upstream.m mVar = this.f12801l;
        s.a aVarU = u(bVar);
        boolean z10 = this.f12802m;
        com.google.common.base.q qVar = this.f12805p;
        return new g0(hVar, interfaceC0091a, nVar, rVar, j12, mVar, aVarU, z10, qVar != null ? (androidx.media3.exoplayer.util.c) qVar.get() : null);
    }

    @Override // androidx.media3.exoplayer.source.r
    public void j(q qVar) {
        ((g0) qVar).j();
    }

    @Override // androidx.media3.exoplayer.source.r
    public void maybeThrowSourceInfoRefreshError() {
    }

    @Override // androidx.media3.exoplayer.source.a
    protected void z(w1.n nVar) {
        this.f12806q = nVar;
        A(this.f12803n);
    }
}
