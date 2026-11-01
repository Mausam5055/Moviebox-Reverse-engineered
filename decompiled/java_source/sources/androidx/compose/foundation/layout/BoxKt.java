package androidx.compose.foundation.layout;

import androidx.compose.runtime.f3;
import androidx.compose.runtime.g2;
import androidx.compose.runtime.v1;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.HashMap;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class BoxKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final HashMap f2737a = d(true);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final HashMap f2738b = d(false);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final androidx.compose.ui.layout.t f2739c = new BoxMeasurePolicy(androidx.compose.ui.b.f4087a.m(), false);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final androidx.compose.ui.layout.t f2740d = new androidx.compose.ui.layout.t() { // from class: androidx.compose.foundation.layout.BoxKt$EmptyBoxMeasurePolicy$1
        @Override // androidx.compose.ui.layout.t
        public final androidx.compose.ui.layout.v c(androidx.compose.ui.layout.x xVar, List list, long j11) {
            return androidx.compose.ui.layout.w.b(xVar, o0.b.n(j11), o0.b.m(j11), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.foundation.layout.BoxKt$EmptyBoxMeasurePolicy$1.1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((androidx.compose.ui.layout.g0.a) obj);
                    return Unit.f67061a;
                }

                public final void invoke(androidx.compose.ui.layout.g0.a aVar) {
                }
            }, 4, null);
        }
    };

    public static final void a(final androidx.compose.ui.f fVar, androidx.compose.runtime.i iVar, final int i11) {
        int i12;
        androidx.compose.runtime.i iVarG = iVar.g(-211209833);
        if ((i11 & 6) == 0) {
            i12 = (iVarG.O(fVar) ? 4 : 2) | i11;
        } else {
            i12 = i11;
        }
        if ((i12 & 3) == 2 && iVarG.h()) {
            iVarG.G();
        } else {
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(-211209833, i12, -1, "androidx.compose.foundation.layout.Box (Box.kt:236)");
            }
            androidx.compose.ui.layout.t tVar = f2740d;
            int iA = androidx.compose.runtime.g.a(iVarG, 0);
            androidx.compose.ui.f fVarE = ComposedModifierKt.e(iVarG, fVar);
            androidx.compose.runtime.s sVarN = iVarG.n();
            ComposeUiNode.Companion companion = ComposeUiNode.f5224c1;
            Function0 function0A = companion.a();
            if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                androidx.compose.runtime.g.b();
            }
            iVarG.C();
            if (iVarG.e()) {
                iVarG.F(function0A);
            } else {
                iVarG.o();
            }
            androidx.compose.runtime.i iVarA = f3.a(iVarG);
            f3.b(iVarA, tVar, companion.c());
            f3.b(iVarA, sVarN, companion.e());
            f3.b(iVarA, fVarE, companion.d());
            Function2 function2B = companion.b();
            if (iVarA.e() || !Intrinsics.c(iVarA.y(), Integer.valueOf(iA))) {
                iVarA.p(Integer.valueOf(iA));
                iVarA.k(Integer.valueOf(iA), function2B);
            }
            iVarG.r();
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
        }
        g2 g2VarJ = iVarG.j();
        if (g2VarJ != null) {
            g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.foundation.layout.BoxKt$Box$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                    return Unit.f67061a;
                }

                public final void invoke(androidx.compose.runtime.i iVar2, int i13) {
                    BoxKt.a(fVar, iVar2, v1.a(i11 | 1));
                }
            });
        }
    }

    private static final HashMap d(boolean z10) {
        HashMap map = new HashMap(9);
        androidx.compose.ui.b.a aVar = androidx.compose.ui.b.f4087a;
        e(map, z10, aVar.m());
        e(map, z10, aVar.k());
        e(map, z10, aVar.l());
        e(map, z10, aVar.g());
        e(map, z10, aVar.d());
        e(map, z10, aVar.e());
        e(map, z10, aVar.c());
        e(map, z10, aVar.a());
        e(map, z10, aVar.b());
        return map;
    }

    private static final void e(HashMap map, boolean z10, androidx.compose.ui.b bVar) {
        map.put(bVar, new BoxMeasurePolicy(bVar, z10));
    }

    private static final e f(androidx.compose.ui.layout.s sVar) {
        Object objG = sVar.G();
        if (objG instanceof e) {
            return (e) objG;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean g(androidx.compose.ui.layout.s sVar) {
        e eVarF = f(sVar);
        if (eVarF != null) {
            return eVarF.E1();
        }
        return false;
    }

    public static final androidx.compose.ui.layout.t h(androidx.compose.ui.b bVar, boolean z10) {
        androidx.compose.ui.layout.t tVar = (androidx.compose.ui.layout.t) (z10 ? f2737a : f2738b).get(bVar);
        return tVar == null ? new BoxMeasurePolicy(bVar, z10) : tVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(androidx.compose.ui.layout.g0.a aVar, androidx.compose.ui.layout.g0 g0Var, androidx.compose.ui.layout.s sVar, LayoutDirection layoutDirection, int i11, int i12, androidx.compose.ui.b bVar) {
        androidx.compose.ui.b bVarD1;
        e eVarF = f(sVar);
        androidx.compose.ui.layout.g0.a.j(aVar, g0Var, ((eVarF == null || (bVarD1 = eVarF.D1()) == null) ? bVar : bVarD1).a(o0.u.a(g0Var.u0(), g0Var.l0()), o0.u.a(i11, i12), layoutDirection), 0.0f, 2, null);
    }

    public static final androidx.compose.ui.layout.t j(androidx.compose.ui.b bVar, boolean z10, androidx.compose.runtime.i iVar, int i11) {
        androidx.compose.ui.layout.t tVar;
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(56522820, i11, -1, "androidx.compose.foundation.layout.rememberBoxMeasurePolicy (Box.kt:113)");
        }
        if (!Intrinsics.c(bVar, androidx.compose.ui.b.f4087a.m()) || z10) {
            iVar.P(-1710100211);
            boolean z11 = ((((i11 & 14) ^ 6) > 4 && iVar.O(bVar)) || (i11 & 6) == 4) | ((((i11 & 112) ^ 48) > 32 && iVar.a(z10)) || (i11 & 48) == 32);
            Object objY = iVar.y();
            if (z11 || objY == androidx.compose.runtime.i.f3736a.a()) {
                objY = new BoxMeasurePolicy(bVar, z10);
                iVar.p(objY);
            }
            tVar = (BoxMeasurePolicy) objY;
            iVar.K();
        } else {
            iVar.P(-1710139705);
            iVar.K();
            tVar = f2739c;
        }
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        return tVar;
    }
}
