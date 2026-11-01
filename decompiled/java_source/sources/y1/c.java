package y1;

import android.util.SparseArray;
import androidx.media3.common.PlaybackException;
import androidx.media3.exoplayer.audio.AudioSink;
import java.io.IOException;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public interface c {

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f78610a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final androidx.media3.common.e0 f78611b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f78612c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final androidx.media3.exoplayer.source.r.b f78613d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final long f78614e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final androidx.media3.common.e0 f78615f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final int f78616g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final androidx.media3.exoplayer.source.r.b f78617h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final long f78618i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final long f78619j;

        public a(long j11, androidx.media3.common.e0 e0Var, int i11, androidx.media3.exoplayer.source.r.b bVar, long j12, androidx.media3.common.e0 e0Var2, int i12, androidx.media3.exoplayer.source.r.b bVar2, long j13, long j14) {
            this.f78610a = j11;
            this.f78611b = e0Var;
            this.f78612c = i11;
            this.f78613d = bVar;
            this.f78614e = j12;
            this.f78615f = e0Var2;
            this.f78616g = i12;
            this.f78617h = bVar2;
            this.f78618i = j13;
            this.f78619j = j14;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f78610a == aVar.f78610a && this.f78612c == aVar.f78612c && this.f78614e == aVar.f78614e && this.f78616g == aVar.f78616g && this.f78618i == aVar.f78618i && this.f78619j == aVar.f78619j && Objects.equals(this.f78611b, aVar.f78611b) && Objects.equals(this.f78613d, aVar.f78613d) && Objects.equals(this.f78615f, aVar.f78615f) && Objects.equals(this.f78617h, aVar.f78617h);
        }

        public int hashCode() {
            return Objects.hash(Long.valueOf(this.f78610a), this.f78611b, Integer.valueOf(this.f78612c), this.f78613d, Long.valueOf(this.f78614e), this.f78615f, Integer.valueOf(this.f78616g), this.f78617h, Long.valueOf(this.f78618i), Long.valueOf(this.f78619j));
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final androidx.media3.common.p f78620a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final SparseArray f78621b;

        public b(androidx.media3.common.p pVar, SparseArray sparseArray) {
            this.f78620a = pVar;
            SparseArray sparseArray2 = new SparseArray(pVar.d());
            for (int i11 = 0; i11 < pVar.d(); i11++) {
                int iC = pVar.c(i11);
                sparseArray2.append(iC, (a) androidx.media3.common.util.a.e((a) sparseArray.get(iC)));
            }
            this.f78621b = sparseArray2;
        }

        public boolean a(int i11) {
            return this.f78620a.a(i11);
        }

        public int b(int i11) {
            return this.f78620a.c(i11);
        }

        public a c(int i11) {
            return (a) androidx.media3.common.util.a.e((a) this.f78621b.get(i11));
        }

        public int d() {
            return this.f78620a.d();
        }
    }

    void A(a aVar);

    void B(a aVar);

    void D(a aVar, PlaybackException playbackException);

    void E(a aVar, androidx.media3.exoplayer.j jVar);

    void F(a aVar, androidx.media3.common.a0.e eVar, androidx.media3.common.a0.e eVar2, int i11);

    void G(a aVar, Object obj, long j11);

    void I(a aVar, g2.i iVar, g2.j jVar);

    void J(a aVar, int i11, long j11, long j12);

    void K(a aVar, androidx.media3.exoplayer.j jVar);

    void L(a aVar, int i11);

    void M(a aVar, boolean z10);

    void N(a aVar, int i11, long j11, long j12);

    void O(a aVar, boolean z10, int i11);

    void P(a aVar, androidx.media3.common.z zVar);

    void Q(a aVar);

    void R(a aVar, String str, long j11, long j12);

    void S(a aVar, androidx.media3.common.m0 m0Var);

    void T(a aVar, long j11, int i11);

    void U(a aVar, int i11);

    void V(a aVar, int i11);

    void W(a aVar, String str, long j11);

    void X(a aVar, Exception exc);

    void Y(a aVar, AudioSink.a aVar2);

    void Z(a aVar, String str);

    void a(a aVar, androidx.media3.exoplayer.j jVar);

    void a0(a aVar, String str);

    void b(a aVar, float f11);

    void b0(a aVar, boolean z10, int i11);

    void c(a aVar, PlaybackException playbackException);

    void c0(a aVar, androidx.media3.common.a0.b bVar);

    void d(a aVar, int i11);

    void d0(androidx.media3.common.a0 a0Var, b bVar);

    void e0(a aVar, boolean z10);

    void f(a aVar, int i11, int i12, boolean z10);

    void f0(a aVar, int i11, int i12, int i13, float f11);

    void g(a aVar, boolean z10);

    void g0(a aVar, androidx.media3.common.v vVar);

    void h(a aVar, int i11, long j11);

    void h0(a aVar, Exception exc);

    void i(a aVar, u1.b bVar);

    void i0(a aVar, androidx.media3.common.r rVar, androidx.media3.exoplayer.k kVar);

    void j(a aVar, g2.j jVar);

    void j0(a aVar, long j11);

    void k(a aVar);

    void k0(a aVar, g2.i iVar, g2.j jVar, int i11);

    void l0(a aVar, int i11);

    void m(a aVar, androidx.media3.common.x xVar);

    void m0(a aVar, boolean z10);

    void n(a aVar, boolean z10);

    void n0(a aVar, Exception exc);

    void o(a aVar, Exception exc);

    void o0(a aVar, androidx.media3.exoplayer.j jVar);

    void p(a aVar);

    void p0(a aVar, int i11, int i12);

    void q(a aVar, String str, long j11, long j12);

    void q0(a aVar);

    void r(a aVar, g2.i iVar, g2.j jVar);

    void r0(a aVar, List list);

    void s(a aVar, AudioSink.a aVar2);

    void s0(a aVar, int i11, boolean z10);

    void t(a aVar);

    void t0(a aVar, androidx.media3.common.t tVar, int i11);

    void u(a aVar, androidx.media3.common.m mVar);

    void u0(a aVar, androidx.media3.common.h0 h0Var);

    void v(a aVar, g2.i iVar, g2.j jVar, IOException iOException, boolean z10);

    void v0(a aVar, g2.j jVar);

    void w(a aVar, String str, long j11);

    void w0(a aVar, int i11);

    void x(a aVar, androidx.media3.common.r rVar, androidx.media3.exoplayer.k kVar);

    void x0(a aVar, g2.i iVar, g2.j jVar);

    void y(a aVar, androidx.media3.common.i0 i0Var);

    void z(a aVar, int i11);
}
