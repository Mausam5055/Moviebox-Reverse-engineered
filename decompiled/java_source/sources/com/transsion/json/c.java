package com.transsion.json;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final ThreadLocal f46038d = new ThreadLocal();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class f46039a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c f46040b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Map f46041c;

    protected c(Class cls) {
        this.f46039a = cls;
        this.f46040b = a(cls.getSuperclass());
        g();
    }

    public static c a(Class cls) {
        ThreadLocal threadLocal = f46038d;
        if (threadLocal.get() == null) {
            threadLocal.set(new HashMap());
        }
        if (cls == null) {
            return null;
        }
        if (!((Map) threadLocal.get()).containsKey(cls)) {
            ((Map) threadLocal.get()).put(cls, new c(cls));
        }
        return (c) ((Map) threadLocal.get()).get(cls);
    }

    private void d(Map map, Map map2) {
        for (String str : map2.keySet()) {
            if (!map.containsKey(str)) {
                map.put(str, map2.get(str));
            }
        }
    }

    private void g() {
        this.f46041c = new TreeMap();
        for (Field field : this.f46039a.getDeclaredFields()) {
            if (!Modifier.isStatic(field.getModifiers()) && !this.f46041c.containsKey(field.getName())) {
                this.f46041c.put(field.getName(), new d(field, this));
            }
        }
        for (Method method : this.f46039a.getDeclaredMethods()) {
            if (!Modifier.isStatic(method.getModifiers())) {
                int length = method.getParameterTypes().length;
                String name = method.getName();
                if (name.length() > 3 || name.startsWith("is")) {
                    if (length == 0) {
                        if (name.startsWith("get")) {
                            String strI = i(name.substring(3));
                            if (!this.f46041c.containsKey(strI)) {
                                this.f46041c.put(strI, new d(strI, this));
                            }
                            ((d) this.f46041c.get(strI)).f(method);
                        } else if (name.startsWith("is")) {
                            String strI2 = i(name.substring(2));
                            if (!this.f46041c.containsKey(strI2)) {
                                this.f46041c.put(strI2, new d(strI2, this));
                            }
                            ((d) this.f46041c.get(strI2)).f(method);
                        }
                    } else if (length == 1 && name.startsWith("set")) {
                        String strI3 = i(name.substring(3));
                        if (!this.f46041c.containsKey(strI3)) {
                            this.f46041c.put(strI3, new d(strI3, this));
                        }
                        ((d) this.f46041c.get(strI3)).d(method);
                    }
                }
            }
        }
        Iterator it = this.f46041c.values().iterator();
        while (it.hasNext()) {
            if (((d) it.next()).m()) {
                it.remove();
            }
        }
    }

    private String i(String str) {
        if (str.length() < 2) {
            return str.toLowerCase();
        }
        if (Character.isUpperCase(str.charAt(0)) && Character.isUpperCase(str.charAt(1))) {
            return str;
        }
        return Character.toLowerCase(str.charAt(0)) + str.substring(1);
    }

    protected Field b(String str) {
        try {
            return this.f46039a.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            return null;
        }
    }

    public Collection c() {
        TreeMap treeMap = new TreeMap(this.f46041c);
        for (c cVar = this.f46040b; cVar != null; cVar = cVar.f46040b) {
            d(treeMap, cVar.f46041c);
        }
        return treeMap.values();
    }

    public c e() {
        return this.f46040b;
    }

    public d f(String str) {
        for (c cVar = this; cVar != null; cVar = cVar.f46040b) {
            d dVar = (d) cVar.f46041c.get(str);
            if (dVar != null) {
                return dVar;
            }
        }
        return null;
    }

    public boolean h(String str) {
        c cVar;
        return this.f46041c.containsKey(str) || ((cVar = this.f46040b) != null && cVar.h(str));
    }
}
