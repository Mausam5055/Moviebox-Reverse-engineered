package kotlin.collections;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import java.util.Set;
import kotlin.TuplesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.sequences.Sequence;
import kotlin.text.StringsKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public class CollectionsKt___CollectionsKt extends o {
    public static List A0(Iterable iterable, Iterable elements) {
        Intrinsics.h(iterable, "<this>");
        Intrinsics.h(elements, "elements");
        if (iterable instanceof Collection) {
            return CollectionsKt.B0((Collection) iterable, elements);
        }
        ArrayList arrayList = new ArrayList();
        CollectionsKt.B(arrayList, iterable);
        CollectionsKt.B(arrayList, elements);
        return arrayList;
    }

    public static List B0(Collection collection, Iterable elements) {
        Intrinsics.h(collection, "<this>");
        Intrinsics.h(elements, "elements");
        if (!(elements instanceof Collection)) {
            ArrayList arrayList = new ArrayList(collection);
            CollectionsKt.B(arrayList, elements);
            return arrayList;
        }
        Collection collection2 = (Collection) elements;
        ArrayList arrayList2 = new ArrayList(collection.size() + collection2.size());
        arrayList2.addAll(collection);
        arrayList2.addAll(collection2);
        return arrayList2;
    }

    public static List C0(Collection collection, Object obj) {
        Intrinsics.h(collection, "<this>");
        ArrayList arrayList = new ArrayList(collection.size() + 1);
        arrayList.addAll(collection);
        arrayList.add(obj);
        return arrayList;
    }

    public static List D0(Iterable iterable) {
        Intrinsics.h(iterable, "<this>");
        if ((iterable instanceof Collection) && ((Collection) iterable).size() <= 1) {
            return CollectionsKt.R0(iterable);
        }
        List listT0 = T0(iterable);
        CollectionsKt.Y(listT0);
        return listT0;
    }

    public static Object E0(Iterable iterable) {
        Intrinsics.h(iterable, "<this>");
        if (iterable instanceof List) {
            return F0((List) iterable);
        }
        Iterator it = iterable.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException("Collection is empty.");
        }
        Object next = it.next();
        if (it.hasNext()) {
            throw new IllegalArgumentException("Collection has more than one element.");
        }
        return next;
    }

    public static final Object F0(List list) {
        Intrinsics.h(list, "<this>");
        int size = list.size();
        if (size == 0) {
            throw new NoSuchElementException("List is empty.");
        }
        if (size == 1) {
            return list.get(0);
        }
        throw new IllegalArgumentException("List has more than one element.");
    }

    public static Object G0(List list) {
        Intrinsics.h(list, "<this>");
        if (list.size() == 1) {
            return list.get(0);
        }
        return null;
    }

    public static List H0(Iterable iterable) {
        Intrinsics.h(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            List listT0 = T0(iterable);
            CollectionsKt.z(listT0);
            return listT0;
        }
        Collection collection = (Collection) iterable;
        if (collection.size() <= 1) {
            return CollectionsKt.R0(iterable);
        }
        Object[] array = collection.toArray(new Comparable[0]);
        ArraysKt.F((Comparable[]) array);
        return ArraysKt.i(array);
    }

    public static List I0(Iterable iterable, Comparator comparator) {
        Intrinsics.h(iterable, "<this>");
        Intrinsics.h(comparator, "comparator");
        if (!(iterable instanceof Collection)) {
            List listT0 = T0(iterable);
            CollectionsKt.A(listT0, comparator);
            return listT0;
        }
        Collection collection = (Collection) iterable;
        if (collection.size() <= 1) {
            return CollectionsKt.R0(iterable);
        }
        Object[] array = collection.toArray(new Object[0]);
        ArraysKt___ArraysJvmKt.G(array, comparator);
        return ArraysKt.i(array);
    }

    public static Set J0(Iterable iterable, Iterable other) {
        Intrinsics.h(iterable, "<this>");
        Intrinsics.h(other, "other");
        Set setV0 = CollectionsKt.V0(iterable);
        m.H(setV0, other);
        return setV0;
    }

    public static List K0(Iterable iterable, int i11) {
        Intrinsics.h(iterable, "<this>");
        if (i11 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i11 + " is less than zero.").toString());
        }
        if (i11 == 0) {
            return CollectionsKt.l();
        }
        if (iterable instanceof Collection) {
            if (i11 >= ((Collection) iterable).size()) {
                return CollectionsKt.R0(iterable);
            }
            if (i11 == 1) {
                return CollectionsKt.e(CollectionsKt.h0(iterable));
            }
        }
        ArrayList arrayList = new ArrayList(i11);
        Iterator it = iterable.iterator();
        int i12 = 0;
        while (it.hasNext()) {
            arrayList.add(it.next());
            i12++;
            if (i12 == i11) {
                break;
            }
        }
        return i.r(arrayList);
    }

    public static List L0(List list, int i11) {
        Intrinsics.h(list, "<this>");
        if (i11 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i11 + " is less than zero.").toString());
        }
        if (i11 == 0) {
            return CollectionsKt.l();
        }
        int size = list.size();
        if (i11 >= size) {
            return CollectionsKt.R0(list);
        }
        if (i11 == 1) {
            return CollectionsKt.e(CollectionsKt.u0(list));
        }
        ArrayList arrayList = new ArrayList(i11);
        if (list instanceof RandomAccess) {
            for (int i12 = size - i11; i12 < size; i12++) {
                arrayList.add(list.get(i12));
            }
        } else {
            ListIterator listIterator = list.listIterator(size - i11);
            while (listIterator.hasNext()) {
                arrayList.add(listIterator.next());
            }
        }
        return arrayList;
    }

    public static boolean[] M0(Collection collection) {
        Intrinsics.h(collection, "<this>");
        boolean[] zArr = new boolean[collection.size()];
        Iterator it = collection.iterator();
        int i11 = 0;
        while (it.hasNext()) {
            zArr[i11] = ((Boolean) it.next()).booleanValue();
            i11++;
        }
        return zArr;
    }

    public static byte[] N0(Collection collection) {
        Intrinsics.h(collection, "<this>");
        byte[] bArr = new byte[collection.size()];
        Iterator it = collection.iterator();
        int i11 = 0;
        while (it.hasNext()) {
            bArr[i11] = ((Number) it.next()).byteValue();
            i11++;
        }
        return bArr;
    }

    public static final Collection O0(Iterable iterable, Collection destination) {
        Intrinsics.h(iterable, "<this>");
        Intrinsics.h(destination, "destination");
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            destination.add(it.next());
        }
        return destination;
    }

    public static HashSet P0(Iterable iterable) {
        Intrinsics.h(iterable, "<this>");
        return (HashSet) O0(iterable, new HashSet(MapsKt.e(CollectionsKt.v(iterable, 12))));
    }

    public static int[] Q0(Collection collection) {
        Intrinsics.h(collection, "<this>");
        int[] iArr = new int[collection.size()];
        Iterator it = collection.iterator();
        int i11 = 0;
        while (it.hasNext()) {
            iArr[i11] = ((Number) it.next()).intValue();
            i11++;
        }
        return iArr;
    }

    public static List R0(Iterable iterable) {
        Intrinsics.h(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            return i.r(T0(iterable));
        }
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            return CollectionsKt.l();
        }
        if (size != 1) {
            return CollectionsKt.U0(collection);
        }
        return CollectionsKt.e(iterable instanceof List ? ((List) iterable).get(0) : collection.iterator().next());
    }

    public static long[] S0(Collection collection) {
        Intrinsics.h(collection, "<this>");
        long[] jArr = new long[collection.size()];
        Iterator it = collection.iterator();
        int i11 = 0;
        while (it.hasNext()) {
            jArr[i11] = ((Number) it.next()).longValue();
            i11++;
        }
        return jArr;
    }

    public static final List T0(Iterable iterable) {
        Intrinsics.h(iterable, "<this>");
        return iterable instanceof Collection ? CollectionsKt.U0((Collection) iterable) : (List) O0(iterable, new ArrayList());
    }

    public static List U0(Collection collection) {
        Intrinsics.h(collection, "<this>");
        return new ArrayList(collection);
    }

    public static Set V0(Iterable iterable) {
        Intrinsics.h(iterable, "<this>");
        return iterable instanceof Collection ? new LinkedHashSet((Collection) iterable) : (Set) O0(iterable, new LinkedHashSet());
    }

    public static Set W0(Iterable iterable) {
        Intrinsics.h(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            return y.i((Set) O0(iterable, new LinkedHashSet()));
        }
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            return SetsKt.f();
        }
        if (size != 1) {
            return (Set) O0(iterable, new LinkedHashSet(MapsKt.e(collection.size())));
        }
        return SetsKt.d(iterable instanceof List ? ((List) iterable).get(0) : collection.iterator().next());
    }

    public static Set X0(Iterable iterable, Iterable other) {
        Intrinsics.h(iterable, "<this>");
        Intrinsics.h(other, "other");
        Set setV0 = CollectionsKt.V0(iterable);
        CollectionsKt.B(setV0, other);
        return setV0;
    }

    public static final List Y0(Iterable iterable, int i11, int i12, boolean z10) {
        Intrinsics.h(iterable, "<this>");
        SlidingWindowKt.a(i11, i12);
        if (!(iterable instanceof RandomAccess) || !(iterable instanceof List)) {
            ArrayList arrayList = new ArrayList();
            Iterator itB = SlidingWindowKt.b(iterable.iterator(), i11, i12, z10, false);
            while (itB.hasNext()) {
                arrayList.add((List) itB.next());
            }
            return arrayList;
        }
        List list = (List) iterable;
        int size = list.size();
        ArrayList arrayList2 = new ArrayList((size / i12) + (size % i12 == 0 ? 0 : 1));
        int i13 = 0;
        while (i13 >= 0 && i13 < size) {
            int i14 = RangesKt.i(i11, size - i13);
            if (i14 < i11 && !z10) {
                break;
            }
            ArrayList arrayList3 = new ArrayList(i14);
            for (int i15 = 0; i15 < i14; i15++) {
                arrayList3.add(list.get(i15 + i13));
            }
            arrayList2.add(arrayList3);
            i13 += i12;
        }
        return arrayList2;
    }

    public static Sequence Z(final Iterable iterable) {
        Intrinsics.h(iterable, "<this>");
        return new Sequence<Object>() { // from class: kotlin.collections.CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1
            @Override // kotlin.sequences.Sequence
            /* JADX INFO: renamed from: iterator */
            public Iterator getF67431a() {
                return iterable.iterator();
            }
        };
    }

    public static List Z0(Iterable iterable, Iterable other) {
        Intrinsics.h(iterable, "<this>");
        Intrinsics.h(other, "other");
        Iterator it = iterable.iterator();
        Iterator it2 = other.iterator();
        ArrayList arrayList = new ArrayList(Math.min(CollectionsKt.v(iterable, 10), CollectionsKt.v(other, 10)));
        while (it.hasNext() && it2.hasNext()) {
            arrayList.add(TuplesKt.a(it.next(), it2.next()));
        }
        return arrayList;
    }

    public static List a0(Iterable iterable, int i11) {
        Intrinsics.h(iterable, "<this>");
        return Y0(iterable, i11, i11, true);
    }

    public static List a1(Iterable iterable) {
        Intrinsics.h(iterable, "<this>");
        Iterator it = iterable.iterator();
        if (!it.hasNext()) {
            return CollectionsKt.l();
        }
        ArrayList arrayList = new ArrayList();
        Object next = it.next();
        while (it.hasNext()) {
            Object next2 = it.next();
            arrayList.add(TuplesKt.a(next, next2));
            next = next2;
        }
        return arrayList;
    }

    public static boolean b0(Iterable iterable, Object obj) {
        Intrinsics.h(iterable, "<this>");
        if (iterable instanceof Collection) {
            return ((Collection) iterable).contains(obj);
        }
        return m0(iterable, obj) >= 0;
    }

    public static List c0(Iterable iterable) {
        Intrinsics.h(iterable, "<this>");
        return CollectionsKt.R0(CollectionsKt.V0(iterable));
    }

    public static List d0(Iterable iterable, int i11) {
        ArrayList arrayList;
        Intrinsics.h(iterable, "<this>");
        if (i11 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i11 + " is less than zero.").toString());
        }
        if (i11 == 0) {
            return CollectionsKt.R0(iterable);
        }
        if (iterable instanceof Collection) {
            int size = ((Collection) iterable).size() - i11;
            if (size <= 0) {
                return CollectionsKt.l();
            }
            if (size == 1) {
                return CollectionsKt.e(CollectionsKt.t0(iterable));
            }
            arrayList = new ArrayList(size);
            if (iterable instanceof List) {
                if (iterable instanceof RandomAccess) {
                    List list = (List) iterable;
                    int size2 = list.size();
                    while (i11 < size2) {
                        arrayList.add(list.get(i11));
                        i11++;
                    }
                } else {
                    ListIterator listIterator = ((List) iterable).listIterator(i11);
                    while (listIterator.hasNext()) {
                        arrayList.add(listIterator.next());
                    }
                }
                return arrayList;
            }
        } else {
            arrayList = new ArrayList();
        }
        int i12 = 0;
        for (Object obj : iterable) {
            if (i12 >= i11) {
                arrayList.add(obj);
            } else {
                i12++;
            }
        }
        return i.r(arrayList);
    }

    public static List e0(List list, int i11) {
        Intrinsics.h(list, "<this>");
        if (i11 >= 0) {
            return CollectionsKt.K0(list, RangesKt.f(list.size() - i11, 0));
        }
        throw new IllegalArgumentException(("Requested element count " + i11 + " is less than zero.").toString());
    }

    public static List f0(Iterable iterable) {
        Intrinsics.h(iterable, "<this>");
        return (List) g0(iterable, new ArrayList());
    }

    public static final Collection g0(Iterable iterable, Collection destination) {
        Intrinsics.h(iterable, "<this>");
        Intrinsics.h(destination, "destination");
        for (Object obj : iterable) {
            if (obj != null) {
                destination.add(obj);
            }
        }
        return destination;
    }

    public static Object h0(Iterable iterable) {
        Intrinsics.h(iterable, "<this>");
        if (iterable instanceof List) {
            return CollectionsKt.i0((List) iterable);
        }
        Iterator it = iterable.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        throw new NoSuchElementException("Collection is empty.");
    }

    public static Object i0(List list) {
        Intrinsics.h(list, "<this>");
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.get(0);
    }

    public static Object j0(Iterable iterable) {
        Intrinsics.h(iterable, "<this>");
        if (iterable instanceof List) {
            List list = (List) iterable;
            if (list.isEmpty()) {
                return null;
            }
            return list.get(0);
        }
        Iterator it = iterable.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        return null;
    }

    public static Object k0(List list) {
        Intrinsics.h(list, "<this>");
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public static Object l0(List list, int i11) {
        Intrinsics.h(list, "<this>");
        if (i11 < 0 || i11 >= list.size()) {
            return null;
        }
        return list.get(i11);
    }

    public static final int m0(Iterable iterable, Object obj) {
        Intrinsics.h(iterable, "<this>");
        if (iterable instanceof List) {
            return ((List) iterable).indexOf(obj);
        }
        int i11 = 0;
        for (Object obj2 : iterable) {
            if (i11 < 0) {
                CollectionsKt.u();
            }
            if (Intrinsics.c(obj, obj2)) {
                return i11;
            }
            i11++;
        }
        return -1;
    }

    public static int n0(List list, Object obj) {
        Intrinsics.h(list, "<this>");
        return list.indexOf(obj);
    }

    public static Set o0(Iterable iterable, Iterable other) {
        Intrinsics.h(iterable, "<this>");
        Intrinsics.h(other, "other");
        Set setV0 = CollectionsKt.V0(iterable);
        m.O(setV0, other);
        return setV0;
    }

    public static final Appendable p0(Iterable iterable, Appendable buffer, CharSequence separator, CharSequence prefix, CharSequence postfix, int i11, CharSequence truncated, Function1 function1) throws IOException {
        Intrinsics.h(iterable, "<this>");
        Intrinsics.h(buffer, "buffer");
        Intrinsics.h(separator, "separator");
        Intrinsics.h(prefix, "prefix");
        Intrinsics.h(postfix, "postfix");
        Intrinsics.h(truncated, "truncated");
        buffer.append(prefix);
        int i12 = 0;
        for (Object obj : iterable) {
            i12++;
            if (i12 > 1) {
                buffer.append(separator);
            }
            if (i11 >= 0 && i12 > i11) {
                break;
            }
            StringsKt.a(buffer, obj, function1);
        }
        if (i11 >= 0 && i12 > i11) {
            buffer.append(truncated);
        }
        buffer.append(postfix);
        return buffer;
    }

    public static final String r0(Iterable iterable, CharSequence separator, CharSequence prefix, CharSequence postfix, int i11, CharSequence truncated, Function1 function1) {
        Intrinsics.h(iterable, "<this>");
        Intrinsics.h(separator, "separator");
        Intrinsics.h(prefix, "prefix");
        Intrinsics.h(postfix, "postfix");
        Intrinsics.h(truncated, "truncated");
        return ((StringBuilder) p0(iterable, new StringBuilder(), separator, prefix, postfix, i11, truncated, function1)).toString();
    }

    public static /* synthetic */ String s0(Iterable iterable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i11, CharSequence charSequence4, Function1 function1, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence5 = (i12 & 2) != 0 ? "" : charSequence2;
        CharSequence charSequence6 = (i12 & 4) == 0 ? charSequence3 : "";
        if ((i12 & 8) != 0) {
            i11 = -1;
        }
        int i13 = i11;
        if ((i12 & 16) != 0) {
            charSequence4 = "...";
        }
        CharSequence charSequence7 = charSequence4;
        if ((i12 & 32) != 0) {
            function1 = null;
        }
        return r0(iterable, charSequence, charSequence5, charSequence6, i13, charSequence7, function1);
    }

    public static Object t0(Iterable iterable) {
        Intrinsics.h(iterable, "<this>");
        if (iterable instanceof List) {
            return CollectionsKt.u0((List) iterable);
        }
        Iterator it = iterable.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException("Collection is empty.");
        }
        Object next = it.next();
        while (it.hasNext()) {
            next = it.next();
        }
        return next;
    }

    public static Object u0(List list) {
        Intrinsics.h(list, "<this>");
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.get(CollectionsKt.n(list));
    }

    public static Object v0(List list) {
        Intrinsics.h(list, "<this>");
        if (list.isEmpty()) {
            return null;
        }
        return list.get(list.size() - 1);
    }

    public static Comparable w0(Iterable iterable) {
        Intrinsics.h(iterable, "<this>");
        Iterator it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        Comparable comparable = (Comparable) it.next();
        while (it.hasNext()) {
            Comparable comparable2 = (Comparable) it.next();
            if (comparable.compareTo(comparable2) < 0) {
                comparable = comparable2;
            }
        }
        return comparable;
    }

    public static Object x0(Iterable iterable, Comparator comparator) {
        Intrinsics.h(iterable, "<this>");
        Intrinsics.h(comparator, "comparator");
        Iterator it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        Object next = it.next();
        while (it.hasNext()) {
            Object next2 = it.next();
            if (comparator.compare(next, next2) < 0) {
                next = next2;
            }
        }
        return next;
    }

    public static Comparable y0(Iterable iterable) {
        Intrinsics.h(iterable, "<this>");
        Iterator it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        Comparable comparable = (Comparable) it.next();
        while (it.hasNext()) {
            Comparable comparable2 = (Comparable) it.next();
            if (comparable.compareTo(comparable2) > 0) {
                comparable = comparable2;
            }
        }
        return comparable;
    }

    public static List z0(Iterable iterable, Object obj) {
        Intrinsics.h(iterable, "<this>");
        ArrayList arrayList = new ArrayList(CollectionsKt.v(iterable, 10));
        boolean z10 = false;
        for (Object obj2 : iterable) {
            boolean z11 = true;
            if (!z10 && Intrinsics.c(obj2, obj)) {
                z10 = true;
                z11 = false;
            }
            if (z11) {
                arrayList.add(obj2);
            }
        }
        return arrayList;
    }
}
