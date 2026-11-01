package com.tencent.tinker.loader.shareutil;

import android.content.Context;
import com.cloud.tmc.kernel.utils.ProcessUtils;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class ShareReflectUtil {
    public static void expandFieldArray(Object obj, String str, Object[] objArr) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        Field fieldFindField = findField(obj, str);
        Object[] objArr2 = (Object[]) fieldFindField.get(obj);
        Object[] objArr3 = (Object[]) Array.newInstance(objArr2.getClass().getComponentType(), objArr2.length + objArr.length);
        System.arraycopy(objArr, 0, objArr3, 0, objArr.length);
        System.arraycopy(objArr2, 0, objArr3, objArr.length, objArr2.length);
        fieldFindField.set(obj, objArr3);
    }

    public static Constructor<?> findConstructor(Class<?> cls, Class<?>... clsArr) throws NoSuchMethodException {
        for (Class<?> superclass = cls; superclass != null; superclass = superclass.getSuperclass()) {
            try {
                Constructor<?> declaredConstructor = superclass.getDeclaredConstructor(clsArr);
                if (!declaredConstructor.isAccessible()) {
                    declaredConstructor.setAccessible(true);
                }
                return declaredConstructor;
            } catch (NoSuchMethodException unused) {
            }
        }
        throw new NoSuchMethodException("Constructor with parameters " + Arrays.asList(clsArr) + " not found in " + cls);
    }

    public static Constructor<?> findConstructor(Object obj, Class<?>... clsArr) throws NoSuchMethodException {
        return findConstructor(obj.getClass(), clsArr);
    }

    public static Field findField(Class<?> cls, String str) throws NoSuchFieldException {
        for (Class<?> superclass = cls; superclass != null; superclass = superclass.getSuperclass()) {
            try {
                Field declaredField = superclass.getDeclaredField(str);
                if (!declaredField.isAccessible()) {
                    declaredField.setAccessible(true);
                }
                return declaredField;
            } catch (NoSuchFieldException unused) {
            }
        }
        throw new NoSuchFieldException("Field " + str + " not found in " + cls);
    }

    public static Field findField(Object obj, String str) throws NoSuchFieldException {
        for (Class<?> superclass = obj.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
            try {
                Field declaredField = superclass.getDeclaredField(str);
                if (!declaredField.isAccessible()) {
                    declaredField.setAccessible(true);
                }
                return declaredField;
            } catch (NoSuchFieldException unused) {
            }
        }
        throw new NoSuchFieldException("Field " + str + " not found in " + obj.getClass());
    }

    public static Method findMethod(Class<?> cls, String str, Class<?>... clsArr) throws NoSuchMethodException {
        while (cls != null) {
            try {
                Method declaredMethod = cls.getDeclaredMethod(str, clsArr);
                if (!declaredMethod.isAccessible()) {
                    declaredMethod.setAccessible(true);
                }
                return declaredMethod;
            } catch (NoSuchMethodException unused) {
                cls = cls.getSuperclass();
            }
        }
        throw new NoSuchMethodException("Method " + str + " with parameters " + Arrays.asList(clsArr) + " not found in " + cls);
    }

    public static Method findMethod(Object obj, String str, Class<?>... clsArr) throws NoSuchMethodException {
        for (Class<?> superclass = obj.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
            try {
                Method declaredMethod = superclass.getDeclaredMethod(str, clsArr);
                if (!declaredMethod.isAccessible()) {
                    declaredMethod.setAccessible(true);
                }
                return declaredMethod;
            } catch (NoSuchMethodException unused) {
            }
        }
        throw new NoSuchMethodException("Method " + str + " with parameters " + Arrays.asList(clsArr) + " not found in " + obj.getClass());
    }

    public static Object getActivityThread(Context context, Class<?> cls) {
        if (cls == null) {
            try {
                cls = Class.forName(ProcessUtils.ACTIVITY_THREAD);
            } catch (Throwable unused) {
                return null;
            }
        }
        Method method = cls.getMethod(ProcessUtils.CURRENT_ACTIVITY_THREAD, null);
        method.setAccessible(true);
        Object objInvoke = method.invoke(null, null);
        if (objInvoke != null || context == null) {
            return objInvoke;
        }
        Field field = context.getClass().getField("mLoadedApk");
        field.setAccessible(true);
        Object obj = field.get(context);
        Field declaredField = obj.getClass().getDeclaredField("mActivityThread");
        declaredField.setAccessible(true);
        return declaredField.get(obj);
    }

    public static int getValueOfStaticIntField(Class<?> cls, String str, int i11) {
        try {
            return findField(cls, str).getInt(null);
        } catch (Throwable unused) {
            return i11;
        }
    }

    public static void reduceFieldArray(Object obj, String str, int i11) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        if (i11 <= 0) {
            return;
        }
        Field fieldFindField = findField(obj, str);
        Object[] objArr = (Object[]) fieldFindField.get(obj);
        int length = objArr.length - i11;
        if (length <= 0) {
            return;
        }
        Object[] objArr2 = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), length);
        System.arraycopy(objArr, i11, objArr2, 0, length);
        fieldFindField.set(obj, objArr2);
    }
}
