package kotlin.collections;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes7.dex */
public class i extends h {
    public static ArrayList h(Object... elements) {
        Intrinsics.h(elements, "elements");
        return elements.length == 0 ? new ArrayList() : new ArrayList(new c(elements, true));
    }

    public static final Collection i(Object[] objArr) {
        Intrinsics.h(objArr, "<this>");
        return new c(objArr, false);
    }

    public static final int j(List list, Comparable comparable, int i11, int i12) {
        Intrinsics.h(list, "<this>");
        s(list.size(), i11, i12);
        int i13 = i12 - 1;
        while (i11 <= i13) {
            int i14 = (i11 + i13) >>> 1;
            int iD = ComparisonsKt.d((Comparable) list.get(i14), comparable);
            if (iD < 0) {
                i11 = i14 + 1;
            } else {
                if (iD <= 0) {
                    return i14;
                }
                i13 = i14 - 1;
            }
        }
        return -(i11 + 1);
    }

    public static /* synthetic */ int k(List list, Comparable comparable, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i11 = 0;
        }
        if ((i13 & 4) != 0) {
            i12 = list.size();
        }
        return j(list, comparable, i11, i12);
    }

    public static List l() {
        return EmptyList.INSTANCE;
    }

    public static IntRange m(Collection collection) {
        Intrinsics.h(collection, "<this>");
        return new IntRange(0, collection.size() - 1);
    }

    public static int n(List list) {
        Intrinsics.h(list, "<this>");
        return list.size() - 1;
    }

    public static List o(Object... elements) {
        Intrinsics.h(elements, "elements");
        return elements.length > 0 ? ArraysKt.i(elements) : CollectionsKt.l();
    }

    public static List p(Object... elements) {
        Intrinsics.h(elements, "elements");
        return ArraysKt.S(elements);
    }

    public static List q(Object... elements) {
        Intrinsics.h(elements, "elements");
        return elements.length == 0 ? new ArrayList() : new ArrayList(new c(elements, true));
    }

    public static final List r(List list) {
        Intrinsics.h(list, "<this>");
        int size = list.size();
        if (size != 0) {
            return size != 1 ? list : CollectionsKt.e(list.get(0));
        }
        return CollectionsKt.l();
    }

    private static final void s(int i11, int i12, int i13) {
        if (i12 > i13) {
            throw new IllegalArgumentException("fromIndex (" + i12 + ") is greater than toIndex (" + i13 + ").");
        }
        if (i12 < 0) {
            throw new IndexOutOfBoundsException("fromIndex (" + i12 + ") is less than zero.");
        }
        if (i13 <= i11) {
            return;
        }
        throw new IndexOutOfBoundsException("toIndex (" + i13 + ") is greater than size (" + i11 + ").");
    }

    public static void t() {
        throw new ArithmeticException("Count overflow has happened.");
    }

    public static void u() {
        throw new ArithmeticException("Index overflow has happened.");
    }
}
