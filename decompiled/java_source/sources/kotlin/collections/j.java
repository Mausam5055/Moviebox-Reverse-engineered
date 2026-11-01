package kotlin.collections;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes7.dex */
public class j extends i {
    public static int v(Iterable iterable, int i11) {
        Intrinsics.h(iterable, "<this>");
        return iterable instanceof Collection ? ((Collection) iterable).size() : i11;
    }

    public static final Integer w(Iterable iterable) {
        Intrinsics.h(iterable, "<this>");
        if (iterable instanceof Collection) {
            return Integer.valueOf(((Collection) iterable).size());
        }
        return null;
    }

    public static List x(Iterable iterable) {
        Intrinsics.h(iterable, "<this>");
        ArrayList arrayList = new ArrayList();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            CollectionsKt.B(arrayList, (Iterable) it.next());
        }
        return arrayList;
    }
}
