package androidx.compose.ui.node;

import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public abstract class v0 {
    /* JADX WARN: Multi-variable type inference failed */
    public static final void a(androidx.compose.ui.f.c cVar, Function0 function0) {
        ObserverNodeOwnerScope observerNodeOwnerScopeG1 = cVar.g1();
        if (observerNodeOwnerScopeG1 == null) {
            observerNodeOwnerScopeG1 = new ObserverNodeOwnerScope((u0) cVar);
            cVar.y1(observerNodeOwnerScopeG1);
        }
        g.n(cVar).getSnapshotObserver().i(observerNodeOwnerScopeG1, ObserverNodeOwnerScope.f5363b.a(), function0);
    }
}
