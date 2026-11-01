package kotlin.sequences;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.sequences.SequencesKt___SequencesKt$minus$1;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\b\u0003\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"kotlin/sequences/SequencesKt___SequencesKt$minus$1", "Lkotlin/sequences/Sequence;", "", "iterator", "()Ljava/util/Iterator;", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SequencesKt___SequencesKt$minus$1 implements Sequence<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Sequence f67434a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ Object f67435b;

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean d(Ref.BooleanRef booleanRef, Object obj, Object obj2) {
        if (booleanRef.element || !Intrinsics.c(obj2, obj)) {
            return true;
        }
        booleanRef.element = true;
        return false;
    }

    @Override // kotlin.sequences.Sequence
    /* JADX INFO: renamed from: iterator */
    public Iterator getF67431a() {
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        Sequence sequence = this.f67434a;
        final Object obj = this.f67435b;
        return SequencesKt.p(sequence, new Function1() { // from class: xz.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj2) {
                return Boolean.valueOf(SequencesKt___SequencesKt$minus$1.d(booleanRef, obj, obj2));
            }
        }).getF67431a();
    }
}
