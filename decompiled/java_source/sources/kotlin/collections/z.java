package kotlin.collections;

import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes7.dex */
public class z extends y {
    public static Set k(Set set, Object obj) {
        Intrinsics.h(set, "<this>");
        LinkedHashSet linkedHashSet = new LinkedHashSet(MapsKt.e(set.size()));
        boolean z10 = false;
        for (Object obj2 : set) {
            boolean z11 = true;
            if (!z10 && Intrinsics.c(obj2, obj)) {
                z10 = true;
                z11 = false;
            }
            if (z11) {
                linkedHashSet.add(obj2);
            }
        }
        return linkedHashSet;
    }

    public static Set l(Set set, Iterable elements) {
        int size;
        Intrinsics.h(set, "<this>");
        Intrinsics.h(elements, "elements");
        Integer numW = j.w(elements);
        if (numW != null) {
            size = set.size() + numW.intValue();
        } else {
            size = set.size() * 2;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(MapsKt.e(size));
        linkedHashSet.addAll(set);
        CollectionsKt.B(linkedHashSet, elements);
        return linkedHashSet;
    }
}
