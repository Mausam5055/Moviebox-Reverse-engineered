package d9;

import android.util.SparseArray;
import com.google.android.datatransport.Priority;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static SparseArray f61245a = new SparseArray();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static HashMap f61246b;

    static {
        HashMap map = new HashMap();
        f61246b = map;
        map.put(Priority.DEFAULT, 0);
        f61246b.put(Priority.VERY_LOW, 1);
        f61246b.put(Priority.HIGHEST, 2);
        for (Priority priority : f61246b.keySet()) {
            f61245a.append(((Integer) f61246b.get(priority)).intValue(), priority);
        }
    }

    public static int a(Priority priority) {
        Integer num = (Integer) f61246b.get(priority);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("PriorityMapping is missing known Priority value " + priority);
    }

    public static Priority b(int i11) {
        Priority priority = (Priority) f61245a.get(i11);
        if (priority != null) {
            return priority;
        }
        throw new IllegalArgumentException("Unknown Priority for value " + i11);
    }
}
