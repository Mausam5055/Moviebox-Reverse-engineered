package kotlin.collections;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes7.dex */
public class h {
    public static List a(List builder) {
        Intrinsics.h(builder, "builder");
        return ((ListBuilder) builder).build();
    }

    public static final Object[] b(Object[] objArr, boolean z10) {
        Intrinsics.h(objArr, "<this>");
        if (z10 && Intrinsics.c(objArr.getClass(), Object[].class)) {
            return objArr;
        }
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length, Object[].class);
        Intrinsics.g(objArrCopyOf, "copyOf(...)");
        return objArrCopyOf;
    }

    public static List c() {
        return new ListBuilder(0, 1, null);
    }

    public static List d(int i11) {
        return new ListBuilder(i11);
    }

    public static List e(Object obj) {
        List listSingletonList = Collections.singletonList(obj);
        Intrinsics.g(listSingletonList, "singletonList(...)");
        return listSingletonList;
    }

    public static List f(Iterable iterable) {
        Intrinsics.h(iterable, "<this>");
        List listT0 = CollectionsKt___CollectionsKt.T0(iterable);
        Collections.shuffle(listT0);
        return listT0;
    }

    public static Object[] g(int i11, Object[] array) {
        Intrinsics.h(array, "array");
        if (i11 < array.length) {
            array[i11] = null;
        }
        return array;
    }
}
