package androidx.compose.foundation;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.s1;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.z0;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes.dex */
public abstract class IndicationKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final s1 f2606a = CompositionLocalKt.f(new Function0<x>() { // from class: androidx.compose.foundation.IndicationKt$LocalIndication$1
        @Override // kotlin.jvm.functions.Function0
        public final x invoke() {
            return DefaultDebugIndication.f2579a;
        }
    });

    public static final s1 a() {
        return f2606a;
    }

    public static final androidx.compose.ui.f b(androidx.compose.ui.f fVar, final p.g gVar, final x xVar) {
        if (xVar == null) {
            return fVar;
        }
        if (xVar instanceof b0) {
            return fVar.e(new IndicationModifierElement(gVar, (b0) xVar));
        }
        return ComposedModifierKt.b(fVar, InspectableValueKt.b() ? new Function1<z0, Unit>() { // from class: androidx.compose.foundation.IndicationKt$indication$$inlined$debugInspectorInfo$1
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
                z0Var.b("indication");
                z0Var.a().c("interactionSource", gVar);
                z0Var.a().c("indication", xVar);
            }
        } : InspectableValueKt.a(), new Function3<androidx.compose.ui.f, androidx.compose.runtime.i, Integer, androidx.compose.ui.f>() { // from class: androidx.compose.foundation.IndicationKt$indication$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            public final androidx.compose.ui.f invoke(androidx.compose.ui.f fVar2, androidx.compose.runtime.i iVar, int i11) {
                iVar.P(-353972293);
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.Q(-353972293, i11, -1, "androidx.compose.foundation.indication.<anonymous> (Indication.kt:182)");
                }
                y yVarA = xVar.a(gVar, iVar, 0);
                boolean zO = iVar.O(yVarA);
                Object objY = iVar.y();
                if (zO || objY == androidx.compose.runtime.i.f3736a.a()) {
                    objY = new z(yVarA);
                    iVar.p(objY);
                }
                z zVar = (z) objY;
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.P();
                }
                iVar.K();
                return zVar;
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                return invoke((androidx.compose.ui.f) obj, (androidx.compose.runtime.i) obj2, ((Number) obj3).intValue());
            }
        });
    }
}
