package kotlin.collections;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes7.dex */
public class l extends k {
    public static void A(List list, Comparator comparator) {
        Intrinsics.h(list, "<this>");
        Intrinsics.h(comparator, "comparator");
        if (list.size() > 1) {
            Collections.sort(list, comparator);
        }
    }

    public static void z(List list) {
        Intrinsics.h(list, "<this>");
        if (list.size() > 1) {
            Collections.sort(list);
        }
    }
}
