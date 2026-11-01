package androidx.compose.foundation.layout;

import androidx.compose.runtime.i1;
import androidx.compose.runtime.u2;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class g0 implements h0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f2854a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final i1 f2855b;

    public g0(r rVar, String str) {
        this.f2854a = str;
        this.f2855b = u2.c(rVar, null, 2, null);
    }

    @Override // androidx.compose.foundation.layout.h0
    public int a(o0.e eVar) {
        return e().d();
    }

    @Override // androidx.compose.foundation.layout.h0
    public int b(o0.e eVar) {
        return e().a();
    }

    @Override // androidx.compose.foundation.layout.h0
    public int c(o0.e eVar, LayoutDirection layoutDirection) {
        return e().b();
    }

    @Override // androidx.compose.foundation.layout.h0
    public int d(o0.e eVar, LayoutDirection layoutDirection) {
        return e().c();
    }

    public final r e() {
        return (r) this.f2855b.getValue();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof g0) {
            return Intrinsics.c(e(), ((g0) obj).e());
        }
        return false;
    }

    public final void f(r rVar) {
        this.f2855b.setValue(rVar);
    }

    public int hashCode() {
        return this.f2854a.hashCode();
    }

    public String toString() {
        return this.f2854a + "(left=" + e().b() + ", top=" + e().d() + ", right=" + e().c() + ", bottom=" + e().a() + ')';
    }
}
