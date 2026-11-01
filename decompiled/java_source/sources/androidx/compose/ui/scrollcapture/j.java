package androidx.compose.ui.scrollcapture;

import androidx.compose.ui.layout.l;
import androidx.compose.ui.layout.m;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.semantics.SemanticsConfigurationKt;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsProperties;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import o0.r;
import o0.s;

/* JADX INFO: loaded from: classes.dex */
public abstract class j {
    private static final boolean a(SemanticsNode semanticsNode) {
        Function2 function2C = c(semanticsNode);
        androidx.compose.ui.semantics.g gVar = (androidx.compose.ui.semantics.g) SemanticsConfigurationKt.a(semanticsNode.w(), SemanticsProperties.f5919a.H());
        return (function2C == null || gVar == null || ((Number) gVar.a().invoke()).floatValue() <= 0.0f) ? false : true;
    }

    private static final List b(SemanticsNode semanticsNode) {
        return semanticsNode.l(false, false, false);
    }

    public static final Function2 c(SemanticsNode semanticsNode) {
        return (Function2) SemanticsConfigurationKt.a(semanticsNode.w(), androidx.compose.ui.semantics.h.f5976a.t());
    }

    private static final boolean d(SemanticsNode semanticsNode) {
        return (semanticsNode.z() || semanticsNode.w().e(SemanticsProperties.f5919a.n())) ? false : true;
    }

    private static final void e(SemanticsNode semanticsNode, int i11, Function1 function1) {
        androidx.compose.runtime.collection.b bVar = new androidx.compose.runtime.collection.b(new SemanticsNode[16], 0);
        List listB = b(semanticsNode);
        while (true) {
            bVar.e(bVar.n(), listB);
            while (bVar.q()) {
                SemanticsNode semanticsNode2 = (SemanticsNode) bVar.v(bVar.n() - 1);
                if (d(semanticsNode2) && !semanticsNode2.w().e(SemanticsProperties.f5919a.f())) {
                    NodeCoordinator nodeCoordinatorE = semanticsNode2.e();
                    if (nodeCoordinatorE == null) {
                        g0.a.c("Expected semantics node to have a coordinator.");
                        throw new KotlinNothingValueException();
                    }
                    l lVarX0 = nodeCoordinatorE.X0();
                    r rVarB = s.b(m.c(lVarX0));
                    if (rVarB.k()) {
                        continue;
                    } else if (a(semanticsNode2)) {
                        int i12 = i11 + 1;
                        function1.invoke(new i(semanticsNode2, i12, rVarB, lVarX0));
                        e(semanticsNode2, i12, function1);
                    } else {
                        listB = b(semanticsNode2);
                    }
                }
            }
            return;
        }
    }

    static /* synthetic */ void f(SemanticsNode semanticsNode, int i11, Function1 function1, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        e(semanticsNode, i11, function1);
    }
}
