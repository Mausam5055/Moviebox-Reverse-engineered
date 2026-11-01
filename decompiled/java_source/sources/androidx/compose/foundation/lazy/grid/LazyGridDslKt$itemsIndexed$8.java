package androidx.compose.foundation.lazy.grid;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0007\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"T", "Landroidx/compose/foundation/lazy/grid/c;", "", "it", "Landroidx/compose/foundation/lazy/grid/a;", "invoke-_-orMbw", "(Landroidx/compose/foundation/lazy/grid/c;I)J", "<anonymous>"}, k = 3, mv = {1, 8, 0})
@SourceDebugExtension
public final class LazyGridDslKt$itemsIndexed$8 extends Lambda implements Function2<c, Integer, a> {
    final /* synthetic */ Object[] $items;
    final /* synthetic */ Function3<c, Integer, Object, a> $span;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public LazyGridDslKt$itemsIndexed$8(Function3<? super c, ? super Integer, Object, a> function3, Object[] objArr) {
        super(2);
        this.$span = function3;
        this.$items = objArr;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        android.support.v4.media.session.c.a(obj);
        return a.a(m46invoke_orMbw(null, ((Number) obj2).intValue()));
    }

    /* JADX INFO: renamed from: invoke-_-orMbw, reason: not valid java name */
    public final long m46invoke_orMbw(c cVar, int i11) {
        return ((a) this.$span.invoke(cVar, Integer.valueOf(i11), this.$items[i11])).e();
    }
}
