package kotlin.comparisons;

import java.util.Comparator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 176)
public final class ComparisonsKt__ComparisonsKt$thenComparator$1<T> implements Comparator {
    final /* synthetic */ Function2<T, T, Integer> $comparison;
    final /* synthetic */ Comparator<T> $this_thenComparator;

    /* JADX WARN: Multi-variable type inference failed */
    public ComparisonsKt__ComparisonsKt$thenComparator$1(Comparator<T> comparator, Function2<? super T, ? super T, Integer> function2) {
        this.$this_thenComparator = comparator;
        this.$comparison = function2;
    }

    @Override // java.util.Comparator
    public final int compare(T t11, T t12) {
        int iCompare = this.$this_thenComparator.compare(t11, t12);
        return iCompare != 0 ? iCompare : ((Number) this.$comparison.invoke(t11, t12)).intValue();
    }
}
