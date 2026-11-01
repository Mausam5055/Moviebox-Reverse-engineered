package com.google.android.exoplayer2.source;

import android.net.Uri;
import com.google.android.exoplayer2.k3;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.upstream.k0;
import com.google.android.exoplayer2.v1;
import com.google.common.collect.ImmutableList;

/* JADX INFO: loaded from: classes3.dex */
public final class d0 extends com.google.android.exoplayer2.source.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.n f25759h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.k.a f25760i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final o1 f25761j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final long f25762k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.z f25763l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final boolean f25764m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final k3 f25765n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final v1 f25766o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private k0 f25767p;

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final com.google.android.exoplayer2.upstream.k.a f25768a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private com.google.android.exoplayer2.upstream.z f25769b = new com.google.android.exoplayer2.upstream.v();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f25770c = true;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Object f25771d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f25772e;

        public b(com.google.android.exoplayer2.upstream.k.a aVar) {
            this.f25768a = (com.google.android.exoplayer2.upstream.k.a) com.google.android.exoplayer2.util.a.e(aVar);
        }

        public d0 a(v1.l lVar, long j11) {
            return new d0(this.f25772e, lVar, this.f25768a, j11, this.f25769b, this.f25770c, this.f25771d);
        }

        public b b(com.google.android.exoplayer2.upstream.z zVar) {
            if (zVar == null) {
                zVar = new com.google.android.exoplayer2.upstream.v();
            }
            this.f25769b = zVar;
            return this;
        }
    }

    private d0(String str, v1.l lVar, com.google.android.exoplayer2.upstream.k.a aVar, long j11, com.google.android.exoplayer2.upstream.z zVar, boolean z10, Object obj) {
        this.f25760i = aVar;
        this.f25762k = j11;
        this.f25763l = zVar;
        this.f25764m = z10;
        v1 v1VarA = new v1.c().i(Uri.EMPTY).d(lVar.f27788a.toString()).g(ImmutableList.of(lVar)).h(obj).a();
        this.f25766o = v1VarA;
        o1.b bVarU = new o1.b().e0((String) com.google.common.base.h.a(lVar.f27789b, "text/x-unknown")).V(lVar.f27790c).g0(lVar.f27791d).c0(lVar.f27792e).U(lVar.f27793f);
        String str2 = lVar.f27794g;
        this.f25761j = bVarU.S(str2 == null ? str : str2).E();
        this.f25759h = new com.google.android.exoplayer2.upstream.n.b().i(lVar.f27788a).b(1).a();
        this.f25765n = new t9.u(j11, true, false, false, null, v1VarA);
    }

    @Override // com.google.android.exoplayer2.source.a
    protected void B(k0 k0Var) {
        this.f25767p = k0Var;
        C(this.f25765n);
    }

    @Override // com.google.android.exoplayer2.source.a
    protected void D() {
    }

    @Override // com.google.android.exoplayer2.source.o
    public v1 a() {
        return this.f25766o;
    }

    @Override // com.google.android.exoplayer2.source.o
    public n d(o.b bVar, com.google.android.exoplayer2.upstream.b bVar2, long j11) {
        return new c0(this.f25759h, this.f25760i, this.f25767p, this.f25761j, this.f25762k, this.f25763l, v(bVar), this.f25764m);
    }

    @Override // com.google.android.exoplayer2.source.o
    public void k(n nVar) {
        ((c0) nVar).h();
    }

    @Override // com.google.android.exoplayer2.source.o
    public void maybeThrowSourceInfoRefreshError() {
    }
}
