package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
final class f0 implements h0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h0 f2852a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h0 f2853b;

    public f0(h0 h0Var, h0 h0Var2) {
        this.f2852a = h0Var;
        this.f2853b = h0Var2;
    }

    @Override // androidx.compose.foundation.layout.h0
    public int a(o0.e eVar) {
        return Math.max(this.f2852a.a(eVar), this.f2853b.a(eVar));
    }

    @Override // androidx.compose.foundation.layout.h0
    public int b(o0.e eVar) {
        return Math.max(this.f2852a.b(eVar), this.f2853b.b(eVar));
    }

    @Override // androidx.compose.foundation.layout.h0
    public int c(o0.e eVar, LayoutDirection layoutDirection) {
        return Math.max(this.f2852a.c(eVar, layoutDirection), this.f2853b.c(eVar, layoutDirection));
    }

    @Override // androidx.compose.foundation.layout.h0
    public int d(o0.e eVar, LayoutDirection layoutDirection) {
        return Math.max(this.f2852a.d(eVar, layoutDirection), this.f2853b.d(eVar, layoutDirection));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f0)) {
            return false;
        }
        f0 f0Var = (f0) obj;
        return Intrinsics.c(f0Var.f2852a, this.f2852a) && Intrinsics.c(f0Var.f2853b, this.f2853b);
    }

    public int hashCode() {
        return this.f2852a.hashCode() + (this.f2853b.hashCode() * 31);
    }

    public String toString() {
        return '(' + this.f2852a + " ∪ " + this.f2853b + ')';
    }
}
