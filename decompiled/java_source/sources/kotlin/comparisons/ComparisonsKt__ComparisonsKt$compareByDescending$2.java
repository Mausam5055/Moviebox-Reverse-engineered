package kotlin.comparisons;

import java.util.Comparator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 176)
public final class ComparisonsKt__ComparisonsKt$compareByDescending$2<T> implements Comparator {
    final /* synthetic */ Comparator<Object> $comparator;
    final /* synthetic */ Function1<T, Object> $selector;

    /* JADX WARN: Multi-variable type inference failed */
    public ComparisonsKt__ComparisonsKt$compareByDescending$2(Comparator<Object> comparator, Function1<? super T, Object> function1) {
        this.$comparator = comparator;
        this.$selector = function1;
    }

    @Override // java.util.Comparator
    public final int compare(T t11, T t12) {
        Comparator<Object> comparator = this.$comparator;
        Function1<T, Object> function1 = this.$selector;
        return comparator.compare(function1.invoke(t12), function1.invoke(t11));
    }
}
