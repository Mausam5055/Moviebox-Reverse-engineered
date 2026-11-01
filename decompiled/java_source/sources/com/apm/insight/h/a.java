package com.apm.insight.h;

import android.util.Log;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map<Class<?>, Class<?>> f19546a;

    /* JADX INFO: renamed from: com.apm.insight.h.a$a, reason: collision with other inner class name */
    public static class C0178a<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Class<? extends T> f19547a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final T f19548b;
    }

    static {
        HashMap map = new HashMap();
        f19546a = map;
        Class cls = Boolean.TYPE;
        map.put(Boolean.class, cls);
        Class cls2 = Byte.TYPE;
        map.put(Byte.class, cls2);
        Class cls3 = Character.TYPE;
        map.put(Character.class, cls3);
        Class cls4 = Short.TYPE;
        map.put(Short.class, cls4);
        Class cls5 = Integer.TYPE;
        map.put(Integer.class, cls5);
        Class cls6 = Float.TYPE;
        map.put(Float.class, cls6);
        Class cls7 = Long.TYPE;
        map.put(Long.class, cls7);
        Class cls8 = Double.TYPE;
        map.put(Double.class, cls8);
        map.put(cls, cls);
        map.put(cls2, cls2);
        map.put(cls3, cls3);
        map.put(cls4, cls4);
        map.put(cls5, cls5);
        map.put(cls6, cls6);
        map.put(cls7, cls7);
        map.put(cls8, cls8);
    }

    public static <T> T a(String str, String str2, Object... objArr) {
        Method method;
        Class<?>[] parameterTypes;
        try {
            Class<?> cls = Class.forName(str);
            Class<?>[] clsArr = new Class[4];
            for (int i11 = 0; i11 < 4; i11++) {
                Object obj = objArr[i11];
                clsArr[i11] = (obj == null || !(obj instanceof C0178a)) ? obj == null ? null : obj.getClass() : ((C0178a) obj).f19547a;
            }
            while (true) {
                Method[] declaredMethods = cls.getDeclaredMethods();
                int length = declaredMethods.length;
                int i12 = 0;
                while (true) {
                    if (i12 >= length) {
                        method = null;
                        break;
                    }
                    method = declaredMethods[i12];
                    if (method.getName().equals(str2) && (parameterTypes = method.getParameterTypes()) != null && parameterTypes.length == 4) {
                        int i13 = 0;
                        while (true) {
                            if (i13 >= parameterTypes.length) {
                                break;
                            }
                            if (!parameterTypes[i13].isAssignableFrom(clsArr[i13])) {
                                Map<Class<?>, Class<?>> map = f19546a;
                                if (!map.containsKey(parameterTypes[i13]) || !map.get(parameterTypes[i13]).equals(map.get(clsArr[i13]))) {
                                    break;
                                    break;
                                }
                            }
                            i13++;
                        }
                    }
                    i12++;
                }
                if (method != null) {
                    method.setAccessible(true);
                    Object[] objArr2 = new Object[4];
                    for (int i14 = 0; i14 < 4; i14++) {
                        Object obj2 = objArr[i14];
                        if (obj2 == null || !(obj2 instanceof C0178a)) {
                            objArr2[i14] = obj2;
                        } else {
                            objArr2[i14] = ((C0178a) obj2).f19548b;
                        }
                    }
                    return (T) method.invoke(null, objArr2);
                }
                if (cls.getSuperclass() == null) {
                    throw new NoSuchMethodException();
                }
                cls = cls.getSuperclass();
            }
        } catch (Exception e11) {
            Log.w("JavaCalls", "Meet exception when call Method '" + str2 + "' in " + str, e11);
            return null;
        }
    }
}
