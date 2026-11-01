package org.mvel2.util;

import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Collection;
import java.util.Map;
import org.mvel2.ParserContext;
import org.mvel2.compiler.PropertyVerifier;

/* JADX INFO: loaded from: classes7.dex */
public class n {
    public static boolean a(Object obj, Object obj2) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof String) {
            return ((String) obj).contains(String.valueOf(obj2));
        }
        if (obj instanceof Collection) {
            return ((Collection) obj).contains(obj2);
        }
        if (obj instanceof Map) {
            return ((Map) obj).containsKey(obj2);
        }
        if (obj.getClass().isArray()) {
            for (Object obj3 : (Object[]) obj) {
                if (obj2 == null && obj3 == null) {
                    return true;
                }
                if (obj3 != null && obj3.equals(obj2)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static Member b(Class cls, String str) {
        for (Field field : cls.getFields()) {
            if (str.equals(field.getName())) {
                if ((field.getModifiers() & 1) == 0) {
                    break;
                }
                return field;
            }
        }
        return e(cls, str);
    }

    public static Member c(Class cls, String str) {
        try {
            Field field = cls.getField(str);
            if (field != null && Modifier.isPublic(field.getModifiers())) {
                return field;
            }
        } catch (NoSuchFieldException unused) {
        } catch (NullPointerException unused2) {
            return null;
        }
        return i(cls, str);
    }

    public static Member d(Class cls, String str, Class cls2) {
        for (Field field : cls.getFields()) {
            if (str.equals(field.getName()) && (cls2 == null || org.mvel2.b.a(field.getType(), cls2))) {
                return field;
            }
        }
        return j(cls, str, cls2);
    }

    public static Method e(Class cls, String str) {
        String str2 = "get" + str;
        String str3 = "is" + str;
        String strC = p.c(str);
        String strB = p.b(str);
        Method method = null;
        if (Collection.class.isAssignableFrom(cls) && "isEmpty".equals(strC)) {
            try {
                return Collection.class.getMethod("isEmpty", null);
            } catch (NoSuchMethodException unused) {
            }
        }
        for (Method method2 : cls.getMethods()) {
            if ((method2.getModifiers() & 1) != 0 && (method2.getModifiers() & 8) == 0 && method2.getParameterTypes().length == 0 && ((strB.equals(method2.getName()) || str.equals(method2.getName()) || (((strC.equals(method2.getName()) || str3.equals(method2.getName())) && method2.getReturnType() == Boolean.TYPE) || str2.equals(method2.getName()))) && (method == null || method.getReturnType().isAssignableFrom(method2.getReturnType())))) {
                method = method2;
            }
        }
        return method;
    }

    public static String f() {
        return System.getProperty(System.getProperty("mvel.java.version") == null ? "java.version" : "mvel.java.version");
    }

    public static Object g(Class cls) {
        if (cls == Integer.TYPE) {
            return 0;
        }
        if (cls == Boolean.TYPE) {
            return Boolean.FALSE;
        }
        if (cls == Character.TYPE) {
            return (char) 0;
        }
        if (cls == Double.TYPE) {
            return Double.valueOf(0.0d);
        }
        if (cls == Long.TYPE) {
            return 0L;
        }
        if (cls == Float.TYPE) {
            return Float.valueOf(0.0f);
        }
        if (cls == Short.TYPE) {
            return (short) 0;
        }
        return cls == Byte.TYPE ? (byte) 0 : 0;
    }

    public static Class h(Class cls, String str, ParserContext parserContext) {
        return new PropertyVerifier(str, parserContext, cls).analyze();
    }

    public static Method i(Class cls, String str) {
        String strE = p.e(str);
        for (Method method : cls.getMethods()) {
            if ((method.getModifiers() & 1) != 0 && method.getParameterTypes().length == 1 && strE.equals(method.getName())) {
                return method;
            }
        }
        return null;
    }

    public static Method j(Class cls, String str, Class cls2) {
        String str2 = "set" + str;
        String strE = p.e(str);
        for (Method method : cls.getMethods()) {
            if ((method.getModifiers() & 1) != 0 && method.getParameterTypes().length == 1 && ((strE.equals(method.getName()) || str2.equals(method.getName())) && (cls2 == null || org.mvel2.b.a(method.getParameterTypes()[0], cls2)))) {
                return method;
            }
        }
        return null;
    }

    public static boolean k(Object obj) {
        if (obj == null) {
            return true;
        }
        if (obj instanceof Object[]) {
            Object[] objArr = (Object[]) obj;
            if (objArr.length != 0) {
                return objArr.length == 1 && k(objArr[0]);
            }
            return true;
        }
        if ("".equals(String.valueOf(obj)) || "null".equals(String.valueOf(obj))) {
            return true;
        }
        if ((obj instanceof Collection) && ((Collection) obj).size() == 0) {
            return true;
        }
        return (obj instanceof Map) && ((Map) obj).size() == 0;
    }
}
