package androidx.compose.material3;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.g2;
import androidx.compose.runtime.i;
import androidx.compose.runtime.k;
import androidx.compose.runtime.v1;
import androidx.compose.ui.platform.CompositionLocalsKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public abstract class DividerKt {
    public static final void a(androidx.compose.ui.f fVar, float f11, long j11, i iVar, final int i11, final int i12) {
        int i13;
        i iVarG = iVar.g(1562471785);
        int i14 = i12 & 1;
        if (i14 != 0) {
            i13 = i11 | 6;
        } else if ((i11 & 6) == 0) {
            i13 = (iVarG.O(fVar) ? 4 : 2) | i11;
        } else {
            i13 = i11;
        }
        int i15 = i12 & 2;
        if (i15 != 0) {
            i13 |= 48;
        } else if ((i11 & 48) == 0) {
            i13 |= iVarG.b(f11) ? 32 : 16;
        }
        if ((i11 & 384) == 0) {
            i13 |= ((i12 & 4) == 0 && iVarG.d(j11)) ? 256 : 128;
        }
        if ((i13 & 147) == 146 && iVarG.h()) {
            iVarG.G();
        } else {
            iVarG.B();
            if ((i11 & 1) == 0 || iVarG.I()) {
                if (i14 != 0) {
                    fVar = androidx.compose.ui.f.f4178a;
                }
                if (i15 != 0) {
                    f11 = c.f3546a.b();
                }
                if ((i12 & 4) != 0) {
                    j11 = c.f3546a.a(iVarG, 6);
                    i13 &= -897;
                }
            } else {
                iVarG.G();
                if ((i12 & 4) != 0) {
                    i13 &= -897;
                }
            }
            iVarG.s();
            if (k.H()) {
                k.Q(1562471785, i13, -1, "androidx.compose.material3.Divider (Divider.kt:95)");
            }
            iVarG.x(1232937226);
            float fG = o0.i.i(f11, o0.i.f70603b.a()) ? o0.i.g(1.0f / ((o0.e) iVarG.l(CompositionLocalsKt.c())).getDensity()) : f11;
            iVarG.N();
            BoxKt.a(BackgroundKt.b(SizeKt.e(SizeKt.d(fVar, 0.0f, 1, null), fG), j11, null, 2, null), iVarG, 0);
            if (k.H()) {
                k.P();
            }
        }
        final androidx.compose.ui.f fVar2 = fVar;
        final float f12 = f11;
        final long j12 = j11;
        g2 g2VarJ = iVarG.j();
        if (g2VarJ != null) {
            g2VarJ.a(new Function2<i, Integer, Unit>() { // from class: androidx.compose.material3.DividerKt$Divider$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((i) obj, ((Number) obj2).intValue());
                    return Unit.f67061a;
                }

                public final void invoke(i iVar2, int i16) {
                    DividerKt.a(fVar2, f12, j12, iVar2, v1.a(i11 | 1), i12);
                }
            });
        }
    }
}
