package androidx.compose.foundation;

import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.node.m1;
import androidx.compose.ui.node.n1;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.z0;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes.dex */
public abstract class ClickableKt {
    public static final androidx.compose.ui.f a(androidx.compose.ui.f fVar, p.i iVar, final x xVar, final boolean z10, final String str, final androidx.compose.ui.semantics.f fVar2, final Function0 function0) {
        androidx.compose.ui.f fVarC;
        if (xVar instanceof b0) {
            fVarC = new ClickableElement(iVar, (b0) xVar, z10, str, fVar2, function0, null);
        } else if (xVar == null) {
            fVarC = new ClickableElement(iVar, null, z10, str, fVar2, function0, null);
        } else if (iVar != null) {
            fVarC = IndicationKt.b(androidx.compose.ui.f.f4178a, iVar, xVar).e(new ClickableElement(iVar, null, z10, str, fVar2, function0, null));
        } else {
            fVarC = ComposedModifierKt.c(androidx.compose.ui.f.f4178a, null, new Function3<androidx.compose.ui.f, androidx.compose.runtime.i, Integer, androidx.compose.ui.f>() { // from class: androidx.compose.foundation.ClickableKt$clickable-O2vRcR0$$inlined$clickableWithIndicationIfNeeded$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                public final androidx.compose.ui.f invoke(androidx.compose.ui.f fVar3, androidx.compose.runtime.i iVar2, int i11) {
                    iVar2.P(-1525724089);
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.Q(-1525724089, i11, -1, "androidx.compose.foundation.clickableWithIndicationIfNeeded.<anonymous> (Clickable.kt:375)");
                    }
                    Object objY = iVar2.y();
                    if (objY == androidx.compose.runtime.i.f3736a.a()) {
                        objY = p.h.a();
                        iVar2.p(objY);
                    }
                    p.i iVar3 = (p.i) objY;
                    androidx.compose.ui.f fVarE = IndicationKt.b(androidx.compose.ui.f.f4178a, iVar3, xVar).e(new ClickableElement(iVar3, null, z10, str, fVar2, function0, null));
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                    iVar2.K();
                    return fVarE;
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                    return invoke((androidx.compose.ui.f) obj, (androidx.compose.runtime.i) obj2, ((Number) obj3).intValue());
                }
            }, 1, null);
        }
        return fVar.e(fVarC);
    }

    public static /* synthetic */ androidx.compose.ui.f b(androidx.compose.ui.f fVar, p.i iVar, x xVar, boolean z10, String str, androidx.compose.ui.semantics.f fVar2, Function0 function0, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            z10 = true;
        }
        return a(fVar, iVar, xVar, z10, (i11 & 8) != 0 ? null : str, (i11 & 16) != 0 ? null : fVar2, function0);
    }

    public static final androidx.compose.ui.f c(androidx.compose.ui.f fVar, final boolean z10, final String str, final androidx.compose.ui.semantics.f fVar2, final Function0 function0) {
        return ComposedModifierKt.b(fVar, InspectableValueKt.b() ? new Function1<z0, Unit>() { // from class: androidx.compose.foundation.ClickableKt$clickable-XHw0xAI$$inlined$debugInspectorInfo$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((z0) obj);
                return Unit.f67061a;
            }

            public final void invoke(z0 z0Var) {
                z0Var.b("clickable");
                z0Var.a().c("enabled", Boolean.valueOf(z10));
                z0Var.a().c("onClickLabel", str);
                z0Var.a().c("role", fVar2);
                z0Var.a().c("onClick", function0);
            }
        } : InspectableValueKt.a(), new Function3<androidx.compose.ui.f, androidx.compose.runtime.i, Integer, androidx.compose.ui.f>() { // from class: androidx.compose.foundation.ClickableKt$clickable$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            public final androidx.compose.ui.f invoke(androidx.compose.ui.f fVar3, androidx.compose.runtime.i iVar, int i11) {
                p.i iVar2;
                iVar.P(-756081143);
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.Q(-756081143, i11, -1, "androidx.compose.foundation.clickable.<anonymous> (Clickable.kt:112)");
                }
                x xVar = (x) iVar.l(IndicationKt.a());
                if (xVar instanceof b0) {
                    iVar.P(617140216);
                    iVar.K();
                    iVar2 = null;
                } else {
                    iVar.P(617248189);
                    Object objY = iVar.y();
                    if (objY == androidx.compose.runtime.i.f3736a.a()) {
                        objY = p.h.a();
                        iVar.p(objY);
                    }
                    iVar2 = (p.i) objY;
                    iVar.K();
                }
                androidx.compose.ui.f fVarA = ClickableKt.a(androidx.compose.ui.f.f4178a, iVar2, xVar, z10, str, fVar2, function0);
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.P();
                }
                iVar.K();
                return fVarA;
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                return invoke((androidx.compose.ui.f) obj, (androidx.compose.runtime.i) obj2, ((Number) obj3).intValue());
            }
        });
    }

    public static /* synthetic */ androidx.compose.ui.f d(androidx.compose.ui.f fVar, boolean z10, String str, androidx.compose.ui.semantics.f fVar2, Function0 function0, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = true;
        }
        if ((i11 & 2) != 0) {
            str = null;
        }
        if ((i11 & 4) != 0) {
            fVar2 = null;
        }
        return c(fVar, z10, str, fVar2, function0);
    }

    public static final boolean e(m1 m1Var) {
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        n1.c(m1Var, androidx.compose.foundation.gestures.l.f2724p, new Function1<m1, Boolean>() { // from class: androidx.compose.foundation.ClickableKt$hasScrollableContainer$1
            {
                super(1);
            }

            /* JADX WARN: Code duplicated, block: B:8:0x0017  */
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(m1 m1Var2) {
                boolean z10;
                Ref.BooleanRef booleanRef2 = booleanRef;
                if (booleanRef2.element) {
                    z10 = true;
                } else {
                    Intrinsics.f(m1Var2, "null cannot be cast to non-null type androidx.compose.foundation.gestures.ScrollableContainerNode");
                    if (((androidx.compose.foundation.gestures.l) m1Var2).D1()) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                }
                booleanRef2.element = z10;
                return Boolean.valueOf(!booleanRef.element);
            }
        });
        return booleanRef.element;
    }
}
