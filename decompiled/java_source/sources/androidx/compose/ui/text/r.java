package androidx.compose.ui.text;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f6344a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f6345b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f6346c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.compose.ui.text.style.n f6347d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final u f6348e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final androidx.compose.ui.text.style.g f6349f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f6350g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f6351h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final androidx.compose.ui.text.style.o f6352i;

    private r(int i11, int i12, long j11, androidx.compose.ui.text.style.n nVar, u uVar, androidx.compose.ui.text.style.g gVar, int i13, int i14, androidx.compose.ui.text.style.o oVar) {
        this.f6344a = i11;
        this.f6345b = i12;
        this.f6346c = j11;
        this.f6347d = nVar;
        this.f6348e = uVar;
        this.f6349f = gVar;
        this.f6350g = i13;
        this.f6351h = i14;
        this.f6352i = oVar;
        if (o0.w.e(j11, o0.w.f70628b.a()) || o0.w.h(j11) >= 0.0f) {
            return;
        }
        throw new IllegalStateException(("lineHeight can't be negative (" + o0.w.h(j11) + ')').toString());
    }

    public /* synthetic */ r(int i11, int i12, long j11, androidx.compose.ui.text.style.n nVar, u uVar, androidx.compose.ui.text.style.g gVar, int i13, int i14, androidx.compose.ui.text.style.o oVar, int i15, DefaultConstructorMarker defaultConstructorMarker) {
        this((i15 & 1) != 0 ? androidx.compose.ui.text.style.h.f6400b.g() : i11, (i15 & 2) != 0 ? androidx.compose.ui.text.style.j.f6414b.f() : i12, (i15 & 4) != 0 ? o0.w.f70628b.a() : j11, (i15 & 8) != 0 ? null : nVar, (i15 & 16) != 0 ? null : uVar, (i15 & 32) != 0 ? null : gVar, (i15 & 64) != 0 ? androidx.compose.ui.text.style.e.f6366a.b() : i13, (i15 & 128) != 0 ? androidx.compose.ui.text.style.d.f6362a.c() : i14, (i15 & 256) == 0 ? oVar : null, null);
    }

    public /* synthetic */ r(int i11, int i12, long j11, androidx.compose.ui.text.style.n nVar, u uVar, androidx.compose.ui.text.style.g gVar, int i13, int i14, androidx.compose.ui.text.style.o oVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(i11, i12, j11, nVar, uVar, gVar, i13, i14, oVar);
    }

    public final r a(int i11, int i12, long j11, androidx.compose.ui.text.style.n nVar, u uVar, androidx.compose.ui.text.style.g gVar, int i13, int i14, androidx.compose.ui.text.style.o oVar) {
        return new r(i11, i12, j11, nVar, uVar, gVar, i13, i14, oVar, null);
    }

    public final int c() {
        return this.f6351h;
    }

    public final int d() {
        return this.f6350g;
    }

    public final long e() {
        return this.f6346c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        return androidx.compose.ui.text.style.h.k(this.f6344a, rVar.f6344a) && androidx.compose.ui.text.style.j.j(this.f6345b, rVar.f6345b) && o0.w.e(this.f6346c, rVar.f6346c) && Intrinsics.c(this.f6347d, rVar.f6347d) && Intrinsics.c(this.f6348e, rVar.f6348e) && Intrinsics.c(this.f6349f, rVar.f6349f) && androidx.compose.ui.text.style.e.d(this.f6350g, rVar.f6350g) && androidx.compose.ui.text.style.d.e(this.f6351h, rVar.f6351h) && Intrinsics.c(this.f6352i, rVar.f6352i);
    }

    public final androidx.compose.ui.text.style.g f() {
        return this.f6349f;
    }

    public final u g() {
        return this.f6348e;
    }

    public final int h() {
        return this.f6344a;
    }

    public int hashCode() {
        int iL = ((((androidx.compose.ui.text.style.h.l(this.f6344a) * 31) + androidx.compose.ui.text.style.j.k(this.f6345b)) * 31) + o0.w.i(this.f6346c)) * 31;
        androidx.compose.ui.text.style.n nVar = this.f6347d;
        int iHashCode = (iL + (nVar != null ? nVar.hashCode() : 0)) * 31;
        u uVar = this.f6348e;
        int iHashCode2 = (iHashCode + (uVar != null ? uVar.hashCode() : 0)) * 31;
        androidx.compose.ui.text.style.g gVar = this.f6349f;
        int iHashCode3 = (((((iHashCode2 + (gVar != null ? gVar.hashCode() : 0)) * 31) + androidx.compose.ui.text.style.e.h(this.f6350g)) * 31) + androidx.compose.ui.text.style.d.f(this.f6351h)) * 31;
        androidx.compose.ui.text.style.o oVar = this.f6352i;
        return iHashCode3 + (oVar != null ? oVar.hashCode() : 0);
    }

    public final int i() {
        return this.f6345b;
    }

    public final androidx.compose.ui.text.style.n j() {
        return this.f6347d;
    }

    public final androidx.compose.ui.text.style.o k() {
        return this.f6352i;
    }

    public final r l(r rVar) {
        return rVar == null ? this : s.a(this, rVar.f6344a, rVar.f6345b, rVar.f6346c, rVar.f6347d, rVar.f6348e, rVar.f6349f, rVar.f6350g, rVar.f6351h, rVar.f6352i);
    }

    public String toString() {
        return "ParagraphStyle(textAlign=" + ((Object) androidx.compose.ui.text.style.h.m(this.f6344a)) + ", textDirection=" + ((Object) androidx.compose.ui.text.style.j.l(this.f6345b)) + ", lineHeight=" + ((Object) o0.w.j(this.f6346c)) + ", textIndent=" + this.f6347d + ", platformStyle=" + this.f6348e + ", lineHeightStyle=" + this.f6349f + ", lineBreak=" + ((Object) androidx.compose.ui.text.style.e.i(this.f6350g)) + ", hyphens=" + ((Object) androidx.compose.ui.text.style.d.g(this.f6351h)) + ", textMotion=" + this.f6352i + ')';
    }
}
