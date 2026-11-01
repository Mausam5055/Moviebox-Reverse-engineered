package androidx.compose.foundation.text.modifiers;

import androidx.compose.ui.text.d0;
import androidx.compose.ui.text.e0;
import androidx.compose.ui.text.q;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f3275h = new a(null);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f3276i = 8;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static c f3277j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LayoutDirection f3278a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d0 f3279b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final o0.e f3280c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.compose.ui.text.font.h.b f3281d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final d0 f3282e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f3283f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f3284g;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final c a(c cVar, LayoutDirection layoutDirection, d0 d0Var, o0.e eVar, androidx.compose.ui.text.font.h.b bVar) {
            if (cVar != null && layoutDirection == cVar.g() && Intrinsics.c(d0Var, cVar.f()) && eVar.getDensity() == cVar.d().getDensity() && bVar == cVar.e()) {
                return cVar;
            }
            c cVar2 = c.f3277j;
            if (cVar2 != null && layoutDirection == cVar2.g() && Intrinsics.c(d0Var, cVar2.f()) && eVar.getDensity() == cVar2.d().getDensity() && bVar == cVar2.e()) {
                return cVar2;
            }
            c cVar3 = new c(layoutDirection, e0.c(d0Var, layoutDirection), o0.g.a(eVar.getDensity(), eVar.C0()), bVar, null);
            c.f3277j = cVar3;
            return cVar3;
        }
    }

    private c(LayoutDirection layoutDirection, d0 d0Var, o0.e eVar, androidx.compose.ui.text.font.h.b bVar) {
        this.f3278a = layoutDirection;
        this.f3279b = d0Var;
        this.f3280c = eVar;
        this.f3281d = bVar;
        this.f3282e = e0.c(d0Var, layoutDirection);
        this.f3283f = Float.NaN;
        this.f3284g = Float.NaN;
    }

    public /* synthetic */ c(LayoutDirection layoutDirection, d0 d0Var, o0.e eVar, androidx.compose.ui.text.font.h.b bVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(layoutDirection, d0Var, eVar, bVar);
    }

    public final long c(long j11, int i11) {
        float height = this.f3284g;
        float height2 = this.f3283f;
        if (Float.isNaN(height) || Float.isNaN(height2)) {
            height = q.a(d.f3285a, this.f3282e, o0.c.b(0, 0, 0, 0, 15, null), this.f3280c, this.f3281d, (96 & 32) != 0 ? CollectionsKt.l() : null, (96 & 64) != 0 ? CollectionsKt.l() : null, (96 & 128) != 0 ? Integer.MAX_VALUE : 1, (96 & 256) != 0 ? false : false).getHeight();
            height2 = q.a(d.f3286b, this.f3282e, o0.c.b(0, 0, 0, 0, 15, null), this.f3280c, this.f3281d, (96 & 32) != 0 ? CollectionsKt.l() : null, (96 & 64) != 0 ? CollectionsKt.l() : null, (96 & 128) != 0 ? Integer.MAX_VALUE : 2, (96 & 256) != 0 ? false : false).getHeight() - height;
            this.f3284g = height;
            this.f3283f = height2;
        }
        return o0.c.a(o0.b.n(j11), o0.b.l(j11), i11 != 1 ? RangesKt.i(RangesKt.f(Math.round(height + (height2 * (i11 - 1))), 0), o0.b.k(j11)) : o0.b.m(j11), o0.b.k(j11));
    }

    public final o0.e d() {
        return this.f3280c;
    }

    public final androidx.compose.ui.text.font.h.b e() {
        return this.f3281d;
    }

    public final d0 f() {
        return this.f3279b;
    }

    public final LayoutDirection g() {
        return this.f3278a;
    }
}
