package androidx.compose.ui.layout;

import androidx.compose.runtime.f3;
import androidx.compose.runtime.h2;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class LayoutKt {
    public static final Function3 a(final androidx.compose.ui.f fVar) {
        return androidx.compose.runtime.internal.b.b(-1586257396, true, new Function3<h2, androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.ui.layout.LayoutKt$materializerOf$1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                m118invokeDeg8D_g(((h2) obj).f(), (androidx.compose.runtime.i) obj2, ((Number) obj3).intValue());
                return Unit.f67061a;
            }

            /* JADX INFO: renamed from: invoke-Deg8D_g, reason: not valid java name */
            public final void m118invokeDeg8D_g(androidx.compose.runtime.i iVar, androidx.compose.runtime.i iVar2, int i11) {
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.Q(-1586257396, i11, -1, "androidx.compose.ui.layout.materializerOf.<anonymous> (Layout.kt:205)");
                }
                int iA = androidx.compose.runtime.g.a(iVar2, 0);
                androidx.compose.ui.f fVarE = ComposedModifierKt.e(iVar2, fVar);
                iVar.x(509942095);
                androidx.compose.runtime.i iVarA = f3.a(iVar);
                ComposeUiNode.Companion companion = ComposeUiNode.f5224c1;
                f3.b(iVarA, fVarE, companion.d());
                Function2 function2B = companion.b();
                if (iVarA.e() || !Intrinsics.c(iVarA.y(), Integer.valueOf(iA))) {
                    iVarA.p(Integer.valueOf(iA));
                    iVarA.k(Integer.valueOf(iA), function2B);
                }
                iVar.N();
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.P();
                }
            }
        });
    }
}
