package androidx.compose.foundation.text.modifiers;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.MultiParagraphIntrinsics;
import androidx.compose.ui.text.d0;
import androidx.compose.ui.text.e0;
import androidx.compose.ui.text.style.p;
import androidx.compose.ui.text.y;
import androidx.compose.ui.text.z;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import o0.u;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private AnnotatedString f3287a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private d0 f3288b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private androidx.compose.ui.text.font.h.b f3289c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f3290d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f3291e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f3292f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f3293g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private List f3294h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private c f3295i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f3296j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private o0.e f3297k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private MultiParagraphIntrinsics f3298l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private LayoutDirection f3299m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private z f3300n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f3301o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f3302p;

    private e(AnnotatedString annotatedString, d0 d0Var, androidx.compose.ui.text.font.h.b bVar, int i11, boolean z10, int i12, int i13, List list) {
        this.f3287a = annotatedString;
        this.f3288b = d0Var;
        this.f3289c = bVar;
        this.f3290d = i11;
        this.f3291e = z10;
        this.f3292f = i12;
        this.f3293g = i13;
        this.f3294h = list;
        this.f3296j = a.f3273a.a();
        this.f3301o = -1;
        this.f3302p = -1;
    }

    public /* synthetic */ e(AnnotatedString annotatedString, d0 d0Var, androidx.compose.ui.text.font.h.b bVar, int i11, boolean z10, int i12, int i13, List list, DefaultConstructorMarker defaultConstructorMarker) {
        this(annotatedString, d0Var, bVar, i11, z10, i12, i13, list);
    }

    private final MultiParagraph d(long j11, LayoutDirection layoutDirection) {
        MultiParagraphIntrinsics multiParagraphIntrinsicsI = i(layoutDirection);
        return new MultiParagraph(multiParagraphIntrinsicsI, b.a(j11, this.f3291e, this.f3290d, multiParagraphIntrinsicsI.a()), b.b(this.f3291e, this.f3290d, this.f3292f), p.e(this.f3290d, p.f6442a.b()), null);
    }

    private final void f() {
        this.f3298l = null;
        this.f3300n = null;
        this.f3302p = -1;
        this.f3301o = -1;
    }

    private final boolean g(z zVar, long j11, LayoutDirection layoutDirection) {
        if (zVar == null || zVar.v().i().b() || layoutDirection != zVar.k().d()) {
            return true;
        }
        if (o0.b.f(j11, zVar.k().a())) {
            return false;
        }
        return o0.b.l(j11) != o0.b.l(zVar.k().a()) || ((float) o0.b.k(j11)) < zVar.v().h() || zVar.v().f();
    }

    private final MultiParagraphIntrinsics i(LayoutDirection layoutDirection) {
        MultiParagraphIntrinsics multiParagraphIntrinsics = this.f3298l;
        if (multiParagraphIntrinsics == null || layoutDirection != this.f3299m || multiParagraphIntrinsics.b()) {
            this.f3299m = layoutDirection;
            AnnotatedString annotatedString = this.f3287a;
            d0 d0VarC = e0.c(this.f3288b, layoutDirection);
            o0.e eVar = this.f3297k;
            Intrinsics.e(eVar);
            androidx.compose.ui.text.font.h.b bVar = this.f3289c;
            List listL = this.f3294h;
            if (listL == null) {
                listL = CollectionsKt.l();
            }
            multiParagraphIntrinsics = new MultiParagraphIntrinsics(annotatedString, d0VarC, listL, eVar, bVar);
        }
        this.f3298l = multiParagraphIntrinsics;
        return multiParagraphIntrinsics;
    }

    private final z j(LayoutDirection layoutDirection, long j11, MultiParagraph multiParagraph) {
        float fMin = Math.min(multiParagraph.i().a(), multiParagraph.w());
        AnnotatedString annotatedString = this.f3287a;
        d0 d0Var = this.f3288b;
        List listL = this.f3294h;
        if (listL == null) {
            listL = CollectionsKt.l();
        }
        List list = listL;
        int i11 = this.f3292f;
        boolean z10 = this.f3291e;
        int i12 = this.f3290d;
        o0.e eVar = this.f3297k;
        Intrinsics.e(eVar);
        return new z(new y(annotatedString, d0Var, list, i11, z10, i12, eVar, layoutDirection, this.f3289c, j11, (DefaultConstructorMarker) null), multiParagraph, o0.c.f(j11, u.a(androidx.compose.foundation.text.b.a(fMin), androidx.compose.foundation.text.b.a(multiParagraph.h()))), null);
    }

    public final o0.e a() {
        return this.f3297k;
    }

    public final z b() {
        return this.f3300n;
    }

    public final z c() {
        z zVar = this.f3300n;
        if (zVar != null) {
            return zVar;
        }
        throw new IllegalStateException("You must call layoutWithConstraints first");
    }

    public final boolean e(long j11, LayoutDirection layoutDirection) {
        if (this.f3293g > 1) {
            c.a aVar = c.f3275h;
            c cVar = this.f3295i;
            d0 d0Var = this.f3288b;
            o0.e eVar = this.f3297k;
            Intrinsics.e(eVar);
            c cVarA = aVar.a(cVar, layoutDirection, d0Var, eVar, this.f3289c);
            this.f3295i = cVarA;
            j11 = cVarA.c(j11, this.f3293g);
        }
        if (g(this.f3300n, j11, layoutDirection)) {
            this.f3300n = j(layoutDirection, j11, d(j11, layoutDirection));
            return true;
        }
        z zVar = this.f3300n;
        Intrinsics.e(zVar);
        if (o0.b.f(j11, zVar.k().a())) {
            return false;
        }
        z zVar2 = this.f3300n;
        Intrinsics.e(zVar2);
        this.f3300n = j(layoutDirection, j11, zVar2.v());
        return true;
    }

    public final void h(o0.e eVar) {
        o0.e eVar2 = this.f3297k;
        long jD = eVar != null ? a.d(eVar) : a.f3273a.a();
        if (eVar2 == null) {
            this.f3297k = eVar;
            this.f3296j = jD;
        } else if (eVar == null || !a.e(this.f3296j, jD)) {
            this.f3297k = eVar;
            this.f3296j = jD;
            f();
        }
    }

    public final void k(AnnotatedString annotatedString, d0 d0Var, androidx.compose.ui.text.font.h.b bVar, int i11, boolean z10, int i12, int i13, List list) {
        this.f3287a = annotatedString;
        this.f3288b = d0Var;
        this.f3289c = bVar;
        this.f3290d = i11;
        this.f3291e = z10;
        this.f3292f = i12;
        this.f3293g = i13;
        this.f3294h = list;
        f();
    }
}
