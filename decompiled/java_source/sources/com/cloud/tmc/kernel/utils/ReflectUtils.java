package com.cloud.tmc.kernel.utils;

import android.text.TextUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public class ReflectUtils {
    private static final Map<String, Method> sMethods = new ConcurrentHashMap();

    private static boolean equalsParamTypes(Class<?>[] clsArr, String[] strArr) {
        for (int i11 = 0; i11 < clsArr.length; i11++) {
            if (!TextUtils.equals(clsArr[i11].getName(), strArr != null ? strArr[i11] : null)) {
                return false;
            }
        }
        return true;
    }

    public static Method findMethod(Class cls, String str, String[] strArr) {
        for (Method method : cls.getMethods()) {
            if (method.getName().equals(str)) {
                if (method.getParameterTypes().length == (strArr != null ? strArr.length : 0) && equalsParamTypes(method.getParameterTypes(), strArr)) {
                    return method;
                }
            }
        }
        return null;
    }

    public static Object getDefaultValue(Class<?> cls) {
        if (cls == Boolean.TYPE || cls == Boolean.class) {
            return Boolean.FALSE;
        }
        if (cls == Void.TYPE) {
            return null;
        }
        return (cls.isPrimitive() || Number.class.isAssignableFrom(cls)) ? 0 : null;
    }

    public static Object getField(Object obj, String str, Object obj2) throws IllegalAccessException, NoSuchFieldException, ClassNotFoundException {
        Field declaredField = (obj instanceof Class ? (Class) obj : Class.forName(String.valueOf(obj))).getDeclaredField(str);
        declaredField.setAccessible(true);
        return declaredField.get(obj2);
    }

    public static Method getMethod(Class<?> cls, String str, Class[] clsArr) throws NoSuchMethodException {
        Method declaredMethod;
        String strConcat = cls.getName().concat(".").concat(str);
        if (clsArr != null && clsArr.length > 0) {
            String strConcat2 = strConcat.concat("(");
            for (Class cls2 : clsArr) {
                strConcat2 = strConcat2.concat(cls2.getName()).concat(",");
            }
            strConcat = strConcat2.substring(0, strConcat2.length() - 1).concat(")");
        }
        try {
            Map<String, Method> map = sMethods;
            declaredMethod = map.containsKey(strConcat) ? map.get(strConcat) : null;
        } catch (Throwable unused) {
        }
        if (declaredMethod == null) {
            declaredMethod = clsArr == null ? cls.getDeclaredMethod(str, null) : cls.getDeclaredMethod(str, clsArr);
            declaredMethod.setAccessible(true);
            sMethods.put(strConcat, declaredMethod);
        }
        return declaredMethod;
    }

    public static Object invokeMethod(Class cls, Object obj, String str, Class[] clsArr, Object[] objArr) throws Exception {
        Method method = getMethod(cls, str, clsArr);
        return objArr == null ? method.invoke(obj, null) : method.invoke(obj, objArr);
    }

    public static Object invokeMethod(Class cls, String str) throws Exception {
        return invokeMethod(cls, (Object) null, str, (Class[]) null, (Object[]) null);
    }

    public static Object invokeMethod(Class cls, String str, Class[] clsArr, Object[] objArr) throws Exception {
        return invokeMethod(cls, (Object) null, str, clsArr, objArr);
    }

    public static Object invokeMethod(Object obj, String str) throws Exception {
        return invokeMethod(obj.getClass(), obj, str, (Class[]) null, (Object[]) null);
    }

    public static Object invokeMethod(String str, Object obj, String str2, Class[] clsArr, Object[] objArr) throws Exception {
        return invokeMethod(Class.forName(str), obj, str2, clsArr, objArr);
    }

    public static Object invokeMethod(String str, String str2) throws Exception {
        return invokeMethod(Class.forName(str), (Object) null, str2, (Class[]) null, (Object[]) null);
    }

    public static Object invokeStaticMethod(Class cls, String str, Class[] clsArr, Object[] objArr) throws Exception {
        return invokeMethod(cls, (Object) null, str, clsArr, objArr);
    }

    public static Object invokeStaticMethod(String str, String str2, Class[] clsArr, Object[] objArr) throws Exception {
        return invokeMethod(Class.forName(str), (Object) null, str2, clsArr, objArr);
    }
}
