package androidx.compose.ui.layout;

import androidx.compose.runtime.f3;
import androidx.compose.runtime.g2;
import androidx.compose.runtime.v1;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.core.view.PointerIconCompat;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class SubcomposeLayoutKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final a f5151a = new a();

    public static final class a {
        a() {
        }

        public String toString() {
            return "ReusedSlotId";
        }
    }

    public static final void a(final androidx.compose.ui.f fVar, final Function2 function2, androidx.compose.runtime.i iVar, final int i11, final int i12) {
        int i13;
        androidx.compose.runtime.i iVarG = iVar.g(-1298353104);
        int i14 = i12 & 1;
        if (i14 != 0) {
            i13 = i11 | 6;
        } else if ((i11 & 6) == 0) {
            i13 = (iVarG.O(fVar) ? 4 : 2) | i11;
        } else {
            i13 = i11;
        }
        if ((i12 & 2) != 0) {
            i13 |= 48;
        } else if ((i11 & 48) == 0) {
            i13 |= iVarG.A(function2) ? 32 : 16;
        }
        if ((i13 & 19) == 18 && iVarG.h()) {
            iVarG.G();
        } else {
            if (i14 != 0) {
                fVar = androidx.compose.ui.f.f4178a;
            }
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(-1298353104, i13, -1, "androidx.compose.ui.layout.SubcomposeLayout (SubcomposeLayout.kt:78)");
            }
            Object objY = iVarG.y();
            if (objY == androidx.compose.runtime.i.f3736a.a()) {
                objY = new SubcomposeLayoutState();
                iVarG.p(objY);
            }
            b((SubcomposeLayoutState) objY, fVar, function2, iVarG, (i13 << 3) & PointerIconCompat.TYPE_TEXT, 0);
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
        }
        g2 g2VarJ = iVarG.j();
        if (g2VarJ != null) {
            g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.ui.layout.SubcomposeLayoutKt$SubcomposeLayout$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                    return Unit.f67061a;
                }

                public final void invoke(androidx.compose.runtime.i iVar2, int i15) {
                    SubcomposeLayoutKt.a(fVar, function2, iVar2, v1.a(i11 | 1), i12);
                }
            });
        }
    }

    public static final void b(final SubcomposeLayoutState subcomposeLayoutState, androidx.compose.ui.f fVar, final Function2 function2, androidx.compose.runtime.i iVar, final int i11, final int i12) {
        int i13;
        androidx.compose.runtime.i iVarG = iVar.g(-511989831);
        if ((i12 & 1) != 0) {
            i13 = i11 | 6;
        } else if ((i11 & 6) == 0) {
            i13 = (iVarG.A(subcomposeLayoutState) ? 4 : 2) | i11;
        } else {
            i13 = i11;
        }
        int i14 = i12 & 2;
        if (i14 != 0) {
            i13 |= 48;
        } else if ((i11 & 48) == 0) {
            i13 |= iVarG.O(fVar) ? 32 : 16;
        }
        if ((i12 & 4) != 0) {
            i13 |= 384;
        } else if ((i11 & 384) == 0) {
            i13 |= iVarG.A(function2) ? 256 : 128;
        }
        if ((i13 & 147) == 146 && iVarG.h()) {
            iVarG.G();
        } else {
            if (i14 != 0) {
                fVar = androidx.compose.ui.f.f4178a;
            }
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(-511989831, i13, -1, "androidx.compose.ui.layout.SubcomposeLayout (SubcomposeLayout.kt:112)");
            }
            int iA = androidx.compose.runtime.g.a(iVarG, 0);
            androidx.compose.runtime.m mVarC = androidx.compose.runtime.g.c(iVarG, 0);
            androidx.compose.ui.f fVarE = ComposedModifierKt.e(iVarG, fVar);
            androidx.compose.runtime.s sVarN = iVarG.n();
            Function0 function0A = LayoutNode.K.a();
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
            f3.b(iVarA, subcomposeLayoutState, subcomposeLayoutState.g());
            f3.b(iVarA, mVarC, subcomposeLayoutState.e());
            f3.b(iVarA, function2, subcomposeLayoutState.f());
            ComposeUiNode.Companion companion = ComposeUiNode.f5224c1;
            f3.b(iVarA, sVarN, companion.e());
            f3.b(iVarA, fVarE, companion.d());
            Function2 function2B = companion.b();
            if (iVarA.e() || !Intrinsics.c(iVarA.y(), Integer.valueOf(iA))) {
                iVarA.p(Integer.valueOf(iA));
                iVarA.k(Integer.valueOf(iA), function2B);
            }
            iVarG.r();
            if (iVarG.h()) {
                iVarG.P(-26502501);
                iVarG.K();
            } else {
                iVarG.P(-26580342);
                boolean zA = iVarG.A(subcomposeLayoutState);
                Object objY = iVarG.y();
                if (zA || objY == androidx.compose.runtime.i.f3736a.a()) {
                    objY = new Function0<Unit>() { // from class: androidx.compose.ui.layout.SubcomposeLayoutKt$SubcomposeLayout$4$1
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public /* bridge */ /* synthetic */ Object invoke() {
                            m119invoke();
                            return Unit.f67061a;
                        }

                        /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                        public final void m119invoke() {
                            subcomposeLayoutState.d();
                        }
                    };
                    iVarG.p(objY);
                }
                androidx.compose.runtime.g0.e((Function0) objY, iVarG, 0);
                iVarG.K();
            }
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
        }
        final androidx.compose.ui.f fVar2 = fVar;
        g2 g2VarJ = iVarG.j();
        if (g2VarJ != null) {
            g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.ui.layout.SubcomposeLayoutKt$SubcomposeLayout$5
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                    return Unit.f67061a;
                }

                public final void invoke(androidx.compose.runtime.i iVar2, int i15) {
                    SubcomposeLayoutKt.b(subcomposeLayoutState, fVar2, function2, iVar2, v1.a(i11 | 1), i12);
                }
            });
        }
    }
}
