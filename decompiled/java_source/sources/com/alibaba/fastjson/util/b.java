package com.alibaba.fastjson.util;

import com.alibaba.fastjson.asm.TypeCollector;
import java.io.IOException;
import java.io.InputStream;
import java.lang.annotation.Annotation;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f18195a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final boolean f18196b;

    static {
        String property = System.getProperty("java.vm.name");
        f18195a = property;
        f18196b = e(property);
    }

    public static boolean a(String str) {
        for (int i11 = 0; i11 < str.length(); i11++) {
            char cCharAt = str.charAt(i11);
            if (cCharAt < 1 || cCharAt > 127 || cCharAt == '.') {
                return false;
            }
        }
        return true;
    }

    public static String b(Class cls) {
        if (cls.isPrimitive()) {
            return d(cls);
        }
        if (cls.isArray()) {
            return "[" + b(cls.getComponentType());
        }
        return "L" + g(cls) + ";";
    }

    public static String c(Method method) {
        Class<?>[] parameterTypes = method.getParameterTypes();
        StringBuilder sb2 = new StringBuilder((parameterTypes.length + 1) << 4);
        sb2.append('(');
        for (Class<?> cls : parameterTypes) {
            sb2.append(b(cls));
        }
        sb2.append(')');
        sb2.append(b(method.getReturnType()));
        return sb2.toString();
    }

    public static String d(Class cls) {
        if (Integer.TYPE == cls) {
            return "I";
        }
        if (Void.TYPE == cls) {
            return "V";
        }
        if (Boolean.TYPE == cls) {
            return "Z";
        }
        if (Character.TYPE == cls) {
            return "C";
        }
        if (Byte.TYPE == cls) {
            return "B";
        }
        if (Short.TYPE == cls) {
            return "S";
        }
        if (Float.TYPE == cls) {
            return "F";
        }
        if (Long.TYPE == cls) {
            return "J";
        }
        if (Double.TYPE == cls) {
            return "D";
        }
        throw new IllegalStateException("Type: " + cls.getCanonicalName() + " is not a primitive type");
    }

    public static boolean e(String str) {
        if (str == null) {
            return false;
        }
        String lowerCase = str.toLowerCase();
        return lowerCase.contains("dalvik") || lowerCase.contains("lemur");
    }

    public static String[] f(AccessibleObject accessibleObject) {
        Class<?>[] parameterTypes;
        Class<?> declaringClass;
        Annotation[][] annotationArrD0;
        String name;
        String strName;
        if (f18196b) {
            return new String[0];
        }
        if (accessibleObject instanceof Method) {
            Method method = (Method) accessibleObject;
            parameterTypes = method.getParameterTypes();
            name = method.getName();
            declaringClass = method.getDeclaringClass();
            annotationArrD0 = TypeUtils.e0(method);
        } else {
            Constructor constructor = (Constructor) accessibleObject;
            parameterTypes = constructor.getParameterTypes();
            declaringClass = constructor.getDeclaringClass();
            annotationArrD0 = TypeUtils.d0(constructor);
            name = "<init>";
        }
        if (parameterTypes.length == 0) {
            return new String[0];
        }
        ClassLoader classLoader = declaringClass.getClassLoader();
        if (classLoader == null) {
            classLoader = ClassLoader.getSystemClassLoader();
        }
        InputStream resourceAsStream = classLoader.getResourceAsStream(declaringClass.getName().replace('.', '/') + ".class");
        if (resourceAsStream == null) {
            return new String[0];
        }
        try {
            com.alibaba.fastjson.asm.b bVar = new com.alibaba.fastjson.asm.b(resourceAsStream, false);
            TypeCollector typeCollector = new TypeCollector(name, parameterTypes);
            bVar.a(typeCollector);
            String[] strArrB = typeCollector.b();
            for (int i11 = 0; i11 < strArrB.length; i11++) {
                Annotation[] annotationArr = annotationArrD0[i11];
                if (annotationArr != null) {
                    for (Annotation annotation : annotationArr) {
                        if ((annotation instanceof x4.b) && (strName = ((x4.b) annotation).name()) != null && strName.length() > 0) {
                            strArrB[i11] = strName;
                        }
                    }
                }
            }
            return strArrB;
        } catch (IOException unused) {
            return new String[0];
        } finally {
            f.a(resourceAsStream);
        }
    }

    public static String g(Class cls) {
        if (!cls.isArray()) {
            return !cls.isPrimitive() ? cls.getName().replace('.', '/') : d(cls);
        }
        return "[" + b(cls.getComponentType());
    }
}
