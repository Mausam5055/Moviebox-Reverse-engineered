package androidx.datastore.preferences.core;

import java.util.Collections;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    public static final Set a(Set set) {
        Intrinsics.h(set, "set");
        Set setUnmodifiableSet = Collections.unmodifiableSet(CollectionsKt.W0(set));
        Intrinsics.g(setUnmodifiableSet, "unmodifiableSet(set.toSet())");
        return setUnmodifiableSet;
    }

    public static final Map b(Map map) {
        Intrinsics.h(map, "map");
        Map mapUnmodifiableMap = Collections.unmodifiableMap(map);
        Intrinsics.g(mapUnmodifiableMap, "unmodifiableMap(map)");
        return mapUnmodifiableMap;
    }
}
