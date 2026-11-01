package kotlin.collections;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes7.dex */
public class n extends m {
    public static List T(List list) {
        Intrinsics.h(list, "<this>");
        return new ReversedListReadOnly(list);
    }

    public static List U(List list) {
        Intrinsics.h(list, "<this>");
        return new ReversedList(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int V(List list, int i11) {
        if (i11 >= 0 && i11 <= CollectionsKt.n(list)) {
            return CollectionsKt.n(list) - i11;
        }
        throw new IndexOutOfBoundsException("Element index " + i11 + " must be in range [" + new IntRange(0, CollectionsKt.n(list)) + "].");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int W(List list, int i11) {
        return CollectionsKt.n(list) - i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int X(List list, int i11) {
        if (i11 >= 0 && i11 <= list.size()) {
            return list.size() - i11;
        }
        throw new IndexOutOfBoundsException("Position index " + i11 + " must be in range [" + new IntRange(0, list.size()) + "].");
    }
}
