package androidx.compose.material3.internal;

import androidx.compose.ui.layout.g0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Landroidx/compose/ui/layout/g0$a;", "", "invoke", "(Landroidx/compose/ui/layout/g0$a;)V", "<anonymous>"}, k = 3, mv = {1, 8, 0})
@SourceDebugExtension
public final class ExposedDropdownMenuPopup_androidKt$SimpleStack$1$3 extends Lambda implements Function1<g0.a, Unit> {
    final /* synthetic */ List<g0> $placeables;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ExposedDropdownMenuPopup_androidKt$SimpleStack$1$3(List<? extends g0> list) {
        super(1);
        this.$placeables = list;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke((g0.a) obj);
        return Unit.f67061a;
    }

    public final void invoke(g0.a aVar) {
        int iN = CollectionsKt.n(this.$placeables);
        if (iN < 0) {
            return;
        }
        int i11 = 0;
        while (true) {
            g0.a.l(aVar, this.$placeables.get(i11), 0, 0, 0.0f, 4, null);
            if (i11 == iN) {
                return;
            } else {
                i11++;
            }
        }
    }
}
