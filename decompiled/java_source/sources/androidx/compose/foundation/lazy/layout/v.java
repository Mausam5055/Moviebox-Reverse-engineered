package androidx.compose.foundation.lazy.layout;

import androidx.compose.runtime.e1;
import androidx.compose.runtime.i1;
import androidx.compose.runtime.n2;
import androidx.compose.runtime.u2;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
final class v implements androidx.compose.ui.layout.f0, androidx.compose.ui.layout.f0.a, w.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f3077a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final w f3078b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final e1 f3079c = n2.a(-1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final e1 f3080d = n2.a(0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final i1 f3081e = u2.c(null, null, 2, null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final i1 f3082f = u2.c(null, null, 2, null);

    public v(Object obj, w wVar) {
        this.f3077a = obj;
        this.f3078b = wVar;
    }

    private final androidx.compose.ui.layout.f0.a b() {
        return (androidx.compose.ui.layout.f0.a) this.f3081e.getValue();
    }

    private final int d() {
        return this.f3080d.getIntValue();
    }

    private final androidx.compose.ui.layout.f0 e() {
        return (androidx.compose.ui.layout.f0) this.f3082f.getValue();
    }

    private final void h(androidx.compose.ui.layout.f0.a aVar) {
        this.f3081e.setValue(aVar);
    }

    private final void j(int i11) {
        this.f3080d.setIntValue(i11);
    }

    private final void k(androidx.compose.ui.layout.f0 f0Var) {
        this.f3082f.setValue(f0Var);
    }

    @Override // androidx.compose.ui.layout.f0
    public androidx.compose.ui.layout.f0.a a() {
        if (d() == 0) {
            this.f3078b.j(this);
            androidx.compose.ui.layout.f0 f0VarC = c();
            h(f0VarC != null ? f0VarC.a() : null);
        }
        j(d() + 1);
        return this;
    }

    public final androidx.compose.ui.layout.f0 c() {
        return e();
    }

    public final void f() {
        int iD = d();
        for (int i11 = 0; i11 < iD; i11++) {
            release();
        }
    }

    public void g(int i11) {
        this.f3079c.setIntValue(i11);
    }

    @Override // androidx.compose.foundation.lazy.layout.w.a
    public int getIndex() {
        return this.f3079c.getIntValue();
    }

    @Override // androidx.compose.foundation.lazy.layout.w.a
    public Object getKey() {
        return this.f3077a;
    }

    public final void i(androidx.compose.ui.layout.f0 f0Var) {
        androidx.compose.runtime.snapshots.j.a aVar = androidx.compose.runtime.snapshots.j.f4004e;
        androidx.compose.runtime.snapshots.j jVarD = aVar.d();
        Function1 function1H = jVarD != null ? jVarD.h() : null;
        androidx.compose.runtime.snapshots.j jVarF = aVar.f(jVarD);
        try {
            if (f0Var != e()) {
                k(f0Var);
                if (d() > 0) {
                    androidx.compose.ui.layout.f0.a aVarB = b();
                    if (aVarB != null) {
                        aVarB.release();
                    }
                    h(f0Var != null ? f0Var.a() : null);
                }
            }
            Unit unit = Unit.f67061a;
        } finally {
            aVar.m(jVarD, jVarF, function1H);
        }
    }

    @Override // androidx.compose.ui.layout.f0.a
    public void release() {
        if (d() <= 0) {
            throw new IllegalStateException("Release should only be called once");
        }
        j(d() - 1);
        if (d() == 0) {
            this.f3078b.l(this);
            androidx.compose.ui.layout.f0.a aVarB = b();
            if (aVarB != null) {
                aVarB.release();
            }
            h(null);
        }
    }
}
