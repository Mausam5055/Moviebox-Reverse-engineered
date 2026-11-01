package com.google.android.exoplayer2.source;

import android.os.Handler;
import com.google.android.exoplayer2.k3;
import com.google.android.exoplayer2.upstream.k0;
import com.google.android.exoplayer2.v1;
import e9.u1;

/* JADX INFO: loaded from: classes3.dex */
public interface o {

    public interface a {
        o a(v1 v1Var);

        a b(com.google.android.exoplayer2.drm.x xVar);

        a c(com.google.android.exoplayer2.upstream.z zVar);
    }

    public static final class b extends t9.j {
        public b(Object obj) {
            super(obj);
        }

        public b(Object obj, int i11, int i12, long j11) {
            super(obj, i11, i12, j11);
        }

        public b(Object obj, long j11) {
            super(obj, j11);
        }

        public b(Object obj, long j11, int i11) {
            super(obj, j11, i11);
        }

        public b(t9.j jVar) {
            super(jVar);
        }

        public b c(Object obj) {
            return new b(super.a(obj));
        }
    }

    public interface c {
        void a(o oVar, k3 k3Var);
    }

    v1 a();

    boolean b();

    k3 c();

    n d(b bVar, com.google.android.exoplayer2.upstream.b bVar2, long j11);

    void e(c cVar);

    void g(Handler handler, p pVar);

    void h(p pVar);

    void i(c cVar, k0 k0Var, u1 u1Var);

    void k(n nVar);

    void m(c cVar);

    void maybeThrowSourceInfoRefreshError();

    void o(c cVar);

    void q(Handler handler, com.google.android.exoplayer2.drm.s sVar);

    void r(com.google.android.exoplayer2.drm.s sVar);
}
