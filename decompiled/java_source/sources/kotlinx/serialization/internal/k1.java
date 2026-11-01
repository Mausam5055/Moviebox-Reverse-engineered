package kotlinx.serialization.internal;

import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.serialization.PolymorphicSerializer;

/* JADX INFO: loaded from: classes7.dex */
public abstract class k1 {
    private static final Object a(Class cls) {
        try {
            Field declaredField = cls.getDeclaredField("Companion");
            declaredField.setAccessible(true);
            return declaredField.get(null);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final kotlinx.serialization.b b(KClass kClass) {
        Intrinsics.h(kClass, "<this>");
        return d(kClass, new kotlinx.serialization.b[0]);
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0081 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:42:0x0082  */
    /* JADX WARN: Code duplicated, block: B:44:0x0088  */
    /* JADX WARN: Code duplicated, block: B:53:? A[RETURN, SYNTHETIC] */
    public static final kotlinx.serialization.b c(Class cls, kotlinx.serialization.b... args) throws IllegalAccessException, InvocationTargetException {
        kotlinx.serialization.b bVar;
        Field field;
        kotlinx.serialization.b bVarG;
        Intrinsics.h(cls, "<this>");
        Intrinsics.h(args, "args");
        if (cls.isEnum() && j(cls)) {
            return e(cls);
        }
        if (cls.isInterface() && (bVarG = g(cls)) != null) {
            return bVarG;
        }
        kotlinx.serialization.b bVarH = h(cls, (kotlinx.serialization.b[]) Arrays.copyOf(args, args.length));
        if (bVarH != null) {
            return bVarH;
        }
        kotlinx.serialization.b bVarF = f(cls);
        if (bVarF != null) {
            return bVarF;
        }
        try {
            Class<?>[] declaredClasses = cls.getDeclaredClasses();
            Intrinsics.g(declaredClasses, "declaredClasses");
            int length = declaredClasses.length;
            int i11 = 0;
            Class<?> cls2 = null;
            boolean z10 = false;
            while (true) {
                if (i11 >= length) {
                    if (!z10) {
                    }
                    if (bVar != null) {
                        return bVar;
                    }
                    if (k(cls)) {
                        return new PolymorphicSerializer(JvmClassMappingKt.c(cls));
                    }
                    return null;
                }
                Class<?> cls3 = declaredClasses[i11];
                if (Intrinsics.c(cls3.getSimpleName(), "$serializer")) {
                    if (!z10) {
                        z10 = true;
                        cls2 = cls3;
                    }
                }
                i11++;
                cls2 = null;
                break;
            }
            Object obj = (cls2 == null || (field = cls2.getField("INSTANCE")) == null) ? null : field.get(null);
            bVar = obj instanceof kotlinx.serialization.b ? (kotlinx.serialization.b) obj : null;
        } catch (NoSuchFieldException unused) {
        }
        if (bVar != null) {
            return bVar;
        }
        if (k(cls)) {
            return new PolymorphicSerializer(JvmClassMappingKt.c(cls));
        }
        return null;
    }

    public static final kotlinx.serialization.b d(KClass kClass, kotlinx.serialization.b... args) {
        Intrinsics.h(kClass, "<this>");
        Intrinsics.h(args, "args");
        return c(JvmClassMappingKt.a(kClass), (kotlinx.serialization.b[]) Arrays.copyOf(args, args.length));
    }

    private static final kotlinx.serialization.b e(Class cls) {
        Object[] enumConstants = cls.getEnumConstants();
        String canonicalName = cls.getCanonicalName();
        Intrinsics.g(canonicalName, "canonicalName");
        Intrinsics.f(enumConstants, "null cannot be cast to non-null type kotlin.Array<out kotlin.Enum<*>>");
        return new EnumSerializer(canonicalName, (Enum[]) enumConstants);
    }

    private static final kotlinx.serialization.b f(Class cls) throws IllegalAccessException, InvocationTargetException {
        Field[] declaredFields = cls.getDeclaredFields();
        Intrinsics.g(declaredFields, "declaredFields");
        int length = declaredFields.length;
        int i11 = 0;
        Field field = null;
        int i12 = 0;
        boolean z10 = false;
        while (true) {
            if (i12 >= length) {
                if (!z10) {
                    break;
                }
                break;
            }
            Field field2 = declaredFields[i12];
            if (Intrinsics.c(field2.getName(), "INSTANCE") && Intrinsics.c(field2.getType(), cls) && Modifier.isStatic(field2.getModifiers())) {
                if (!z10) {
                    z10 = true;
                    field = field2;
                }
            }
            i12++;
            field = null;
            break;
        }
        if (field == null) {
            return null;
        }
        Object obj = field.get(null);
        Method[] methods = cls.getMethods();
        Intrinsics.g(methods, "methods");
        int length2 = methods.length;
        Method method = null;
        boolean z11 = false;
        while (true) {
            if (i11 >= length2) {
                if (!z11) {
                    break;
                }
                break;
            }
            Method method2 = methods[i11];
            if (Intrinsics.c(method2.getName(), "serializer")) {
                Class<?>[] parameterTypes = method2.getParameterTypes();
                Intrinsics.g(parameterTypes, "it.parameterTypes");
                if (parameterTypes.length == 0 && Intrinsics.c(method2.getReturnType(), kotlinx.serialization.b.class)) {
                    if (!z11) {
                        method = method2;
                        z11 = true;
                    }
                }
            }
            i11++;
            method = null;
            break;
        }
        if (method == null) {
            return null;
        }
        Object objInvoke = method.invoke(obj, null);
        if (objInvoke instanceof kotlinx.serialization.b) {
            return (kotlinx.serialization.b) objInvoke;
        }
        return null;
    }

    private static final kotlinx.serialization.b g(Class cls) {
        kotlinx.serialization.f fVar = (kotlinx.serialization.f) cls.getAnnotation(kotlinx.serialization.f.class);
        if (fVar == null || Intrinsics.c(Reflection.b(fVar.with()), Reflection.b(PolymorphicSerializer.class))) {
            return new PolymorphicSerializer(JvmClassMappingKt.c(cls));
        }
        return null;
    }

    private static final kotlinx.serialization.b h(Class cls, kotlinx.serialization.b... bVarArr) throws IllegalAccessException, InvocationTargetException {
        Class[] clsArr;
        Object objA = a(cls);
        if (objA == null) {
            return null;
        }
        try {
            if (bVarArr.length == 0) {
                clsArr = new Class[0];
            } else {
                int length = bVarArr.length;
                Class[] clsArr2 = new Class[length];
                for (int i11 = 0; i11 < length; i11++) {
                    clsArr2[i11] = kotlinx.serialization.b.class;
                }
                clsArr = clsArr2;
            }
            Object objInvoke = objA.getClass().getDeclaredMethod("serializer", (Class[]) Arrays.copyOf(clsArr, clsArr.length)).invoke(objA, Arrays.copyOf(bVarArr, bVarArr.length));
            if (objInvoke instanceof kotlinx.serialization.b) {
                return (kotlinx.serialization.b) objInvoke;
            }
            return null;
        } catch (NoSuchMethodException unused) {
            return null;
        } catch (InvocationTargetException e11) {
            Throwable cause = e11.getCause();
            if (cause == null) {
                throw e11;
            }
            String message = cause.getMessage();
            if (message == null) {
                message = e11.getMessage();
            }
            throw new InvocationTargetException(cause, message);
        }
    }

    public static final boolean i(Object obj, KClass kclass) {
        Intrinsics.h(obj, "<this>");
        Intrinsics.h(kclass, "kclass");
        return JvmClassMappingKt.b(kclass).isInstance(obj);
    }

    private static final boolean j(Class cls) {
        return cls.getAnnotation(kotlinx.serialization.f.class) == null && cls.getAnnotation(kotlinx.serialization.c.class) == null;
    }

    private static final boolean k(Class cls) {
        if (cls.getAnnotation(kotlinx.serialization.c.class) != null) {
            return true;
        }
        kotlinx.serialization.f fVar = (kotlinx.serialization.f) cls.getAnnotation(kotlinx.serialization.f.class);
        return fVar != null && Intrinsics.c(Reflection.b(fVar.with()), Reflection.b(PolymorphicSerializer.class));
    }

    public static final boolean l(KClass rootClass) {
        Intrinsics.h(rootClass, "rootClass");
        return JvmClassMappingKt.a(rootClass).isArray();
    }

    public static final Void m(KClass kClass) {
        Intrinsics.h(kClass, "<this>");
        l1.d(kClass);
        throw new KotlinNothingValueException();
    }

    public static final Object[] n(ArrayList arrayList, KClass eClass) {
        Intrinsics.h(arrayList, "<this>");
        Intrinsics.h(eClass, "eClass");
        Object objNewInstance = Array.newInstance((Class<?>) JvmClassMappingKt.a(eClass), arrayList.size());
        Intrinsics.f(objNewInstance, "null cannot be cast to non-null type kotlin.Array<E of kotlinx.serialization.internal.PlatformKt.toNativeArrayImpl>");
        Object[] array = arrayList.toArray((Object[]) objNewInstance);
        Intrinsics.g(array, "toArray(java.lang.reflec….java, size) as Array<E>)");
        return array;
    }
}
