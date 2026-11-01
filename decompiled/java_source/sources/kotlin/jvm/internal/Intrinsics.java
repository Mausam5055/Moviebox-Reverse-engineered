package kotlin.jvm.internal;

import java.util.Arrays;
import kotlin.KotlinNullPointerException;
import kotlin.SinceKotlin;
import kotlin.UninitializedPropertyAccessException;

/* JADX INFO: loaded from: classes7.dex */
public class Intrinsics {

    @SinceKotlin
    public static class Kotlin {
        private Kotlin() {
        }
    }

    private Intrinsics() {
    }

    public static boolean a(Double d11, double d12) {
        return d11 != null && d11.doubleValue() == d12;
    }

    public static boolean b(Float f11, float f12) {
        return f11 != null && f11.floatValue() == f12;
    }

    public static boolean c(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    public static void d(Object obj, String str) {
        if (obj != null) {
            return;
        }
        throw ((IllegalStateException) o(new IllegalStateException(str + " must not be null")));
    }

    public static void e(Object obj) {
        if (obj == null) {
            r();
        }
    }

    public static void f(Object obj, String str) {
        if (obj == null) {
            s(str);
        }
    }

    public static void g(Object obj, String str) {
        if (obj != null) {
            return;
        }
        throw ((NullPointerException) o(new NullPointerException(str + " must not be null")));
    }

    public static void h(Object obj, String str) {
        if (obj == null) {
            v(str);
        }
    }

    public static void i(Object obj, String str) {
        if (obj == null) {
            u(str);
        }
    }

    public static int j(int i11, int i12) {
        if (i11 < i12) {
            return -1;
        }
        return i11 == i12 ? 0 : 1;
    }

    public static int k(long j11, long j12) {
        if (j11 < j12) {
            return -1;
        }
        return j11 == j12 ? 0 : 1;
    }

    private static String l(String str) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        String name = Intrinsics.class.getName();
        int i11 = 0;
        while (!stackTrace[i11].getClassName().equals(name)) {
            i11++;
        }
        while (stackTrace[i11].getClassName().equals(name)) {
            i11++;
        }
        StackTraceElement stackTraceElement = stackTrace[i11];
        return "Parameter specified as non-null is null: method " + stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName() + ", parameter " + str;
    }

    public static void m() {
        w();
    }

    public static void n(int i11, String str) {
        w();
    }

    private static Throwable o(Throwable th2) {
        return p(th2, Intrinsics.class.getName());
    }

    static Throwable p(Throwable th2, String str) {
        StackTraceElement[] stackTrace = th2.getStackTrace();
        int length = stackTrace.length;
        int i11 = -1;
        for (int i12 = 0; i12 < length; i12++) {
            if (str.equals(stackTrace[i12].getClassName())) {
                i11 = i12;
            }
        }
        th2.setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, i11 + 1, length));
        return th2;
    }

    public static String q(String str, Object obj) {
        return str + obj;
    }

    public static void r() {
        throw ((NullPointerException) o(new NullPointerException()));
    }

    public static void s(String str) {
        throw ((NullPointerException) o(new NullPointerException(str)));
    }

    public static void t() {
        throw ((KotlinNullPointerException) o(new KotlinNullPointerException()));
    }

    private static void u(String str) {
        throw ((IllegalArgumentException) o(new IllegalArgumentException(l(str))));
    }

    private static void v(String str) {
        throw ((NullPointerException) o(new NullPointerException(l(str))));
    }

    public static void w() {
        x("This function has a reified type parameter and thus can only be inlined at compilation time, not called directly.");
    }

    public static void x(String str) {
        throw new UnsupportedOperationException(str);
    }

    public static void y(String str) {
        throw ((UninitializedPropertyAccessException) o(new UninitializedPropertyAccessException(str)));
    }

    public static void z(String str) {
        y("lateinit property " + str + " has not been initialized");
    }
}
