package androidx.compose.ui.text;

import androidx.compose.ui.text.style.ResolvedTextDirection;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final y f6481a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final MultiParagraph f6482b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f6483c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f6484d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float f6485e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List f6486f;

    private z(y yVar, MultiParagraph multiParagraph, long j11) {
        this.f6481a = yVar;
        this.f6482b = multiParagraph;
        this.f6483c = j11;
        this.f6484d = multiParagraph.g();
        this.f6485e = multiParagraph.j();
        this.f6486f = multiParagraph.v();
    }

    public /* synthetic */ z(y yVar, MultiParagraph multiParagraph, long j11, DefaultConstructorMarker defaultConstructorMarker) {
        this(yVar, multiParagraph, j11);
    }

    public static /* synthetic */ z b(z zVar, y yVar, long j11, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            yVar = zVar.f6481a;
        }
        if ((i11 & 2) != 0) {
            j11 = zVar.f6483c;
        }
        return zVar.a(yVar, j11);
    }

    public static /* synthetic */ int o(z zVar, int i11, boolean z10, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            z10 = false;
        }
        return zVar.n(i11, z10);
    }

    public final z a(y yVar, long j11) {
        return new z(yVar, this.f6482b, j11, null);
    }

    public final ResolvedTextDirection c(int i11) {
        return this.f6482b.c(i11);
    }

    public final y.i d(int i11) {
        return this.f6482b.d(i11);
    }

    public final y.i e(int i11) {
        return this.f6482b.e(i11);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z)) {
            return false;
        }
        z zVar = (z) obj;
        return Intrinsics.c(this.f6481a, zVar.f6481a) && Intrinsics.c(this.f6482b, zVar.f6482b) && o0.t.e(this.f6483c, zVar.f6483c) && this.f6484d == zVar.f6484d && this.f6485e == zVar.f6485e && Intrinsics.c(this.f6486f, zVar.f6486f);
    }

    public final boolean f() {
        return this.f6482b.f() || ((float) o0.t.f(this.f6483c)) < this.f6482b.h();
    }

    public final boolean g() {
        return ((float) o0.t.g(this.f6483c)) < this.f6482b.w();
    }

    public final float h() {
        return this.f6484d;
    }

    public int hashCode() {
        return (((((((((this.f6481a.hashCode() * 31) + this.f6482b.hashCode()) * 31) + o0.t.h(this.f6483c)) * 31) + Float.floatToIntBits(this.f6484d)) * 31) + Float.floatToIntBits(this.f6485e)) * 31) + this.f6486f.hashCode();
    }

    public final boolean i() {
        return g() || f();
    }

    public final float j() {
        return this.f6485e;
    }

    public final y k() {
        return this.f6481a;
    }

    public final float l(int i11) {
        return this.f6482b.k(i11);
    }

    public final int m() {
        return this.f6482b.l();
    }

    public final int n(int i11, boolean z10) {
        return this.f6482b.m(i11, z10);
    }

    public final int p(int i11) {
        return this.f6482b.n(i11);
    }

    public final int q(float f11) {
        return this.f6482b.o(f11);
    }

    public final float r(int i11) {
        return this.f6482b.p(i11);
    }

    public final float s(int i11) {
        return this.f6482b.q(i11);
    }

    public final int t(int i11) {
        return this.f6482b.r(i11);
    }

    public String toString() {
        return "TextLayoutResult(layoutInput=" + this.f6481a + ", multiParagraph=" + this.f6482b + ", size=" + ((Object) o0.t.i(this.f6483c)) + ", firstBaseline=" + this.f6484d + ", lastBaseline=" + this.f6485e + ", placeholderRects=" + this.f6486f + ')';
    }

    public final float u(int i11) {
        return this.f6482b.s(i11);
    }

    public final MultiParagraph v() {
        return this.f6482b;
    }

    public final ResolvedTextDirection w(int i11) {
        return this.f6482b.t(i11);
    }

    public final List x() {
        return this.f6486f;
    }

    public final long y() {
        return this.f6483c;
    }
}
