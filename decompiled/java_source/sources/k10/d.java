package k10;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static Map f66570a = new HashMap();

    public static c a() {
        return null;
    }

    public static c b() {
        return null;
    }

    public static c c(Class cls) {
        android.support.v4.media.session.c.a(f66570a.get(cls));
        return null;
    }

    public static boolean d() {
        return false;
    }

    public static boolean e() {
        return false;
    }

    public static boolean f(Class cls) {
        if (cls == null) {
            return false;
        }
        if (f66570a.containsKey(cls)) {
            return true;
        }
        Class superclass = cls;
        do {
            if (cls != superclass && f66570a.containsKey(superclass)) {
                Map map = f66570a;
                map.put(cls, map.get(superclass));
                return true;
            }
            for (Class<?> cls2 : superclass.getInterfaces()) {
                if (f66570a.containsKey(cls2)) {
                    Map map2 = f66570a;
                    map2.put(cls, map2.get(cls2));
                    return true;
                }
            }
            superclass = superclass.getSuperclass();
            if (superclass == null) {
                break;
            }
        } while (superclass != Object.class);
        return false;
    }
}
