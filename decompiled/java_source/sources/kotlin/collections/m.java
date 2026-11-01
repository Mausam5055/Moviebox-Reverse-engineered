package kotlin.collections;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes7.dex */
public class m extends l {
    public static boolean B(Collection collection, Iterable elements) {
        Intrinsics.h(collection, "<this>");
        Intrinsics.h(elements, "elements");
        if (elements instanceof Collection) {
            return collection.addAll((Collection) elements);
        }
        Iterator it = elements.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (collection.add(it.next())) {
                z10 = true;
            }
        }
        return z10;
    }

    public static boolean C(Collection collection, Object[] elements) {
        Intrinsics.h(collection, "<this>");
        Intrinsics.h(elements, "elements");
        return collection.addAll(ArraysKt.i(elements));
    }

    public static Collection D(Iterable iterable) {
        Intrinsics.h(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            iterable = CollectionsKt.R0(iterable);
        }
        return (Collection) iterable;
    }

    private static final boolean E(Iterable iterable, Function1 function1, boolean z10) {
        Iterator it = iterable.iterator();
        boolean z11 = false;
        while (it.hasNext()) {
            if (((Boolean) function1.invoke(it.next())).booleanValue() == z10) {
                it.remove();
                z11 = true;
            }
        }
        return z11;
    }

    private static final boolean F(List list, Function1 function1, boolean z10) {
        int i11;
        if (!(list instanceof RandomAccess)) {
            Intrinsics.f(list, "null cannot be cast to non-null type kotlin.collections.MutableIterable<T of kotlin.collections.CollectionsKt__MutableCollectionsKt.filterInPlace>");
            return E(TypeIntrinsics.b(list), function1, z10);
        }
        int iN = CollectionsKt.n(list);
        if (iN >= 0) {
            int i12 = 0;
            i11 = 0;
            while (true) {
                Object obj = list.get(i12);
                if (((Boolean) function1.invoke(obj)).booleanValue() != z10) {
                    if (i11 != i12) {
                        list.set(i11, obj);
                    }
                    i11++;
                }
                if (i12 == iN) {
                    break;
                }
                i12++;
            }
        } else {
            i11 = 0;
        }
        if (i11 >= list.size()) {
            return false;
        }
        int iN2 = CollectionsKt.n(list);
        if (i11 > iN2) {
            return true;
        }
        while (true) {
            list.remove(iN2);
            if (iN2 == i11) {
                return true;
            }
            iN2--;
        }
    }

    public static boolean G(Iterable iterable, Function1 predicate) {
        Intrinsics.h(iterable, "<this>");
        Intrinsics.h(predicate, "predicate");
        return E(iterable, predicate, true);
    }

    public static final boolean H(Collection collection, Iterable elements) {
        Intrinsics.h(collection, "<this>");
        Intrinsics.h(elements, "elements");
        return collection.removeAll(CollectionsKt.D(elements));
    }

    public static boolean I(List list, Function1 predicate) {
        Intrinsics.h(list, "<this>");
        Intrinsics.h(predicate, "predicate");
        return F(list, predicate, true);
    }

    public static Object J(List list) {
        Intrinsics.h(list, "<this>");
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.remove(0);
    }

    public static Object K(List list) {
        Intrinsics.h(list, "<this>");
        if (list.isEmpty()) {
            return null;
        }
        return list.remove(0);
    }

    public static Object L(List list) {
        Intrinsics.h(list, "<this>");
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.remove(CollectionsKt.n(list));
    }

    public static Object M(List list) {
        Intrinsics.h(list, "<this>");
        if (list.isEmpty()) {
            return null;
        }
        return list.remove(CollectionsKt.n(list));
    }

    public static boolean N(Iterable iterable, Function1 predicate) {
        Intrinsics.h(iterable, "<this>");
        Intrinsics.h(predicate, "predicate");
        return E(iterable, predicate, false);
    }

    public static final boolean O(Collection collection, Iterable elements) {
        Intrinsics.h(collection, "<this>");
        Intrinsics.h(elements, "elements");
        return collection.retainAll(CollectionsKt.D(elements));
    }

    public static boolean P(List list, Function1 predicate) {
        Intrinsics.h(list, "<this>");
        Intrinsics.h(predicate, "predicate");
        return F(list, predicate, false);
    }
}
