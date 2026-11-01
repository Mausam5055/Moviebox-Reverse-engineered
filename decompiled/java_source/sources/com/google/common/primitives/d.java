package com.google.common.primitives;

import com.google.common.base.m;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map f30926a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Map f30927b;

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap(16);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(16);
        a(linkedHashMap, linkedHashMap2, Boolean.TYPE, Boolean.class);
        a(linkedHashMap, linkedHashMap2, Byte.TYPE, Byte.class);
        a(linkedHashMap, linkedHashMap2, Character.TYPE, Character.class);
        a(linkedHashMap, linkedHashMap2, Double.TYPE, Double.class);
        a(linkedHashMap, linkedHashMap2, Float.TYPE, Float.class);
        a(linkedHashMap, linkedHashMap2, Integer.TYPE, Integer.class);
        a(linkedHashMap, linkedHashMap2, Long.TYPE, Long.class);
        a(linkedHashMap, linkedHashMap2, Short.TYPE, Short.class);
        a(linkedHashMap, linkedHashMap2, Void.TYPE, Void.class);
        f30926a = Collections.unmodifiableMap(linkedHashMap);
        f30927b = Collections.unmodifiableMap(linkedHashMap2);
    }

    private static void a(Map map, Map map2, Class cls, Class cls2) {
        map.put(cls, cls2);
        map2.put(cls2, cls);
    }

    public static Set b() {
        return f30927b.keySet();
    }

    public static Class c(Class cls) {
        m.o(cls);
        Class cls2 = (Class) f30927b.get(cls);
        return cls2 == null ? cls : cls2;
    }

    public static Class d(Class cls) {
        m.o(cls);
        Class cls2 = (Class) f30926a.get(cls);
        return cls2 == null ? cls : cls2;
    }
}
