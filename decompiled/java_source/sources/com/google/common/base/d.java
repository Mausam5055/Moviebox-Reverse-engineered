package com.google.common.base;

import java.lang.ref.WeakReference;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes4.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map f30232a = new WeakHashMap();

    static Map a(Class cls) {
        Map mapC;
        Map map = f30232a;
        synchronized (map) {
            try {
                mapC = (Map) map.get(cls);
                if (mapC == null) {
                    mapC = c(cls);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return mapC;
    }

    public static Optional b(Class cls, String str) {
        m.o(cls);
        m.o(str);
        return l.b(cls, str);
    }

    private static Map c(Class cls) {
        HashMap map = new HashMap();
        for (Enum r11 : EnumSet.allOf(cls)) {
            map.put(r11.name(), new WeakReference(r11));
        }
        f30232a.put(cls, map);
        return map;
    }
}
