package androidx.core.os;

import android.os.Build;
import android.os.Trace;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public abstract class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static long f8174a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Method f8175b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Method f8176c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Method f8177d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Method f8178e;

    static {
        if (Build.VERSION.SDK_INT < 29) {
            try {
                f8174a = Trace.class.getField("TRACE_TAG_APP").getLong(null);
                Class cls = Long.TYPE;
                f8175b = Trace.class.getMethod("isTagEnabled", cls);
                Class cls2 = Integer.TYPE;
                f8176c = Trace.class.getMethod("asyncTraceBegin", cls, String.class, cls2);
                f8177d = Trace.class.getMethod("asyncTraceEnd", cls, String.class, cls2);
                f8178e = Trace.class.getMethod("traceCounter", cls, String.class, cls2);
            } catch (Exception unused) {
            }
        }
    }

    public static void a(String str) {
        Trace.beginSection(str);
    }

    public static void b() {
        Trace.endSection();
    }
}
