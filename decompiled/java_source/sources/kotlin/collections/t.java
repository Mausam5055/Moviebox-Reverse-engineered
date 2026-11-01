package kotlin.collections;

import java.util.Collections;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.builders.MapBuilder;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes7.dex */
public class t extends s {
    public static Map b(Map builder) {
        Intrinsics.h(builder, "builder");
        return ((MapBuilder) builder).build();
    }

    public static Map c() {
        return new MapBuilder();
    }

    public static Map d(int i11) {
        return new MapBuilder(i11);
    }

    public static int e(int i11) {
        if (i11 < 0) {
            return i11;
        }
        if (i11 < 3) {
            return i11 + 1;
        }
        if (i11 < 1073741824) {
            return (int) ((i11 / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }

    public static Map f(Pair pair) {
        Intrinsics.h(pair, "pair");
        Map mapSingletonMap = Collections.singletonMap(pair.getFirst(), pair.getSecond());
        Intrinsics.g(mapSingletonMap, "singletonMap(...)");
        return mapSingletonMap;
    }

    public static final Map g(Map map) {
        Intrinsics.h(map, "<this>");
        Map.Entry entry = (Map.Entry) map.entrySet().iterator().next();
        Map mapSingletonMap = Collections.singletonMap(entry.getKey(), entry.getValue());
        Intrinsics.g(mapSingletonMap, "with(...)");
        return mapSingletonMap;
    }
}
