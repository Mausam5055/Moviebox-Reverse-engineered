package org.lsposed.hiddenapibypass;

import android.util.Log;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import dalvik.system.VMRuntime;
import java.lang.invoke.MethodHandle;
import java.lang.invoke.MethodHandles;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes7.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Unsafe f71923a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final long f71924b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final long f71925c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final long f71926d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final long f71927e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final long f71928f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final long f71929g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final long f71930h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final long f71931i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final long f71932j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final long f71933k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final long f71934l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final long f71935m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final Set f71936n = new HashSet();

    static {
        try {
            Unsafe unsafe = (Unsafe) Unsafe.class.getDeclaredMethod("getUnsafe", null).invoke(null, null);
            f71923a = unsafe;
            f71924b = unsafe.objectFieldOffset(c.class.getDeclaredField("artMethod"));
            f71925c = unsafe.objectFieldOffset(c.class.getDeclaredField("declaringClass"));
            long jObjectFieldOffset = unsafe.objectFieldOffset(f.class.getDeclaredField("artFieldOrMethod"));
            f71926d = jObjectFieldOffset;
            f71927e = unsafe.objectFieldOffset(g.class.getDeclaredField("info"));
            long jObjectFieldOffset2 = unsafe.objectFieldOffset(b.class.getDeclaredField("methods"));
            f71928f = jObjectFieldOffset2;
            long jObjectFieldOffset3 = unsafe.objectFieldOffset(b.class.getDeclaredField("iFields"));
            f71929g = jObjectFieldOffset3;
            f71930h = unsafe.objectFieldOffset(b.class.getDeclaredField("sFields"));
            f71931i = unsafe.objectFieldOffset(d.class.getDeclaredField("member"));
            Method declaredMethod = h.class.getDeclaredMethod("a", null);
            Method declaredMethod2 = h.class.getDeclaredMethod(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, null);
            declaredMethod.setAccessible(true);
            declaredMethod2.setAccessible(true);
            MethodHandle methodHandleUnreflect = MethodHandles.lookup().unreflect(declaredMethod);
            MethodHandle methodHandleUnreflect2 = MethodHandles.lookup().unreflect(declaredMethod2);
            long j11 = unsafe.getLong(methodHandleUnreflect, jObjectFieldOffset);
            long j12 = unsafe.getLong(methodHandleUnreflect2, jObjectFieldOffset);
            long j13 = unsafe.getLong(h.class, jObjectFieldOffset2);
            long j14 = j12 - j11;
            f71932j = j14;
            f71933k = (j11 - j13) - j14;
            Field declaredField = h.class.getDeclaredField("i");
            Field declaredField2 = h.class.getDeclaredField("j");
            declaredField.setAccessible(true);
            declaredField2.setAccessible(true);
            MethodHandle methodHandleUnreflectGetter = MethodHandles.lookup().unreflectGetter(declaredField);
            MethodHandle methodHandleUnreflectGetter2 = MethodHandles.lookup().unreflectGetter(declaredField2);
            long j15 = unsafe.getLong(methodHandleUnreflectGetter, jObjectFieldOffset);
            long j16 = unsafe.getLong(methodHandleUnreflectGetter2, jObjectFieldOffset);
            long j17 = unsafe.getLong(h.class, jObjectFieldOffset3);
            f71934l = j16 - j15;
            f71935m = j15 - j17;
        } catch (ReflectiveOperationException e11) {
            Log.e("HiddenApiBypass", "Initialize error", e11);
            throw new ExceptionInInitializerError(e11);
        }
    }

    static boolean a(Class[] clsArr, Object[] objArr) {
        if (clsArr.length != objArr.length) {
            return false;
        }
        for (int i11 = 0; i11 < clsArr.length; i11++) {
            if (clsArr[i11].isPrimitive()) {
                Class cls = clsArr[i11];
                if (cls == Integer.TYPE && !(objArr[i11] instanceof Integer)) {
                    return false;
                }
                if (cls == Byte.TYPE && !(objArr[i11] instanceof Byte)) {
                    return false;
                }
                if (cls == Character.TYPE && !(objArr[i11] instanceof Character)) {
                    return false;
                }
                if (cls == Boolean.TYPE && !(objArr[i11] instanceof Boolean)) {
                    return false;
                }
                if (cls == Double.TYPE && !(objArr[i11] instanceof Double)) {
                    return false;
                }
                if (cls == Float.TYPE && !(objArr[i11] instanceof Float)) {
                    return false;
                }
                if (cls == Long.TYPE && !(objArr[i11] instanceof Long)) {
                    return false;
                }
                if (cls == Short.TYPE && !(objArr[i11] instanceof Short)) {
                    return false;
                }
            } else {
                Object obj = objArr[i11];
                if (obj != null && !clsArr[i11].isInstance(obj)) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean b(String... strArr) {
        Set set = f71936n;
        set.addAll(Arrays.asList(strArr));
        String[] strArr2 = new String[((HashSet) set).size()];
        set.toArray(strArr2);
        return d(strArr2);
    }

    public static Object c(Class cls, Object obj, String str, Object... objArr) throws NoSuchMethodException {
        if (obj != null && !cls.isInstance(obj)) {
            throw new IllegalArgumentException("this object is not an instance of the given class");
        }
        Method declaredMethod = e.class.getDeclaredMethod("invoke", Object[].class);
        declaredMethod.setAccessible(true);
        Unsafe unsafe = f71923a;
        long j11 = unsafe.getLong(cls, f71928f);
        if (j11 == 0) {
            throw new NoSuchMethodException("Cannot find matching method");
        }
        int i11 = unsafe.getInt(j11);
        for (int i12 = 0; i12 < i11; i12++) {
            f71923a.putLong(declaredMethod, f71924b, (((long) i12) * f71932j) + j11 + f71933k);
            if (str.equals(declaredMethod.getName()) && a(declaredMethod.getParameterTypes(), objArr)) {
                return declaredMethod.invoke(obj, objArr);
            }
        }
        throw new NoSuchMethodException("Cannot find matching method");
    }

    public static boolean d(String... strArr) {
        try {
            c(VMRuntime.class, c(VMRuntime.class, null, "getRuntime", new Object[0]), "setHiddenApiExemptions", strArr);
            return true;
        } catch (Throwable th2) {
            Log.w("HiddenApiBypass", "setHiddenApiExemptions", th2);
            return false;
        }
    }
}
