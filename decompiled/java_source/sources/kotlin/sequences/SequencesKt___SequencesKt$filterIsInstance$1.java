package kotlin.sequences;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 176)
public final class SequencesKt___SequencesKt$filterIsInstance$1 implements Function1<Object, Boolean> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SequencesKt___SequencesKt$filterIsInstance$1 f67433a = new SequencesKt___SequencesKt$filterIsInstance$1();

    @Override // kotlin.jvm.functions.Function1
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Boolean invoke(Object obj) {
        Intrinsics.n(3, "R");
        return Boolean.valueOf(obj instanceof Object);
    }
}
