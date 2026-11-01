package androidx.compose.foundation.lazy.staggeredgrid;

import android.support.v4.media.session.c;
import androidx.compose.runtime.i;
import androidx.compose.runtime.k;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0007\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u000b¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"T", "Landroidx/compose/foundation/lazy/staggeredgrid/a;", "", "index", "", "invoke", "(Landroidx/compose/foundation/lazy/staggeredgrid/a;ILandroidx/compose/runtime/i;I)V", "<anonymous>"}, k = 3, mv = {1, 8, 0})
@SourceDebugExtension
public final class LazyStaggeredGridDslKt$itemsIndexed$5 extends Lambda implements Function4<a, Integer, i, Integer, Unit> {
    final /* synthetic */ Function5<a, Integer, Object, i, Integer, Unit> $itemContent;
    final /* synthetic */ List<Object> $items;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public LazyStaggeredGridDslKt$itemsIndexed$5(Function5<? super a, ? super Integer, Object, ? super i, ? super Integer, Unit> function5, List<Object> list) {
        super(4);
        this.$itemContent = function5;
        this.$items = list;
    }

    @Override // kotlin.jvm.functions.Function4
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        c.a(obj);
        invoke((a) null, ((Number) obj2).intValue(), (i) obj3, ((Number) obj4).intValue());
        return Unit.f67061a;
    }

    public final void invoke(a aVar, int i11, i iVar, int i12) {
        int i13;
        if ((i12 & 6) == 0) {
            i13 = (iVar.O(aVar) ? 4 : 2) | i12;
        } else {
            i13 = i12;
        }
        if ((i12 & 48) == 0) {
            i13 |= iVar.c(i11) ? 32 : 16;
        }
        if ((i13 & 147) == 146 && iVar.h()) {
            iVar.G();
            return;
        }
        if (k.H()) {
            k.Q(284833944, i13, -1, "androidx.compose.foundation.lazy.staggeredgrid.itemsIndexed.<anonymous> (LazyStaggeredGridDsl.kt:385)");
        }
        this.$itemContent.invoke(aVar, Integer.valueOf(i11), this.$items.get(i11), iVar, Integer.valueOf(i13 & 126));
        if (k.H()) {
            k.P();
        }
    }
}
