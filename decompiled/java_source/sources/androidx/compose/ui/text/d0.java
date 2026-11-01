package androidx.compose.ui.text;

import androidx.compose.ui.graphics.j1;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.z4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class d0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f6087d = new a(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final d0 f6088e = new d0(0, 0, null, null, null, null, null, 0, null, null, null, 0, null, null, null, 0, 0, 0, null, null, null, 0, 0, null, 16777215, null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final x f6089a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final r f6090b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final w f6091c;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final d0 a() {
            return d0.f6088e;
        }
    }

    private d0(long j11, long j12, androidx.compose.ui.text.font.p pVar, androidx.compose.ui.text.font.n nVar, androidx.compose.ui.text.font.o oVar, androidx.compose.ui.text.font.h hVar, String str, long j13, androidx.compose.ui.text.style.a aVar, androidx.compose.ui.text.style.m mVar, n0.i iVar, long j14, androidx.compose.ui.text.style.i iVar2, z4 z4Var, z.h hVar2, int i11, int i12, long j15, androidx.compose.ui.text.style.n nVar2, w wVar, androidx.compose.ui.text.style.g gVar, int i13, int i14, androidx.compose.ui.text.style.o oVar2) {
        this(new x(j11, j12, pVar, nVar, oVar, hVar, str, j13, aVar, mVar, iVar, j14, iVar2, z4Var, wVar != null ? wVar.b() : null, hVar2, (DefaultConstructorMarker) null), new r(i11, i12, j15, nVar2, wVar != null ? wVar.a() : null, gVar, i13, i14, oVar2, null), wVar);
    }

    public /* synthetic */ d0(long j11, long j12, androidx.compose.ui.text.font.p pVar, androidx.compose.ui.text.font.n nVar, androidx.compose.ui.text.font.o oVar, androidx.compose.ui.text.font.h hVar, String str, long j13, androidx.compose.ui.text.style.a aVar, androidx.compose.ui.text.style.m mVar, n0.i iVar, long j14, androidx.compose.ui.text.style.i iVar2, z4 z4Var, z.h hVar2, int i11, int i12, long j15, androidx.compose.ui.text.style.n nVar2, w wVar, androidx.compose.ui.text.style.g gVar, int i13, int i14, androidx.compose.ui.text.style.o oVar2, int i15, DefaultConstructorMarker defaultConstructorMarker) {
        this((i15 & 1) != 0 ? u1.f4658b.e() : j11, (i15 & 2) != 0 ? o0.w.f70628b.a() : j12, (i15 & 4) != 0 ? null : pVar, (i15 & 8) != 0 ? null : nVar, (i15 & 16) != 0 ? null : oVar, (i15 & 32) != 0 ? null : hVar, (i15 & 64) != 0 ? null : str, (i15 & 128) != 0 ? o0.w.f70628b.a() : j13, (i15 & 256) != 0 ? null : aVar, (i15 & 512) != 0 ? null : mVar, (i15 & 1024) != 0 ? null : iVar, (i15 & 2048) != 0 ? u1.f4658b.e() : j14, (i15 & 4096) != 0 ? null : iVar2, (i15 & 8192) != 0 ? null : z4Var, (i15 & 16384) != 0 ? null : hVar2, (i15 & 32768) != 0 ? androidx.compose.ui.text.style.h.f6400b.g() : i11, (i15 & 65536) != 0 ? androidx.compose.ui.text.style.j.f6414b.f() : i12, (i15 & 131072) != 0 ? o0.w.f70628b.a() : j15, (i15 & 262144) != 0 ? null : nVar2, (i15 & 524288) != 0 ? null : wVar, (i15 & 1048576) != 0 ? null : gVar, (i15 & 2097152) != 0 ? androidx.compose.ui.text.style.e.f6366a.b() : i13, (i15 & 4194304) != 0 ? androidx.compose.ui.text.style.d.f6362a.c() : i14, (i15 & 8388608) != 0 ? null : oVar2, null);
    }

    public /* synthetic */ d0(long j11, long j12, androidx.compose.ui.text.font.p pVar, androidx.compose.ui.text.font.n nVar, androidx.compose.ui.text.font.o oVar, androidx.compose.ui.text.font.h hVar, String str, long j13, androidx.compose.ui.text.style.a aVar, androidx.compose.ui.text.style.m mVar, n0.i iVar, long j14, androidx.compose.ui.text.style.i iVar2, z4 z4Var, z.h hVar2, int i11, int i12, long j15, androidx.compose.ui.text.style.n nVar2, w wVar, androidx.compose.ui.text.style.g gVar, int i13, int i14, androidx.compose.ui.text.style.o oVar2, DefaultConstructorMarker defaultConstructorMarker) {
        this(j11, j12, pVar, nVar, oVar, hVar, str, j13, aVar, mVar, iVar, j14, iVar2, z4Var, hVar2, i11, i12, j15, nVar2, wVar, gVar, i13, i14, oVar2);
    }

    public d0(x xVar, r rVar) {
        this(xVar, rVar, e0.b(xVar.q(), rVar.g()));
    }

    public d0(x xVar, r rVar, w wVar) {
        this.f6089a = xVar;
        this.f6090b = rVar;
        this.f6091c = wVar;
    }

    public final androidx.compose.ui.text.style.i A() {
        return this.f6089a.s();
    }

    public final int B() {
        return this.f6090b.i();
    }

    public final androidx.compose.ui.text.style.m C() {
        return this.f6089a.u();
    }

    public final androidx.compose.ui.text.style.n D() {
        return this.f6090b.j();
    }

    public final androidx.compose.ui.text.style.o E() {
        return this.f6090b.k();
    }

    public final boolean F(d0 d0Var) {
        return this == d0Var || this.f6089a.w(d0Var.f6089a);
    }

    public final boolean G(d0 d0Var) {
        return this == d0Var || (Intrinsics.c(this.f6090b, d0Var.f6090b) && this.f6089a.v(d0Var.f6089a));
    }

    public final d0 H(r rVar) {
        return new d0(L(), K().l(rVar));
    }

    public final d0 I(long j11, long j12, androidx.compose.ui.text.font.p pVar, androidx.compose.ui.text.font.n nVar, androidx.compose.ui.text.font.o oVar, androidx.compose.ui.text.font.h hVar, String str, long j13, androidx.compose.ui.text.style.a aVar, androidx.compose.ui.text.style.m mVar, n0.i iVar, long j14, androidx.compose.ui.text.style.i iVar2, z4 z4Var, z.h hVar2, int i11, int i12, long j15, androidx.compose.ui.text.style.n nVar2, androidx.compose.ui.text.style.g gVar, int i13, int i14, w wVar, androidx.compose.ui.text.style.o oVar2) {
        x xVarB = SpanStyleKt.b(this.f6089a, j11, null, Float.NaN, j12, pVar, nVar, oVar, hVar, str, j13, aVar, mVar, iVar, j14, iVar2, z4Var, wVar != null ? wVar.b() : null, hVar2);
        r rVarA = s.a(this.f6090b, i11, i12, j15, nVar2, wVar != null ? wVar.a() : null, gVar, i13, i14, oVar2);
        return (this.f6089a == xVarB && this.f6090b == rVarA) ? this : new d0(xVarB, rVarA);
    }

    public final r K() {
        return this.f6090b;
    }

    public final x L() {
        return this.f6089a;
    }

    public final d0 b(long j11, long j12, androidx.compose.ui.text.font.p pVar, androidx.compose.ui.text.font.n nVar, androidx.compose.ui.text.font.o oVar, androidx.compose.ui.text.font.h hVar, String str, long j13, androidx.compose.ui.text.style.a aVar, androidx.compose.ui.text.style.m mVar, n0.i iVar, long j14, androidx.compose.ui.text.style.i iVar2, z4 z4Var, z.h hVar2, int i11, int i12, long j15, androidx.compose.ui.text.style.n nVar2, w wVar, androidx.compose.ui.text.style.g gVar, int i13, int i14, androidx.compose.ui.text.style.o oVar2) {
        return new d0(new x(u1.m(j11, this.f6089a.g()) ? this.f6089a.t() : androidx.compose.ui.text.style.l.f6422a.b(j11), j12, pVar, nVar, oVar, hVar, str, j13, aVar, mVar, iVar, j14, iVar2, z4Var, wVar != null ? wVar.b() : null, hVar2, (DefaultConstructorMarker) null), new r(i11, i12, j15, nVar2, wVar != null ? wVar.a() : null, gVar, i13, i14, oVar2, null), wVar);
    }

    public final float d() {
        return this.f6089a.c();
    }

    public final long e() {
        return this.f6089a.d();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d0)) {
            return false;
        }
        d0 d0Var = (d0) obj;
        return Intrinsics.c(this.f6089a, d0Var.f6089a) && Intrinsics.c(this.f6090b, d0Var.f6090b) && Intrinsics.c(this.f6091c, d0Var.f6091c);
    }

    public final androidx.compose.ui.text.style.a f() {
        return this.f6089a.e();
    }

    public final j1 g() {
        return this.f6089a.f();
    }

    public final long h() {
        return this.f6089a.g();
    }

    public int hashCode() {
        int iHashCode = ((this.f6089a.hashCode() * 31) + this.f6090b.hashCode()) * 31;
        w wVar = this.f6091c;
        return iHashCode + (wVar != null ? wVar.hashCode() : 0);
    }

    public final z.h i() {
        return this.f6089a.h();
    }

    public final androidx.compose.ui.text.font.h j() {
        return this.f6089a.i();
    }

    public final String k() {
        return this.f6089a.j();
    }

    public final long l() {
        return this.f6089a.k();
    }

    public final androidx.compose.ui.text.font.n m() {
        return this.f6089a.l();
    }

    public final androidx.compose.ui.text.font.o n() {
        return this.f6089a.m();
    }

    public final androidx.compose.ui.text.font.p o() {
        return this.f6089a.n();
    }

    public final int p() {
        return this.f6090b.c();
    }

    public final long q() {
        return this.f6089a.o();
    }

    public final int r() {
        return this.f6090b.d();
    }

    public final long s() {
        return this.f6090b.e();
    }

    public final androidx.compose.ui.text.style.g t() {
        return this.f6090b.f();
    }

    public String toString() {
        return "TextStyle(color=" + ((Object) u1.t(h())) + ", brush=" + g() + ", alpha=" + d() + ", fontSize=" + ((Object) o0.w.j(l())) + ", fontWeight=" + o() + ", fontStyle=" + m() + ", fontSynthesis=" + n() + ", fontFamily=" + j() + ", fontFeatureSettings=" + k() + ", letterSpacing=" + ((Object) o0.w.j(q())) + ", baselineShift=" + f() + ", textGeometricTransform=" + C() + ", localeList=" + u() + ", background=" + ((Object) u1.t(e())) + ", textDecoration=" + A() + ", shadow=" + x() + ", drawStyle=" + i() + ", textAlign=" + ((Object) androidx.compose.ui.text.style.h.m(z())) + ", textDirection=" + ((Object) androidx.compose.ui.text.style.j.l(B())) + ", lineHeight=" + ((Object) o0.w.j(s())) + ", textIndent=" + D() + ", platformStyle=" + this.f6091c + ", lineHeightStyle=" + t() + ", lineBreak=" + ((Object) androidx.compose.ui.text.style.e.i(r())) + ", hyphens=" + ((Object) androidx.compose.ui.text.style.d.g(p())) + ", textMotion=" + E() + ')';
    }

    public final n0.i u() {
        return this.f6089a.p();
    }

    public final r v() {
        return this.f6090b;
    }

    public final w w() {
        return this.f6091c;
    }

    public final z4 x() {
        return this.f6089a.r();
    }

    public final x y() {
        return this.f6089a;
    }

    public final int z() {
        return this.f6090b.h();
    }
}
