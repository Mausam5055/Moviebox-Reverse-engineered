package androidx.compose.foundation.lazy.layout;

import androidx.compose.runtime.g2;
import androidx.compose.runtime.v1;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public abstract class LazyLayoutItemContentFactoryKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(final m mVar, final Object obj, final int i11, final Object obj2, androidx.compose.runtime.i iVar, final int i12) {
        int i13;
        androidx.compose.runtime.i iVarG = iVar.g(1439843069);
        if ((i12 & 6) == 0) {
            i13 = (iVarG.O(mVar) ? 4 : 2) | i12;
        } else {
            i13 = i12;
        }
        if ((i12 & 48) == 0) {
            i13 |= iVarG.O(obj) ? 32 : 16;
        }
        if ((i12 & 384) == 0) {
            i13 |= iVarG.c(i11) ? 256 : 128;
        }
        if ((i12 & 3072) == 0) {
            i13 |= iVarG.O(obj2) ? 2048 : 1024;
        }
        if ((i13 & 1171) == 1170 && iVarG.h()) {
            iVarG.G();
        } else {
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(1439843069, i13, -1, "androidx.compose.foundation.lazy.layout.SkippableItem (LazyLayoutItemContentFactory.kt:133)");
            }
            ((androidx.compose.runtime.saveable.a) obj).d(obj2, androidx.compose.runtime.internal.b.d(980966366, true, new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutItemContentFactoryKt$SkippableItem$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj3, Object obj4) {
                    invoke((androidx.compose.runtime.i) obj3, ((Number) obj4).intValue());
                    return Unit.f67061a;
                }

                public final void invoke(androidx.compose.runtime.i iVar2, int i14) {
                    if ((i14 & 3) == 2 && iVar2.h()) {
                        iVar2.G();
                        return;
                    }
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.Q(980966366, i14, -1, "androidx.compose.foundation.lazy.layout.SkippableItem.<anonymous> (LazyLayoutItemContentFactory.kt:135)");
                    }
                    mVar.g(i11, obj2, iVar2, 0);
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                }
            }, iVarG, 54), iVarG, 48);
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
        }
        g2 g2VarJ = iVarG.j();
        if (g2VarJ != null) {
            g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutItemContentFactoryKt$SkippableItem$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj3, Object obj4) {
                    invoke((androidx.compose.runtime.i) obj3, ((Number) obj4).intValue());
                    return Unit.f67061a;
                }

                public final void invoke(androidx.compose.runtime.i iVar2, int i14) {
                    LazyLayoutItemContentFactoryKt.a(mVar, obj, i11, obj2, iVar2, v1.a(i12 | 1));
                }
            });
        }
    }
}
