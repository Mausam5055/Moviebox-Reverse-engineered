package androidx.compose.foundation;

import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.ClosedFloatingPointRange;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class ProgressSemanticsKt {
    public static final androidx.compose.ui.f a(androidx.compose.ui.f fVar, final float f11, final ClosedFloatingPointRange closedFloatingPointRange, final int i11) {
        return androidx.compose.ui.semantics.k.b(fVar, true, new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ProgressSemanticsKt$progressSemantics$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((androidx.compose.ui.semantics.n) obj);
                return Unit.f67061a;
            }

            public final void invoke(androidx.compose.ui.semantics.n nVar) {
                SemanticsPropertiesKt.A(nVar, new androidx.compose.ui.semantics.e(((Number) RangesKt.o(Float.valueOf(f11), closedFloatingPointRange)).floatValue(), closedFloatingPointRange, i11));
            }
        });
    }
}
