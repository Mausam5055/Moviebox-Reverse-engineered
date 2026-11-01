package w8;

import android.os.Build;
import android.util.Log;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a {
    private static String a(String str, String str2) {
        String str3 = str + str2;
        return str3.length() > 23 ? str3.substring(0, 23) : str3;
    }

    public static void b(String str, String str2, Object obj) {
        if (Log.isLoggable(e(str), 3)) {
            String.format(str2, obj);
        }
    }

    public static void c(String str, String str2, Object... objArr) {
        if (Log.isLoggable(e(str), 3)) {
            String.format(str2, objArr);
        }
    }

    public static void d(String str, String str2, Throwable th2) {
        String strE = e(str);
        if (Log.isLoggable(strE, 6)) {
            Log.e(strE, str2, th2);
        }
    }

    private static String e(String str) {
        if (Build.VERSION.SDK_INT < 26) {
            return a("TRuntime.", str);
        }
        return "TRuntime." + str;
    }

    public static void f(String str, String str2, Object obj) {
        if (Log.isLoggable(e(str), 4)) {
            String.format(str2, obj);
        }
    }

    public static void g(String str, String str2, Object obj) {
        String strE = e(str);
        if (Log.isLoggable(strE, 5)) {
            Log.w(strE, String.format(str2, obj));
        }
    }
}
