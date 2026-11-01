package androidx.compose.foundation.lazy;

import androidx.compose.runtime.e1;
import androidx.compose.runtime.n2;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e1 f3138a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e1 f3139b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f3140c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Object f3141d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final androidx.compose.foundation.lazy.layout.u f3142e;

    /* JADX WARN: Illegal instructions before constructor call */
    public v() {
        int i11 = 0;
        this(i11, i11, 3, null);
    }

    public v(int i11, int i12) {
        this.f3138a = n2.a(i11);
        this.f3139b = n2.a(i12);
        this.f3142e = new androidx.compose.foundation.lazy.layout.u(i11, 30, 100);
    }

    public /* synthetic */ v(int i11, int i12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this((i13 & 1) != 0 ? 0 : i11, (i13 & 2) != 0 ? 0 : i12);
    }

    private final void f(int i11) {
        this.f3139b.setIntValue(i11);
    }

    private final void g(int i11, int i12) {
        if (i11 >= 0.0f) {
            e(i11);
            this.f3142e.e(i11);
            f(i12);
        } else {
            throw new IllegalArgumentException(("Index should be non-negative (" + i11 + ')').toString());
        }
    }

    public final int a() {
        return this.f3138a.getIntValue();
    }

    public final androidx.compose.foundation.lazy.layout.u b() {
        return this.f3142e;
    }

    public final int c() {
        return this.f3139b.getIntValue();
    }

    public final void d(int i11, int i12) {
        g(i11, i12);
        this.f3141d = null;
    }

    public final void e(int i11) {
        this.f3138a.setIntValue(i11);
    }

    public final void h(m mVar) {
        n nVarO = mVar.o();
        this.f3141d = nVarO != null ? nVarO.getKey() : null;
        if (this.f3140c || mVar.d() > 0) {
            this.f3140c = true;
            int iP = mVar.p();
            if (iP >= 0.0f) {
                n nVarO2 = mVar.o();
                g(nVarO2 != null ? nVarO2.getIndex() : 0, iP);
            } else {
                throw new IllegalStateException(("scrollOffset should be non-negative (" + iP + ')').toString());
            }
        }
    }

    public final void i(int i11) {
        if (i11 >= 0.0f) {
            f(i11);
            return;
        }
        throw new IllegalStateException(("scrollOffset should be non-negative (" + i11 + ')').toString());
    }

    public final int j(k kVar, int i11) {
        int iA = androidx.compose.foundation.lazy.layout.n.a(kVar, this.f3141d, i11);
        if (i11 != iA) {
            e(iA);
            this.f3142e.e(i11);
        }
        return iA;
    }
}
