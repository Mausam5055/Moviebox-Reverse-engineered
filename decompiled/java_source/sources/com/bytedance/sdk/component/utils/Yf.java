package com.bytedance.sdk.component.utils;

import android.content.Context;
import android.text.TextUtils;
import com.transsion.gslb.Utils;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class Yf {
    public static final Class<?>[] Sj;
    private static final HashMap<Class<?>, Class<?>> TKC;
    private static Map<String, Method> sP = new HashMap();

    static {
        HashMap<Class<?>, Class<?>> map = new HashMap<>();
        TKC = map;
        map.put(Boolean.TYPE, Boolean.class);
        map.put(Byte.TYPE, Byte.class);
        map.put(Character.TYPE, Character.class);
        map.put(Short.TYPE, Short.class);
        map.put(Integer.TYPE, Integer.class);
        map.put(Long.TYPE, Long.class);
        map.put(Double.TYPE, Double.class);
        map.put(Float.TYPE, Float.class);
        map.put(Void.TYPE, Void.class);
        Sj = new Class[0];
    }

    public static int Sj(Context context) {
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    public static int Sj(Context context, float f11) {
        return (int) ((f11 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static Object Sj(Object obj, String str, Object... objArr) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        return Sj(obj, str, objArr, Sj(objArr));
    }

    public static Object Sj(Object obj, String str, Object[] objArr, Class<?>[] clsArr) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        Method methodSj = Sj(obj.getClass(), str, clsArr);
        if (methodSj != null) {
            return methodSj.invoke(obj, objArr);
        }
        throw new NoSuchMethodException(str);
    }

    public static Method Sj(Class<?> cls, String str, Class<?>... clsArr) {
        Method declaredMethod;
        String strSP = sP(cls, str, clsArr);
        synchronized (sP) {
            declaredMethod = sP.get(strSP);
        }
        if (declaredMethod != null) {
            if (!declaredMethod.isAccessible()) {
                declaredMethod.setAccessible(true);
            }
            return declaredMethod;
        }
        while (cls != null) {
            try {
                declaredMethod = cls.getDeclaredMethod(str, clsArr);
            } catch (NoSuchMethodException unused) {
            }
            if (declaredMethod == null) {
                try {
                    for (Method method : cls.getDeclaredMethods()) {
                        if (method != null && TextUtils.equals(method.getName(), str)) {
                            Class<?>[] parameterTypes = method.getParameterTypes();
                            if (clsArr != null && parameterTypes != null && clsArr.length == parameterTypes.length) {
                                boolean z10 = true;
                                for (int i11 = 0; i11 < clsArr.length; i11++) {
                                    if (!Sj(clsArr[i11], parameterTypes[i11])) {
                                        z10 = false;
                                    }
                                }
                                if (z10) {
                                    declaredMethod = method;
                                }
                            }
                        }
                    }
                } catch (Throwable unused2) {
                }
            }
            if (declaredMethod != null) {
                declaredMethod.setAccessible(true);
                synchronized (sP) {
                    sP.put(strSP, declaredMethod);
                }
                return declaredMethod;
            }
            cls = cls.getSuperclass();
        }
        return null;
    }

    public static boolean Sj(Class<?> cls, Class<?> cls2) {
        if (cls2 == null) {
            return false;
        }
        if (cls == null) {
            return !cls2.isPrimitive();
        }
        if (cls.isPrimitive() && !cls2.isPrimitive()) {
            cls = TKC.get(cls);
        }
        if (cls2.isPrimitive() && !cls.isPrimitive()) {
            cls2 = TKC.get(cls2);
        }
        return cls2.isAssignableFrom(cls);
    }

    public static Class<?>[] Sj(Object... objArr) {
        if (objArr == null || objArr.length == 0) {
            return Sj;
        }
        Class<?>[] clsArr = new Class[objArr.length];
        for (int i11 = 0; i11 < objArr.length; i11++) {
            Object obj = objArr[i11];
            clsArr[i11] = obj == null ? null : obj.getClass();
        }
        return clsArr;
    }

    private static String sP(Class<?> cls, String str, Class<?>... clsArr) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(cls.toString());
        sb2.append(Utils.SEPARATOR);
        sb2.append(str);
        sb2.append(Utils.SEPARATOR);
        sb2.append(cls.getClassLoader() != null ? Integer.valueOf(cls.getClassLoader().hashCode()) : "");
        if (clsArr == null || clsArr.length <= 0) {
            sb2.append(Void.class.toString());
        } else {
            for (Class<?> cls2 : clsArr) {
                sb2.append(cls2.toString());
                sb2.append(Utils.SEPARATOR);
            }
        }
        return sb2.toString();
    }
}
