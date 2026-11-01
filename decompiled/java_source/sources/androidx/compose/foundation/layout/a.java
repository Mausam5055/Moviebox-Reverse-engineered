package androidx.compose.foundation.layout;

import androidx.compose.runtime.i1;
import androidx.compose.runtime.u2;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.view.WindowInsetsCompat;

/* JADX INFO: loaded from: classes.dex */
public final class a implements h0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f2831a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f2832b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final i1 f2833c = u2.c(z0.c.f79124e, null, 2, null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final i1 f2834d = u2.c(Boolean.TRUE, null, 2, null);

    public a(int i11, String str) {
        this.f2831a = i11;
        this.f2832b = str;
    }

    private final void g(boolean z10) {
        this.f2834d.setValue(Boolean.valueOf(z10));
    }

    @Override // androidx.compose.foundation.layout.h0
    public int a(o0.e eVar) {
        return e().f79126b;
    }

    @Override // androidx.compose.foundation.layout.h0
    public int b(o0.e eVar) {
        return e().f79128d;
    }

    @Override // androidx.compose.foundation.layout.h0
    public int c(o0.e eVar, LayoutDirection layoutDirection) {
        return e().f79125a;
    }

    @Override // androidx.compose.foundation.layout.h0
    public int d(o0.e eVar, LayoutDirection layoutDirection) {
        return e().f79127c;
    }

    public final z0.c e() {
        return (z0.c) this.f2833c.getValue();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof a) && this.f2831a == ((a) obj).f2831a;
    }

    public final void f(z0.c cVar) {
        this.f2833c.setValue(cVar);
    }

    public final void h(WindowInsetsCompat windowInsetsCompat, int i11) {
        if (i11 == 0 || (i11 & this.f2831a) != 0) {
            f(windowInsetsCompat.getInsets(this.f2831a));
            g(windowInsetsCompat.isVisible(this.f2831a));
        }
    }

    public int hashCode() {
        return this.f2831a;
    }

    public String toString() {
        return this.f2832b + '(' + e().f79125a + ", " + e().f79126b + ", " + e().f79127c + ", " + e().f79128d + ')';
    }
}
