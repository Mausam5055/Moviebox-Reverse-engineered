package androidx.compose.foundation;

import androidx.compose.runtime.g2;
import androidx.compose.runtime.v1;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public abstract class CanvasKt {
    public static final void a(final androidx.compose.ui.f fVar, final Function1 function1, androidx.compose.runtime.i iVar, final int i11) {
        int i12;
        androidx.compose.runtime.i iVarG = iVar.g(-932836462);
        if ((i11 & 6) == 0) {
            i12 = (iVarG.O(fVar) ? 4 : 2) | i11;
        } else {
            i12 = i11;
        }
        if ((i11 & 48) == 0) {
            i12 |= iVarG.A(function1) ? 32 : 16;
        }
        if ((i12 & 19) == 18 && iVarG.h()) {
            iVarG.G();
        } else {
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(-932836462, i12, -1, "androidx.compose.foundation.Canvas (Canvas.kt:42)");
            }
            androidx.compose.foundation.layout.e0.a(androidx.compose.ui.draw.g.b(fVar, function1), iVarG, 0);
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
        }
        g2 g2VarJ = iVarG.j();
        if (g2VarJ != null) {
            g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.foundation.CanvasKt$Canvas$1
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
                    CanvasKt.a(fVar, function1, iVar2, v1.a(i11 | 1));
                }
            });
        }
    }
}
