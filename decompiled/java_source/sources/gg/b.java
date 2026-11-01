package gg;

import android.util.Log;
import java.io.PrintWriter;
import java.io.StringWriter;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f63567a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f63568b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f63569c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f63570d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f63571e;

    private b() {
    }

    private final String a(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("================");
        stringBuffer.append(f63569c);
        stringBuffer.append("(");
        stringBuffer.append(f63568b);
        stringBuffer.append(":");
        stringBuffer.append(f63570d);
        stringBuffer.append(")================:");
        stringBuffer.append(str);
        return stringBuffer.toString();
    }

    private final void f(StackTraceElement[] stackTraceElementArr) {
        StackTraceElement stackTraceElement;
        StackTraceElement stackTraceElement2;
        f63568b = (stackTraceElementArr == null || (stackTraceElement = stackTraceElementArr[1]) == null) ? null : stackTraceElement.getFileName();
        f63569c = (stackTraceElementArr == null || (stackTraceElement2 = stackTraceElementArr[1]) == null) ? null : stackTraceElement2.getMethodName();
        StackTraceElement stackTraceElement3 = stackTraceElementArr != null ? stackTraceElementArr[1] : null;
        Intrinsics.e(stackTraceElement3);
        f63570d = stackTraceElement3.getLineNumber();
    }

    public final void b(String str) {
        if (f63571e) {
            f(new Throwable().getStackTrace());
            Intrinsics.e(a(str));
        }
    }

    public final void c(String str) {
        f(new Throwable().getStackTrace());
        String str2 = f63568b;
        String strA = a(str);
        Intrinsics.e(strA);
        Log.e(str2, strA);
    }

    public final void d(String tag, String str) {
        Intrinsics.h(tag, "tag");
        Log.e(tag, String.valueOf(str));
    }

    public final void e(Throwable th2) {
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        if (th2 != null) {
            try {
                th2.printStackTrace(printWriter);
                Unit unit = Unit.f67061a;
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    CloseableKt.a(printWriter, th3);
                    throw th4;
                }
            }
        }
        CloseableKt.a(printWriter, null);
        String string = stringWriter.toString();
        Intrinsics.g(string, "sw.toString()");
        c(string);
    }

    public final void g(String str) {
        if (f63571e) {
            f(new Throwable().getStackTrace());
            Intrinsics.e(a(str));
        }
    }

    public final void h(boolean z10) {
        f63571e = z10;
    }

    public final void i(String str) {
        if (f63571e) {
            f(new Throwable().getStackTrace());
            String str2 = f63568b;
            String strA = a(str);
            Intrinsics.e(strA);
            Log.w(str2, strA);
        }
    }
}
