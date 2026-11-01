package androidx.media3.exoplayer.source;

import android.os.Handler;
import y1.f4;

/* JADX INFO: loaded from: classes2.dex */
public interface r {

    public interface a {
        a a(i3.s.a aVar);

        a b(int i11);

        a c(boolean z10);

        r d(androidx.media3.common.t tVar);

        a e(androidx.media3.exoplayer.drm.w wVar);

        a f(androidx.media3.exoplayer.upstream.m mVar);
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f12883a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f12884b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f12885c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final long f12886d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f12887e;

        public b(Object obj) {
            this(obj, -1L);
        }

        public b(Object obj, int i11, int i12, long j11) {
            this(obj, i11, i12, j11, -1);
        }

        private b(Object obj, int i11, int i12, long j11, int i13) {
            this.f12883a = obj;
            this.f12884b = i11;
            this.f12885c = i12;
            this.f12886d = j11;
            this.f12887e = i13;
        }

        public b(Object obj, long j11) {
            this(obj, -1, -1, j11, -1);
        }

        public b(Object obj, long j11, int i11) {
            this(obj, -1, -1, j11, i11);
        }

        public b a(Object obj) {
            return this.f12883a.equals(obj) ? this : new b(obj, this.f12884b, this.f12885c, this.f12886d, this.f12887e);
        }

        public boolean b() {
            return this.f12884b != -1;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f12883a.equals(bVar.f12883a) && this.f12884b == bVar.f12884b && this.f12885c == bVar.f12885c && this.f12886d == bVar.f12886d && this.f12887e == bVar.f12887e;
        }

        public int hashCode() {
            return ((((((((527 + this.f12883a.hashCode()) * 31) + this.f12884b) * 31) + this.f12885c) * 31) + ((int) this.f12886d)) * 31) + this.f12887e;
        }
    }

    public interface c {
        void a(r rVar, androidx.media3.common.e0 e0Var);
    }

    androidx.media3.common.t a();

    boolean b();

    androidx.media3.common.e0 c();

    void d(Handler handler, s sVar);

    void e(s sVar);

    q g(b bVar, androidx.media3.exoplayer.upstream.b bVar2, long j11);

    void h(Handler handler, androidx.media3.exoplayer.drm.r rVar);

    void i(androidx.media3.exoplayer.drm.r rVar);

    void j(q qVar);

    void k(c cVar);

    void l(androidx.media3.common.t tVar);

    void m(c cVar, w1.n nVar, f4 f4Var);

    void maybeThrowSourceInfoRefreshError();

    void n(c cVar);

    void o(c cVar);

    boolean q(androidx.media3.common.t tVar);
}
