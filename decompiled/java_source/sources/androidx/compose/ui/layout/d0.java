package androidx.compose.ui.layout;

import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
final class d0 extends androidx.compose.ui.f.c implements androidx.compose.ui.node.p {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Function1 f5175n;

    public d0(Function1 function1) {
        this.f5175n = function1;
    }

    public final void D1(Function1 function1) {
        this.f5175n = function1;
    }

    @Override // androidx.compose.ui.node.p
    public void v(l lVar) {
        this.f5175n.invoke(lVar);
    }
}
