package androidx.compose.foundation.lazy.staggeredgrid;

import android.support.v4.media.session.c;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0006\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"T", "", "index", "Landroidx/compose/foundation/lazy/staggeredgrid/b;", "invoke", "(I)Landroidx/compose/foundation/lazy/staggeredgrid/b;", "<anonymous>"}, k = 3, mv = {1, 8, 0})
@SourceDebugExtension
public final class LazyStaggeredGridDslKt$itemsIndexed$4$1 extends Lambda implements Function1<Integer, b> {
    final /* synthetic */ List<Object> $items;
    final /* synthetic */ Function2<Integer, Object, b> $span;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public LazyStaggeredGridDslKt$itemsIndexed$4$1(Function2<? super Integer, Object, b> function2, List<Object> list) {
        super(1);
        this.$span = function2;
        this.$items = list;
    }

    public final b invoke(int i11) {
        c.a(this.$span.invoke(Integer.valueOf(i11), this.$items.get(i11)));
        return null;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke(((Number) obj).intValue());
        return null;
    }
}
