package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
final class n implements h0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h0 f2869a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h0 f2870b;

    public n(h0 h0Var, h0 h0Var2) {
        this.f2869a = h0Var;
        this.f2870b = h0Var2;
    }

    @Override // androidx.compose.foundation.layout.h0
    public int a(o0.e eVar) {
        return RangesKt.f(this.f2869a.a(eVar) - this.f2870b.a(eVar), 0);
    }

    @Override // androidx.compose.foundation.layout.h0
    public int b(o0.e eVar) {
        return RangesKt.f(this.f2869a.b(eVar) - this.f2870b.b(eVar), 0);
    }

    @Override // androidx.compose.foundation.layout.h0
    public int c(o0.e eVar, LayoutDirection layoutDirection) {
        return RangesKt.f(this.f2869a.c(eVar, layoutDirection) - this.f2870b.c(eVar, layoutDirection), 0);
    }

    @Override // androidx.compose.foundation.layout.h0
    public int d(o0.e eVar, LayoutDirection layoutDirection) {
        return RangesKt.f(this.f2869a.d(eVar, layoutDirection) - this.f2870b.d(eVar, layoutDirection), 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        return Intrinsics.c(nVar.f2869a, this.f2869a) && Intrinsics.c(nVar.f2870b, this.f2870b);
    }

    public int hashCode() {
        return (this.f2869a.hashCode() * 31) + this.f2870b.hashCode();
    }

    public String toString() {
        return '(' + this.f2869a + " - " + this.f2870b + ')';
    }
}
