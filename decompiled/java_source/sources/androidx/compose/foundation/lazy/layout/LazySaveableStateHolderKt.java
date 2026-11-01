package androidx.compose.foundation.lazy.layout;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.g2;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.SaveableStateHolderKt;
import androidx.compose.runtime.saveable.SaveableStateRegistryKt;
import androidx.compose.runtime.t1;
import androidx.compose.runtime.v1;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes.dex */
public abstract class LazySaveableStateHolderKt {
    public static final void a(final Function3 function3, androidx.compose.runtime.i iVar, final int i11) {
        int i12;
        androidx.compose.runtime.i iVarG = iVar.g(674185128);
        if ((i11 & 6) == 0) {
            i12 = (iVarG.A(function3) ? 4 : 2) | i11;
        } else {
            i12 = i11;
        }
        if ((i12 & 3) == 2 && iVarG.h()) {
            iVarG.G();
        } else {
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(674185128, i12, -1, "androidx.compose.foundation.lazy.layout.LazySaveableStateHolderProvider (LazySaveableStateHolder.kt:41)");
            }
            final androidx.compose.runtime.saveable.b bVar = (androidx.compose.runtime.saveable.b) iVarG.l(SaveableStateRegistryKt.d());
            Object[] objArr = {bVar};
            androidx.compose.runtime.saveable.d dVarA = LazySaveableStateHolder.f3002d.a(bVar);
            boolean zA = iVarG.A(bVar);
            Object objY = iVarG.y();
            if (zA || objY == androidx.compose.runtime.i.f3736a.a()) {
                objY = new Function0<LazySaveableStateHolder>() { // from class: androidx.compose.foundation.lazy.layout.LazySaveableStateHolderKt$LazySaveableStateHolderProvider$holder$1$1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final LazySaveableStateHolder invoke() {
                        return new LazySaveableStateHolder(bVar, MapsKt.h());
                    }
                };
                iVarG.p(objY);
            }
            final LazySaveableStateHolder lazySaveableStateHolder = (LazySaveableStateHolder) RememberSaveableKt.c(objArr, dVarA, null, (Function0) objY, iVarG, 0, 4);
            CompositionLocalKt.a(SaveableStateRegistryKt.d().d(lazySaveableStateHolder), androidx.compose.runtime.internal.b.d(1863926504, true, new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.foundation.lazy.layout.LazySaveableStateHolderKt$LazySaveableStateHolderProvider$1
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

                public final void invoke(androidx.compose.runtime.i iVar2, int i13) {
                    if ((i13 & 3) == 2 && iVar2.h()) {
                        iVar2.G();
                        return;
                    }
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.Q(1863926504, i13, -1, "androidx.compose.foundation.lazy.layout.LazySaveableStateHolderProvider.<anonymous> (LazySaveableStateHolder.kt:49)");
                    }
                    lazySaveableStateHolder.i(SaveableStateHolderKt.a(iVar2, 0));
                    function3.invoke(lazySaveableStateHolder, iVar2, 0);
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                }
            }, iVarG, 54), iVarG, t1.f4041i | 48);
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
        }
        g2 g2VarJ = iVarG.j();
        if (g2VarJ != null) {
            g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.foundation.lazy.layout.LazySaveableStateHolderKt$LazySaveableStateHolderProvider$2
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

                public final void invoke(androidx.compose.runtime.i iVar2, int i13) {
                    LazySaveableStateHolderKt.a(function3, iVar2, v1.a(i11 | 1));
                }
            });
        }
    }
}
