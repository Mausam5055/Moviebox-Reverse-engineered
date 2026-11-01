package androidx.compose.foundation.layout;

import androidx.compose.runtime.f3;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class e0 {
    public static final void a(androidx.compose.ui.f fVar, androidx.compose.runtime.i iVar, int i11) {
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(-72882467, i11, -1, "androidx.compose.foundation.layout.Spacer (Spacer.kt:38)");
        }
        SpacerMeasurePolicy spacerMeasurePolicy = SpacerMeasurePolicy.f2792a;
        int iA = androidx.compose.runtime.g.a(iVar, 0);
        androidx.compose.ui.f fVarE = ComposedModifierKt.e(iVar, fVar);
        androidx.compose.runtime.s sVarN = iVar.n();
        ComposeUiNode.Companion companion = ComposeUiNode.f5224c1;
        Function0 function0A = companion.a();
        if (!(iVar.i() instanceof androidx.compose.runtime.f)) {
            androidx.compose.runtime.g.b();
        }
        iVar.C();
        if (iVar.e()) {
            iVar.F(function0A);
        } else {
            iVar.o();
        }
        androidx.compose.runtime.i iVarA = f3.a(iVar);
        f3.b(iVarA, spacerMeasurePolicy, companion.c());
        f3.b(iVarA, sVarN, companion.e());
        f3.b(iVarA, fVarE, companion.d());
        Function2 function2B = companion.b();
        if (iVarA.e() || !Intrinsics.c(iVarA.y(), Integer.valueOf(iA))) {
            iVarA.p(Integer.valueOf(iA));
            iVarA.k(Integer.valueOf(iA), function2B);
        }
        iVar.r();
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
    }
}
