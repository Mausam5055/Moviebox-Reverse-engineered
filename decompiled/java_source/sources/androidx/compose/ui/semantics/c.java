package androidx.compose.ui.semantics;

import androidx.compose.ui.node.i1;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class c extends androidx.compose.ui.f.c implements i1 {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f5956n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f5957o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Function1 f5958p;

    public c(boolean z10, boolean z11, Function1 function1) {
        this.f5956n = z10;
        this.f5957o = z11;
        this.f5958p = function1;
    }

    public final void D1(boolean z10) {
        this.f5956n = z10;
    }

    public final void E1(Function1 function1) {
        this.f5958p = function1;
    }

    @Override // androidx.compose.ui.node.i1
    public boolean O() {
        return this.f5957o;
    }

    @Override // androidx.compose.ui.node.i1
    public void R0(n nVar) {
        this.f5958p.invoke(nVar);
    }

    @Override // androidx.compose.ui.node.i1
    public boolean W0() {
        return this.f5956n;
    }
}
