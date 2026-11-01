package kotlin.collections;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes7.dex */
public class u extends t {
    public static Map h() {
        EmptyMap emptyMap = EmptyMap.INSTANCE;
        Intrinsics.f(emptyMap, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.emptyMap, V of kotlin.collections.MapsKt__MapsKt.emptyMap>");
        return emptyMap;
    }

    public static Object i(Map map, Object obj) {
        Intrinsics.h(map, "<this>");
        return s.a(map, obj);
    }

    public static HashMap j(Pair... pairs) {
        Intrinsics.h(pairs, "pairs");
        HashMap map = new HashMap(MapsKt.e(pairs.length));
        r(map, pairs);
        return map;
    }

    public static LinkedHashMap k(Pair... pairs) {
        Intrinsics.h(pairs, "pairs");
        return (LinkedHashMap) v(pairs, new LinkedHashMap(MapsKt.e(pairs.length)));
    }

    public static Map l(Pair... pairs) {
        Intrinsics.h(pairs, "pairs");
        return pairs.length > 0 ? v(pairs, new LinkedHashMap(MapsKt.e(pairs.length))) : MapsKt.h();
    }

    public static Map m(Pair... pairs) {
        Intrinsics.h(pairs, "pairs");
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.e(pairs.length));
        r(linkedHashMap, pairs);
        return linkedHashMap;
    }

    public static final Map n(Map map) {
        Intrinsics.h(map, "<this>");
        int size = map.size();
        if (size != 0) {
            return size != 1 ? map : t.g(map);
        }
        return MapsKt.h();
    }

    public static Map o(Map map, Map map2) {
        Intrinsics.h(map, "<this>");
        Intrinsics.h(map2, "map");
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        linkedHashMap.putAll(map2);
        return linkedHashMap;
    }

    public static Map p(Map map, Pair pair) {
        Intrinsics.h(map, "<this>");
        Intrinsics.h(pair, "pair");
        if (map.isEmpty()) {
            return MapsKt.f(pair);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        linkedHashMap.put(pair.getFirst(), pair.getSecond());
        return linkedHashMap;
    }

    public static final void q(Map map, Iterable pairs) {
        Intrinsics.h(map, "<this>");
        Intrinsics.h(pairs, "pairs");
        Iterator it = pairs.iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            map.put(pair.component1(), pair.component2());
        }
    }

    public static final void r(Map map, Pair[] pairs) {
        Intrinsics.h(map, "<this>");
        Intrinsics.h(pairs, "pairs");
        for (Pair pair : pairs) {
            map.put(pair.component1(), pair.component2());
        }
    }

    public static Map s(Iterable iterable) {
        Intrinsics.h(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            return n(t(iterable, new LinkedHashMap()));
        }
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            return MapsKt.h();
        }
        if (size != 1) {
            return t(iterable, new LinkedHashMap(MapsKt.e(collection.size())));
        }
        return MapsKt.f((Pair) (iterable instanceof List ? ((List) iterable).get(0) : collection.iterator().next()));
    }

    public static final Map t(Iterable iterable, Map destination) {
        Intrinsics.h(iterable, "<this>");
        Intrinsics.h(destination, "destination");
        q(destination, iterable);
        return destination;
    }

    public static Map u(Map map) {
        Intrinsics.h(map, "<this>");
        int size = map.size();
        if (size != 0) {
            return size != 1 ? MapsKt.w(map) : t.g(map);
        }
        return MapsKt.h();
    }

    public static final Map v(Pair[] pairArr, Map destination) {
        Intrinsics.h(pairArr, "<this>");
        Intrinsics.h(destination, "destination");
        r(destination, pairArr);
        return destination;
    }

    public static Map w(Map map) {
        Intrinsics.h(map, "<this>");
        return new LinkedHashMap(map);
    }
}
