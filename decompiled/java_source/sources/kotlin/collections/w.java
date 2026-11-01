package kotlin.collections;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes7.dex */
public class w extends v {
    public static Sequence x(Map map) {
        Intrinsics.h(map, "<this>");
        return CollectionsKt.Z(map.entrySet());
    }
}
