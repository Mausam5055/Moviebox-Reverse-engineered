package kotlin.text;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.AbstractCollection;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.sequences.SequencesKt;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010(\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007*\u0001\u0000\b\n\u0018\u00002\u00020\u00012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0018\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0007H\u0096\u0002¢\u0006\u0004\b\b\u0010\tJ\u001a\u0010\f\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u000b\u001a\u00020\nH\u0096\u0002¢\u0006\u0004\b\f\u0010\rR\u0014\u0010\u0010\u001a\u00020\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"kotlin/text/MatcherMatchResult$groups$1", "Lkotlin/text/MatchNamedGroupCollection;", "Lkotlin/collections/AbstractCollection;", "Lkotlin/text/MatchGroup;", "", "isEmpty", "()Z", "", "iterator", "()Ljava/util/Iterator;", "", "index", "get", "(I)Lkotlin/text/MatchGroup;", "getSize", "()I", "size", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MatcherMatchResult$groups$1 extends AbstractCollection<MatchGroup> implements MatchNamedGroupCollection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ MatcherMatchResult f67551a;

    MatcherMatchResult$groups$1(MatcherMatchResult matcherMatchResult) {
        this.f67551a = matcherMatchResult;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MatchGroup h(MatcherMatchResult$groups$1 matcherMatchResult$groups$1, int i11) {
        return matcherMatchResult$groups$1.get(i11);
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj == null ? true : obj instanceof MatchGroup) {
            return f((MatchGroup) obj);
        }
        return false;
    }

    public /* bridge */ boolean f(MatchGroup matchGroup) {
        return super.contains(matchGroup);
    }

    @Override // kotlin.text.MatchGroupCollection
    public MatchGroup get(int index) {
        IntRange intRangeI = RegexKt.i(this.f67551a.e(), index);
        if (intRangeI.q().intValue() < 0) {
            return null;
        }
        String strGroup = this.f67551a.e().group(index);
        Intrinsics.g(strGroup, "group(...)");
        return new MatchGroup(strGroup, intRangeI);
    }

    @Override // kotlin.collections.AbstractCollection
    /* JADX INFO: renamed from: getSize */
    public int get_size() {
        return this.f67551a.e().groupCount() + 1;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return false;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return SequencesKt.y(CollectionsKt.Z(CollectionsKt.m(this)), new Function1() { // from class: kotlin.text.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MatcherMatchResult$groups$1.h(this.f67566a, ((Integer) obj).intValue());
            }
        }).getF67431a();
    }
}
