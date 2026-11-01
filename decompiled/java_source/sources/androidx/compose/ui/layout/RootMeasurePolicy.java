package androidx.compose.ui.layout;

import androidx.compose.ui.node.LayoutNode;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class RootMeasurePolicy extends LayoutNode.d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final RootMeasurePolicy f5150b = new RootMeasurePolicy();

    private RootMeasurePolicy() {
        super("Undefined intrinsics block and it is required");
    }

    @Override // androidx.compose.ui.layout.t
    public v c(x xVar, List list, long j11) {
        if (list.isEmpty()) {
            return w.b(xVar, o0.b.n(j11), o0.b.m(j11), null, new Function1<g0.a, Unit>() { // from class: androidx.compose.ui.layout.RootMeasurePolicy$measure$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((g0.a) obj);
                    return Unit.f67061a;
                }

                public final void invoke(g0.a aVar) {
                }
            }, 4, null);
        }
        if (list.size() == 1) {
            final g0 g0VarP = ((s) list.get(0)).P(j11);
            return w.b(xVar, o0.c.i(j11, g0VarP.u0()), o0.c.h(j11, g0VarP.l0()), null, new Function1<g0.a, Unit>() { // from class: androidx.compose.ui.layout.RootMeasurePolicy$measure$2
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((g0.a) obj);
                    return Unit.f67061a;
                }

                public final void invoke(g0.a aVar) {
                    g0.a.n(aVar, g0VarP, 0, 0, 0.0f, null, 12, null);
                }
            }, 4, null);
        }
        final ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i11 = 0; i11 < size; i11++) {
            arrayList.add(((s) list.get(i11)).P(j11));
        }
        int size2 = arrayList.size();
        int iMax = 0;
        int iMax2 = 0;
        for (int i12 = 0; i12 < size2; i12++) {
            g0 g0Var = (g0) arrayList.get(i12);
            iMax = Math.max(g0Var.u0(), iMax);
            iMax2 = Math.max(g0Var.l0(), iMax2);
        }
        return w.b(xVar, o0.c.i(j11, iMax), o0.c.h(j11, iMax2), null, new Function1<g0.a, Unit>() { // from class: androidx.compose.ui.layout.RootMeasurePolicy$measure$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((g0.a) obj);
                return Unit.f67061a;
            }

            public final void invoke(g0.a aVar) {
                List<g0> list2 = arrayList;
                int size3 = list2.size();
                for (int i13 = 0; i13 < size3; i13++) {
                    g0.a.n(aVar, list2.get(i13), 0, 0, 0.0f, null, 12, null);
                }
            }
        }, 4, null);
    }
}
