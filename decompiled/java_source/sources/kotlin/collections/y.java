package kotlin.collections;

import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes7.dex */
public class y extends x {
    public static Set f() {
        return EmptySet.INSTANCE;
    }

    public static HashSet g(Object... elements) {
        Intrinsics.h(elements, "elements");
        return (HashSet) ArraysKt___ArraysKt.G0(elements, new HashSet(MapsKt.e(elements.length)));
    }

    public static Set h(Object... elements) {
        Intrinsics.h(elements, "elements");
        return (Set) ArraysKt___ArraysKt.G0(elements, new LinkedHashSet(MapsKt.e(elements.length)));
    }

    public static final Set i(Set set) {
        Intrinsics.h(set, "<this>");
        int size = set.size();
        if (size != 0) {
            return size != 1 ? set : SetsKt.d(set.iterator().next());
        }
        return SetsKt.f();
    }

    public static Set j(Object... elements) {
        Intrinsics.h(elements, "elements");
        return ArraysKt.Q0(elements);
    }
}
