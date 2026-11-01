package androidx.compose.runtime;

import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class x1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f4065a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Object f4066b = new Object();

    public static final Object a(Map map, Object obj) {
        List list = (List) map.get(obj);
        if (list == null) {
            return null;
        }
        Object objJ = CollectionsKt.J(list);
        if (!list.isEmpty()) {
            return objJ;
        }
        map.remove(obj);
        return objJ;
    }
}
