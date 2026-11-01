package kotlin.collections;

import kotlin.Metadata;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 176)
public final class CollectionsKt__CollectionsKt$binarySearchBy$1 implements Function1<Object, Integer> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Function1 f67115a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ Comparable f67116b;

    @Override // kotlin.jvm.functions.Function1
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Integer invoke(Object obj) {
        return Integer.valueOf(ComparisonsKt.d((Comparable) this.f67115a.invoke(obj), this.f67116b));
    }
}
