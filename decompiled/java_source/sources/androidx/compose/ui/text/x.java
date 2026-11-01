package androidx.compose.ui.text;

import androidx.compose.ui.graphics.j1;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.z4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.compose.ui.text.style.l f6454a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f6455b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.compose.ui.text.font.p f6456c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.compose.ui.text.font.n f6457d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final androidx.compose.ui.text.font.o f6458e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final androidx.compose.ui.text.font.h f6459f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f6460g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final long f6461h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final androidx.compose.ui.text.style.a f6462i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final androidx.compose.ui.text.style.m f6463j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final n0.i f6464k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final long f6465l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final androidx.compose.ui.text.style.i f6466m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final z4 f6467n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final v f6468o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final z.h f6469p;

    private x(long j11, long j12, androidx.compose.ui.text.font.p pVar, androidx.compose.ui.text.font.n nVar, androidx.compose.ui.text.font.o oVar, androidx.compose.ui.text.font.h hVar, String str, long j13, androidx.compose.ui.text.style.a aVar, androidx.compose.ui.text.style.m mVar, n0.i iVar, long j14, androidx.compose.ui.text.style.i iVar2, z4 z4Var, v vVar, z.h hVar2) {
        this(androidx.compose.ui.text.style.l.f6422a.b(j11), j12, pVar, nVar, oVar, hVar, str, j13, aVar, mVar, iVar, j14, iVar2, z4Var, vVar, hVar2, (DefaultConstructorMarker) null);
    }

    public /* synthetic */ x(long j11, long j12, androidx.compose.ui.text.font.p pVar, androidx.compose.ui.text.font.n nVar, androidx.compose.ui.text.font.o oVar, androidx.compose.ui.text.font.h hVar, String str, long j13, androidx.compose.ui.text.style.a aVar, androidx.compose.ui.text.style.m mVar, n0.i iVar, long j14, androidx.compose.ui.text.style.i iVar2, z4 z4Var, v vVar, z.h hVar2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? u1.f4658b.e() : j11, (i11 & 2) != 0 ? o0.w.f70628b.a() : j12, (i11 & 4) != 0 ? null : pVar, (i11 & 8) != 0 ? null : nVar, (i11 & 16) != 0 ? null : oVar, (i11 & 32) != 0 ? null : hVar, (i11 & 64) != 0 ? null : str, (i11 & 128) != 0 ? o0.w.f70628b.a() : j13, (i11 & 256) != 0 ? null : aVar, (i11 & 512) != 0 ? null : mVar, (i11 & 1024) != 0 ? null : iVar, (i11 & 2048) != 0 ? u1.f4658b.e() : j14, (i11 & 4096) != 0 ? null : iVar2, (i11 & 8192) != 0 ? null : z4Var, (i11 & 16384) != 0 ? null : vVar, (i11 & 32768) != 0 ? null : hVar2, (DefaultConstructorMarker) null);
    }

    public /* synthetic */ x(long j11, long j12, androidx.compose.ui.text.font.p pVar, androidx.compose.ui.text.font.n nVar, androidx.compose.ui.text.font.o oVar, androidx.compose.ui.text.font.h hVar, String str, long j13, androidx.compose.ui.text.style.a aVar, androidx.compose.ui.text.style.m mVar, n0.i iVar, long j14, androidx.compose.ui.text.style.i iVar2, z4 z4Var, v vVar, z.h hVar2, DefaultConstructorMarker defaultConstructorMarker) {
        this(j11, j12, pVar, nVar, oVar, hVar, str, j13, aVar, mVar, iVar, j14, iVar2, z4Var, vVar, hVar2);
    }

    private x(androidx.compose.ui.text.style.l lVar, long j11, androidx.compose.ui.text.font.p pVar, androidx.compose.ui.text.font.n nVar, androidx.compose.ui.text.font.o oVar, androidx.compose.ui.text.font.h hVar, String str, long j12, androidx.compose.ui.text.style.a aVar, androidx.compose.ui.text.style.m mVar, n0.i iVar, long j13, androidx.compose.ui.text.style.i iVar2, z4 z4Var, v vVar, z.h hVar2) {
        this.f6454a = lVar;
        this.f6455b = j11;
        this.f6456c = pVar;
        this.f6457d = nVar;
        this.f6458e = oVar;
        this.f6459f = hVar;
        this.f6460g = str;
        this.f6461h = j12;
        this.f6462i = aVar;
        this.f6463j = mVar;
        this.f6464k = iVar;
        this.f6465l = j13;
        this.f6466m = iVar2;
        this.f6467n = z4Var;
        this.f6468o = vVar;
        this.f6469p = hVar2;
    }

    public /* synthetic */ x(androidx.compose.ui.text.style.l lVar, long j11, androidx.compose.ui.text.font.p pVar, androidx.compose.ui.text.font.n nVar, androidx.compose.ui.text.font.o oVar, androidx.compose.ui.text.font.h hVar, String str, long j12, androidx.compose.ui.text.style.a aVar, androidx.compose.ui.text.style.m mVar, n0.i iVar, long j13, androidx.compose.ui.text.style.i iVar2, z4 z4Var, v vVar, z.h hVar2, DefaultConstructorMarker defaultConstructorMarker) {
        this(lVar, j11, pVar, nVar, oVar, hVar, str, j12, aVar, mVar, iVar, j13, iVar2, z4Var, vVar, hVar2);
    }

    public final x a(long j11, long j12, androidx.compose.ui.text.font.p pVar, androidx.compose.ui.text.font.n nVar, androidx.compose.ui.text.font.o oVar, androidx.compose.ui.text.font.h hVar, String str, long j13, androidx.compose.ui.text.style.a aVar, androidx.compose.ui.text.style.m mVar, n0.i iVar, long j14, androidx.compose.ui.text.style.i iVar2, z4 z4Var, v vVar, z.h hVar2) {
        return new x(u1.m(j11, g()) ? this.f6454a : androidx.compose.ui.text.style.l.f6422a.b(j11), j12, pVar, nVar, oVar, hVar, str, j13, aVar, mVar, iVar, j14, iVar2, z4Var, vVar, hVar2, (DefaultConstructorMarker) null);
    }

    public final float c() {
        return this.f6454a.getAlpha();
    }

    public final long d() {
        return this.f6465l;
    }

    public final androidx.compose.ui.text.style.a e() {
        return this.f6462i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof x)) {
            return false;
        }
        x xVar = (x) obj;
        return v(xVar) && w(xVar);
    }

    public final j1 f() {
        return this.f6454a.d();
    }

    public final long g() {
        return this.f6454a.a();
    }

    public final z.h h() {
        return this.f6469p;
    }

    public int hashCode() {
        int iS = u1.s(g()) * 31;
        j1 j1VarF = f();
        int iHashCode = (((((iS + (j1VarF != null ? j1VarF.hashCode() : 0)) * 31) + Float.floatToIntBits(c())) * 31) + o0.w.i(this.f6455b)) * 31;
        androidx.compose.ui.text.font.p pVar = this.f6456c;
        int iHashCode2 = (iHashCode + (pVar != null ? pVar.hashCode() : 0)) * 31;
        androidx.compose.ui.text.font.n nVar = this.f6457d;
        int iG = (iHashCode2 + (nVar != null ? androidx.compose.ui.text.font.n.g(nVar.i()) : 0)) * 31;
        androidx.compose.ui.text.font.o oVar = this.f6458e;
        int i11 = (iG + (oVar != null ? androidx.compose.ui.text.font.o.i(oVar.k()) : 0)) * 31;
        androidx.compose.ui.text.font.h hVar = this.f6459f;
        int iHashCode3 = (i11 + (hVar != null ? hVar.hashCode() : 0)) * 31;
        String str = this.f6460g;
        int iHashCode4 = (((iHashCode3 + (str != null ? str.hashCode() : 0)) * 31) + o0.w.i(this.f6461h)) * 31;
        androidx.compose.ui.text.style.a aVar = this.f6462i;
        int iF = (iHashCode4 + (aVar != null ? androidx.compose.ui.text.style.a.f(aVar.h()) : 0)) * 31;
        androidx.compose.ui.text.style.m mVar = this.f6463j;
        int iHashCode5 = (iF + (mVar != null ? mVar.hashCode() : 0)) * 31;
        n0.i iVar = this.f6464k;
        int iHashCode6 = (((iHashCode5 + (iVar != null ? iVar.hashCode() : 0)) * 31) + u1.s(this.f6465l)) * 31;
        androidx.compose.ui.text.style.i iVar2 = this.f6466m;
        int iHashCode7 = (iHashCode6 + (iVar2 != null ? iVar2.hashCode() : 0)) * 31;
        z4 z4Var = this.f6467n;
        int iHashCode8 = (iHashCode7 + (z4Var != null ? z4Var.hashCode() : 0)) * 31;
        v vVar = this.f6468o;
        int iHashCode9 = (iHashCode8 + (vVar != null ? vVar.hashCode() : 0)) * 31;
        z.h hVar2 = this.f6469p;
        return iHashCode9 + (hVar2 != null ? hVar2.hashCode() : 0);
    }

    public final androidx.compose.ui.text.font.h i() {
        return this.f6459f;
    }

    public final String j() {
        return this.f6460g;
    }

    public final long k() {
        return this.f6455b;
    }

    public final androidx.compose.ui.text.font.n l() {
        return this.f6457d;
    }

    public final androidx.compose.ui.text.font.o m() {
        return this.f6458e;
    }

    public final androidx.compose.ui.text.font.p n() {
        return this.f6456c;
    }

    public final long o() {
        return this.f6461h;
    }

    public final n0.i p() {
        return this.f6464k;
    }

    public final v q() {
        return this.f6468o;
    }

    public final z4 r() {
        return this.f6467n;
    }

    public final androidx.compose.ui.text.style.i s() {
        return this.f6466m;
    }

    public final androidx.compose.ui.text.style.l t() {
        return this.f6454a;
    }

    public String toString() {
        return "SpanStyle(color=" + ((Object) u1.t(g())) + ", brush=" + f() + ", alpha=" + c() + ", fontSize=" + ((Object) o0.w.j(this.f6455b)) + ", fontWeight=" + this.f6456c + ", fontStyle=" + this.f6457d + ", fontSynthesis=" + this.f6458e + ", fontFamily=" + this.f6459f + ", fontFeatureSettings=" + this.f6460g + ", letterSpacing=" + ((Object) o0.w.j(this.f6461h)) + ", baselineShift=" + this.f6462i + ", textGeometricTransform=" + this.f6463j + ", localeList=" + this.f6464k + ", background=" + ((Object) u1.t(this.f6465l)) + ", textDecoration=" + this.f6466m + ", shadow=" + this.f6467n + ", platformStyle=" + this.f6468o + ", drawStyle=" + this.f6469p + ')';
    }

    public final androidx.compose.ui.text.style.m u() {
        return this.f6463j;
    }

    public final boolean v(x xVar) {
        if (this == xVar) {
            return true;
        }
        return o0.w.e(this.f6455b, xVar.f6455b) && Intrinsics.c(this.f6456c, xVar.f6456c) && Intrinsics.c(this.f6457d, xVar.f6457d) && Intrinsics.c(this.f6458e, xVar.f6458e) && Intrinsics.c(this.f6459f, xVar.f6459f) && Intrinsics.c(this.f6460g, xVar.f6460g) && o0.w.e(this.f6461h, xVar.f6461h) && Intrinsics.c(this.f6462i, xVar.f6462i) && Intrinsics.c(this.f6463j, xVar.f6463j) && Intrinsics.c(this.f6464k, xVar.f6464k) && u1.m(this.f6465l, xVar.f6465l) && Intrinsics.c(this.f6468o, xVar.f6468o);
    }

    public final boolean w(x xVar) {
        return Intrinsics.c(this.f6454a, xVar.f6454a) && Intrinsics.c(this.f6466m, xVar.f6466m) && Intrinsics.c(this.f6467n, xVar.f6467n) && Intrinsics.c(this.f6469p, xVar.f6469p);
    }

    public final x x(x xVar) {
        return xVar == null ? this : SpanStyleKt.b(this, xVar.f6454a.a(), xVar.f6454a.d(), xVar.f6454a.getAlpha(), xVar.f6455b, xVar.f6456c, xVar.f6457d, xVar.f6458e, xVar.f6459f, xVar.f6460g, xVar.f6461h, xVar.f6462i, xVar.f6463j, xVar.f6464k, xVar.f6465l, xVar.f6466m, xVar.f6467n, xVar.f6468o, xVar.f6469p);
    }
}
