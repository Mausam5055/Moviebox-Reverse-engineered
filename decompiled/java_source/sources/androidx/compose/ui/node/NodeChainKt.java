package androidx.compose.ui.node;

import androidx.compose.ui.CombinedModifier;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class NodeChainKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final a f5351a;

    public static final class a extends androidx.compose.ui.f.c {
        a() {
        }

        public String toString() {
            return "<Head>";
        }
    }

    static {
        a aVar = new a();
        aVar.t1(-1);
        f5351a = aVar;
    }

    public static final int d(androidx.compose.ui.f.b bVar, androidx.compose.ui.f.b bVar2) {
        if (Intrinsics.c(bVar, bVar2)) {
            return 2;
        }
        return androidx.compose.ui.a.a(bVar, bVar2) ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final androidx.compose.runtime.collection.b e(androidx.compose.ui.f fVar, final androidx.compose.runtime.collection.b bVar) {
        androidx.compose.runtime.collection.b bVar2 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f[RangesKt.f(bVar.n(), 16)], 0);
        bVar2.b(fVar);
        Function1<androidx.compose.ui.f.b, Boolean> function1 = null;
        while (bVar2.q()) {
            androidx.compose.ui.f fVar2 = (androidx.compose.ui.f) bVar2.v(bVar2.n() - 1);
            if (fVar2 instanceof CombinedModifier) {
                CombinedModifier combinedModifier = (CombinedModifier) fVar2;
                bVar2.b(combinedModifier.a());
                bVar2.b(combinedModifier.i());
            } else if (fVar2 instanceof androidx.compose.ui.f.b) {
                bVar.b(fVar2);
            } else {
                if (function1 == null) {
                    function1 = new Function1<androidx.compose.ui.f.b, Boolean>() { // from class: androidx.compose.ui.node.NodeChainKt$fillVector$1
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Boolean invoke(androidx.compose.ui.f.b bVar3) {
                            bVar.b(bVar3);
                            return Boolean.TRUE;
                        }
                    };
                }
                fVar2.c(function1);
                function1 = function1;
            }
        }
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(l0 l0Var, androidx.compose.ui.f.c cVar) {
        Intrinsics.f(cVar, "null cannot be cast to non-null type T of androidx.compose.ui.node.NodeChainKt.updateUnsafe");
        l0Var.i(cVar);
    }
}
