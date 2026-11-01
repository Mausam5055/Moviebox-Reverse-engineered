package f4;

import android.os.Build;
import android.os.Trace;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static long f62336a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Method f62337b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Method f62338c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Method f62339d;

    public static void a(String str, int i11) {
        if (Build.VERSION.SDK_INT >= 29) {
            c.a(j(str), i11);
        } else {
            b(j(str), i11);
        }
    }

    private static void b(String str, int i11) {
        try {
            if (f62338c == null) {
                f62338c = Trace.class.getMethod("asyncTraceBegin", Long.TYPE, String.class, Integer.TYPE);
            }
            f62338c.invoke(null, Long.valueOf(f62336a), str, Integer.valueOf(i11));
        } catch (Exception e11) {
            g("asyncTraceBegin", e11);
        }
    }

    public static void c(String str) {
        b.a(j(str));
    }

    public static void d(String str, int i11) {
        if (Build.VERSION.SDK_INT >= 29) {
            c.b(j(str), i11);
        } else {
            e(j(str), i11);
        }
    }

    private static void e(String str, int i11) {
        try {
            if (f62339d == null) {
                f62339d = Trace.class.getMethod("asyncTraceEnd", Long.TYPE, String.class, Integer.TYPE);
            }
            f62339d.invoke(null, Long.valueOf(f62336a), str, Integer.valueOf(i11));
        } catch (Exception e11) {
            g("asyncTraceEnd", e11);
        }
    }

    public static void f() {
        b.b();
    }

    private static void g(String str, Exception exc) {
        if (exc instanceof InvocationTargetException) {
            Throwable cause = exc.getCause();
            if (!(cause instanceof RuntimeException)) {
                throw new RuntimeException(cause);
            }
            throw ((RuntimeException) cause);
        }
        Log.v("Trace", "Unable to call " + str + " via reflection", exc);
    }

    public static boolean h() {
        return Build.VERSION.SDK_INT >= 29 ? c.c() : i();
    }

    private static boolean i() {
        try {
            if (f62337b == null) {
                f62336a = Trace.class.getField("TRACE_TAG_APP").getLong(null);
                f62337b = Trace.class.getMethod("isTagEnabled", Long.TYPE);
            }
            return ((Boolean) f62337b.invoke(null, Long.valueOf(f62336a))).booleanValue();
        } catch (Exception e11) {
            g("isTagEnabled", e11);
            return false;
        }
    }

    private static String j(String str) {
        return str.length() <= 127 ? str : str.substring(0, 127);
    }
}
