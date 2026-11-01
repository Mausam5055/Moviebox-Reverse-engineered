package androidx.compose.foundation;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000*\u00020\u0000H\u000b¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Landroidx/compose/ui/f;", "invoke", "(Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)Landroidx/compose/ui/f;", "<anonymous>"}, k = 3, mv = {1, 8, 0})
@SourceDebugExtension
public final class ClickableKt$clickableWithIndicationIfNeeded$1 extends Lambda implements Function3<androidx.compose.ui.f, androidx.compose.runtime.i, Integer, androidx.compose.ui.f> {
    final /* synthetic */ Function2<p.i, b0, androidx.compose.ui.f> $createClickable;
    final /* synthetic */ x $indication;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ClickableKt$clickableWithIndicationIfNeeded$1(x xVar, Function2<? super p.i, ? super b0, ? extends androidx.compose.ui.f> function2) {
        super(3);
        this.$indication = xVar;
        this.$createClickable = function2;
    }

    public final androidx.compose.ui.f invoke(androidx.compose.ui.f fVar, androidx.compose.runtime.i iVar, int i11) {
        iVar.P(-1525724089);
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(-1525724089, i11, -1, "androidx.compose.foundation.clickableWithIndicationIfNeeded.<anonymous> (Clickable.kt:375)");
        }
        Object objY = iVar.y();
        if (objY == androidx.compose.runtime.i.f3736a.a()) {
            objY = p.h.a();
            iVar.p(objY);
        }
        p.i iVar2 = (p.i) objY;
        androidx.compose.ui.f fVarE = IndicationKt.b(androidx.compose.ui.f.f4178a, iVar2, this.$indication).e((androidx.compose.ui.f) this.$createClickable.invoke(iVar2, null));
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        iVar.K();
        return fVarE;
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
        return invoke((androidx.compose.ui.f) obj, (androidx.compose.runtime.i) obj2, ((Number) obj3).intValue());
    }
}
