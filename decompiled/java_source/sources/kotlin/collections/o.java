package kotlin.collections;

import java.util.Collections;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes7.dex */
public class o extends n {
    public static void Y(List list) {
        Intrinsics.h(list, "<this>");
        Collections.reverse(list);
    }
}
