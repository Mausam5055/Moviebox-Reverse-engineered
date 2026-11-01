package androidx.compose.foundation.text.modifiers;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.MultiParagraphIntrinsics;
import androidx.compose.ui.text.d0;
import androidx.compose.ui.text.e0;
import androidx.compose.ui.text.l;
import androidx.compose.ui.text.o;
import androidx.compose.ui.text.q;
import androidx.compose.ui.text.style.p;
import androidx.compose.ui.text.y;
import androidx.compose.ui.text.z;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import o0.t;
import o0.u;

/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f3303a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private d0 f3304b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private androidx.compose.ui.text.font.h.b f3305c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f3306d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f3307e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f3308f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f3309g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f3310h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private o0.e f3311i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private l f3312j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f3313k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f3314l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private c f3315m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private o f3316n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private LayoutDirection f3317o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f3318p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f3319q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f3320r;

    private f(String str, d0 d0Var, androidx.compose.ui.text.font.h.b bVar, int i11, boolean z10, int i12, int i13) {
        this.f3303a = str;
        this.f3304b = d0Var;
        this.f3305c = bVar;
        this.f3306d = i11;
        this.f3307e = z10;
        this.f3308f = i12;
        this.f3309g = i13;
        this.f3310h = a.f3273a.a();
        this.f3314l = u.a(0, 0);
        this.f3318p = o0.b.f70596b.c(0, 0);
        this.f3319q = -1;
        this.f3320r = -1;
    }

    public /* synthetic */ f(String str, d0 d0Var, androidx.compose.ui.text.font.h.b bVar, int i11, boolean z10, int i12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, d0Var, bVar, i11, z10, i12, i13);
    }

    private final l f(long j11, LayoutDirection layoutDirection) {
        o oVarK = k(layoutDirection);
        return q.c(oVarK, b.a(j11, this.f3307e, this.f3306d, oVarK.a()), b.b(this.f3307e, this.f3306d, this.f3308f), p.e(this.f3306d, p.f6442a.b()));
    }

    private final void h() {
        this.f3312j = null;
        this.f3316n = null;
        this.f3317o = null;
        this.f3319q = -1;
        this.f3320r = -1;
        this.f3318p = o0.b.f70596b.c(0, 0);
        this.f3314l = u.a(0, 0);
        this.f3313k = false;
    }

    private final boolean i(long j11, LayoutDirection layoutDirection) {
        o oVar;
        l lVar = this.f3312j;
        if (lVar == null || (oVar = this.f3316n) == null || oVar.b() || layoutDirection != this.f3317o) {
            return true;
        }
        if (o0.b.f(j11, this.f3318p)) {
            return false;
        }
        return o0.b.l(j11) != o0.b.l(this.f3318p) || ((float) o0.b.k(j11)) < lVar.getHeight() || lVar.k();
    }

    private final o k(LayoutDirection layoutDirection) {
        o oVarB = this.f3316n;
        if (oVarB == null || layoutDirection != this.f3317o || oVarB.b()) {
            this.f3317o = layoutDirection;
            String str = this.f3303a;
            d0 d0VarC = e0.c(this.f3304b, layoutDirection);
            o0.e eVar = this.f3311i;
            Intrinsics.e(eVar);
            oVarB = androidx.compose.ui.text.p.b(str, d0VarC, null, null, eVar, this.f3305c, 12, null);
        }
        this.f3316n = oVarB;
        return oVarB;
    }

    public final o0.e a() {
        return this.f3311i;
    }

    public final boolean b() {
        return this.f3313k;
    }

    public final long c() {
        return this.f3314l;
    }

    public final Unit d() {
        o oVar = this.f3316n;
        if (oVar != null) {
            oVar.b();
        }
        return Unit.f67061a;
    }

    public final l e() {
        return this.f3312j;
    }

    public final boolean g(long j11, LayoutDirection layoutDirection) {
        boolean z10 = true;
        if (this.f3309g > 1) {
            c.a aVar = c.f3275h;
            c cVar = this.f3315m;
            d0 d0Var = this.f3304b;
            o0.e eVar = this.f3311i;
            Intrinsics.e(eVar);
            c cVarA = aVar.a(cVar, layoutDirection, d0Var, eVar, this.f3305c);
            this.f3315m = cVarA;
            j11 = cVarA.c(j11, this.f3309g);
        }
        boolean z11 = false;
        if (i(j11, layoutDirection)) {
            l lVarF = f(j11, layoutDirection);
            this.f3318p = j11;
            long jF = o0.c.f(j11, u.a(androidx.compose.foundation.text.b.a(lVarF.getWidth()), androidx.compose.foundation.text.b.a(lVarF.getHeight())));
            this.f3314l = jF;
            if (!p.e(this.f3306d, p.f6442a.c()) && (t.g(jF) < lVarF.getWidth() || t.f(jF) < lVarF.getHeight())) {
                z11 = true;
            }
            this.f3313k = z11;
            this.f3312j = lVarF;
            return true;
        }
        if (!o0.b.f(j11, this.f3318p)) {
            l lVar = this.f3312j;
            Intrinsics.e(lVar);
            long jF2 = o0.c.f(j11, u.a(androidx.compose.foundation.text.b.a(Math.min(lVar.a(), lVar.getWidth())), androidx.compose.foundation.text.b.a(lVar.getHeight())));
            this.f3314l = jF2;
            if (p.e(this.f3306d, p.f6442a.c()) || (t.g(jF2) >= lVar.getWidth() && t.f(jF2) >= lVar.getHeight())) {
                z10 = false;
            }
            this.f3313k = z10;
            this.f3318p = j11;
        }
        return false;
    }

    public final void j(o0.e eVar) {
        o0.e eVar2 = this.f3311i;
        long jD = eVar != null ? a.d(eVar) : a.f3273a.a();
        if (eVar2 == null) {
            this.f3311i = eVar;
            this.f3310h = jD;
        } else if (eVar == null || !a.e(this.f3310h, jD)) {
            this.f3311i = eVar;
            this.f3310h = jD;
            h();
        }
    }

    public final z l(d0 d0Var) {
        o0.e eVar;
        LayoutDirection layoutDirection = this.f3317o;
        if (layoutDirection == null || (eVar = this.f3311i) == null) {
            return null;
        }
        AnnotatedString annotatedString = new AnnotatedString(this.f3303a, null, null, 6, null);
        if (this.f3312j == null || this.f3316n == null) {
            return null;
        }
        long jD = o0.b.d(this.f3318p, 0, 0, 0, 0, 10, null);
        return new z(new y(annotatedString, d0Var, CollectionsKt.l(), this.f3308f, this.f3307e, this.f3306d, eVar, layoutDirection, this.f3305c, jD, (DefaultConstructorMarker) null), new MultiParagraph(new MultiParagraphIntrinsics(annotatedString, d0Var, CollectionsKt.l(), eVar, this.f3305c), jD, this.f3308f, p.e(this.f3306d, p.f6442a.b()), null), this.f3314l, null);
    }

    public final void m(String str, d0 d0Var, androidx.compose.ui.text.font.h.b bVar, int i11, boolean z10, int i12, int i13) {
        this.f3303a = str;
        this.f3304b = d0Var;
        this.f3305c = bVar;
        this.f3306d = i11;
        this.f3307e = z10;
        this.f3308f = i12;
        this.f3309g = i13;
        h();
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("ParagraphLayoutCache(paragraph=");
        sb2.append(this.f3312j != null ? "<paragraph>" : "null");
        sb2.append(", lastDensity=");
        sb2.append((Object) a.h(this.f3310h));
        sb2.append(')');
        return sb2.toString();
    }
}
