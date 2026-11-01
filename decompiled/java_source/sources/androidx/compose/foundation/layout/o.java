package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.LayoutDirection;

/* JADX INFO: loaded from: classes.dex */
final class o implements h0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f2871a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f2872b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f2873c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f2874d;

    public o(int i11, int i12, int i13, int i14) {
        this.f2871a = i11;
        this.f2872b = i12;
        this.f2873c = i13;
        this.f2874d = i14;
    }

    @Override // androidx.compose.foundation.layout.h0
    public int a(o0.e eVar) {
        return this.f2872b;
    }

    @Override // androidx.compose.foundation.layout.h0
    public int b(o0.e eVar) {
        return this.f2874d;
    }

    @Override // androidx.compose.foundation.layout.h0
    public int c(o0.e eVar, LayoutDirection layoutDirection) {
        return this.f2871a;
    }

    @Override // androidx.compose.foundation.layout.h0
    public int d(o0.e eVar, LayoutDirection layoutDirection) {
        return this.f2873c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        return this.f2871a == oVar.f2871a && this.f2872b == oVar.f2872b && this.f2873c == oVar.f2873c && this.f2874d == oVar.f2874d;
    }

    public int hashCode() {
        return (((((this.f2871a * 31) + this.f2872b) * 31) + this.f2873c) * 31) + this.f2874d;
    }

    public String toString() {
        return "Insets(left=" + this.f2871a + ", top=" + this.f2872b + ", right=" + this.f2873c + ", bottom=" + this.f2874d + ')';
    }
}
