package androidx.compose.ui.text.input;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class p {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f6251h = new a(null);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final p f6252i = new p(false, 0, false, 0, 0, null, null, 127, null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f6253a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f6254b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f6255c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f6256d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f6257e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final x f6258f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final n0.i f6259g;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final p a() {
            return p.f6252i;
        }
    }

    private p(boolean z10, int i11, boolean z11, int i12, int i13, x xVar, n0.i iVar) {
        this.f6253a = z10;
        this.f6254b = i11;
        this.f6255c = z11;
        this.f6256d = i12;
        this.f6257e = i13;
        this.f6258f = xVar;
        this.f6259g = iVar;
    }

    public /* synthetic */ p(boolean z10, int i11, boolean z11, int i12, int i13, x xVar, n0.i iVar, int i14, DefaultConstructorMarker defaultConstructorMarker) {
        this((i14 & 1) != 0 ? false : z10, (i14 & 2) != 0 ? t.f6260a.b() : i11, (i14 & 4) != 0 ? true : z11, (i14 & 8) != 0 ? u.f6266a.h() : i12, (i14 & 16) != 0 ? o.f6240b.a() : i13, (i14 & 32) != 0 ? null : xVar, (i14 & 64) != 0 ? n0.i.f70061c.b() : iVar, null);
    }

    public /* synthetic */ p(boolean z10, int i11, boolean z11, int i12, int i13, x xVar, n0.i iVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, i11, z11, i12, i13, xVar, iVar);
    }

    public final boolean b() {
        return this.f6255c;
    }

    public final int c() {
        return this.f6254b;
    }

    public final int d() {
        return this.f6257e;
    }

    public final int e() {
        return this.f6256d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        return this.f6253a == pVar.f6253a && t.f(this.f6254b, pVar.f6254b) && this.f6255c == pVar.f6255c && u.k(this.f6256d, pVar.f6256d) && o.l(this.f6257e, pVar.f6257e) && Intrinsics.c(this.f6258f, pVar.f6258f) && Intrinsics.c(this.f6259g, pVar.f6259g);
    }

    public final x f() {
        return this.f6258f;
    }

    public final boolean g() {
        return this.f6253a;
    }

    public int hashCode() {
        int iA = ((((((((androidx.compose.foundation.e.a(this.f6253a) * 31) + t.g(this.f6254b)) * 31) + androidx.compose.foundation.e.a(this.f6255c)) * 31) + u.l(this.f6256d)) * 31) + o.m(this.f6257e)) * 31;
        x xVar = this.f6258f;
        return ((iA + (xVar != null ? xVar.hashCode() : 0)) * 31) + this.f6259g.hashCode();
    }

    public String toString() {
        return "ImeOptions(singleLine=" + this.f6253a + ", capitalization=" + ((Object) t.h(this.f6254b)) + ", autoCorrect=" + this.f6255c + ", keyboardType=" + ((Object) u.m(this.f6256d)) + ", imeAction=" + ((Object) o.n(this.f6257e)) + ", platformImeOptions=" + this.f6258f + ", hintLocales=" + this.f6259g + ')';
    }
}
