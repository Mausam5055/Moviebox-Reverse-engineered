package com.android.volley;

import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f19255a = "Volley";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f19256b = Log.isLoggable("Volley", 2);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f19257c = l.class.getName();

    static class a {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final boolean f19258c = l.f19256b;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List f19259a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f19260b = false;

        /* JADX INFO: renamed from: com.android.volley.l$a$a, reason: collision with other inner class name */
        private static class C0175a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final String f19261a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final long f19262b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final long f19263c;

            public C0175a(String str, long j11, long j12) {
                this.f19261a = str;
                this.f19262b = j11;
                this.f19263c = j12;
            }
        }

        a() {
        }

        private long c() {
            if (this.f19259a.size() == 0) {
                return 0L;
            }
            long j11 = ((C0175a) this.f19259a.get(0)).f19263c;
            List list = this.f19259a;
            return ((C0175a) list.get(list.size() - 1)).f19263c - j11;
        }

        public synchronized void a(String str, long j11) {
            if (this.f19260b) {
                throw new IllegalStateException("Marker added to finished log");
            }
            this.f19259a.add(new C0175a(str, j11, SystemClock.elapsedRealtime()));
        }

        public synchronized void b(String str) {
            this.f19260b = true;
            long jC = c();
            if (jC <= 0) {
                return;
            }
            long j11 = ((C0175a) this.f19259a.get(0)).f19263c;
            l.b("(%-4d ms) %s", Long.valueOf(jC), str);
            for (C0175a c0175a : this.f19259a) {
                long j12 = c0175a.f19263c;
                l.b("(+%-4d) [%2d] %s", Long.valueOf(j12 - j11), Long.valueOf(c0175a.f19262b), c0175a.f19261a);
                j11 = j12;
            }
        }

        protected void finalize() {
            if (this.f19260b) {
                return;
            }
            b("Request on the loose");
            l.c("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
        }
    }

    private static String a(String str, Object... objArr) {
        String str2;
        if (objArr != null) {
            str = String.format(Locale.US, str, objArr);
        }
        StackTraceElement[] stackTrace = new Throwable().fillInStackTrace().getStackTrace();
        for (int i11 = 2; i11 < stackTrace.length; i11++) {
            if (!stackTrace[i11].getClassName().equals(f19257c)) {
                String className = stackTrace[i11].getClassName();
                String strSubstring = className.substring(className.lastIndexOf(46) + 1);
                str2 = strSubstring.substring(strSubstring.lastIndexOf(36) + 1) + "." + stackTrace[i11].getMethodName();
                return String.format(Locale.US, "[%d] %s: %s", Long.valueOf(Thread.currentThread().getId()), str2, str);
            }
        }
        str2 = "<unknown>";
        return String.format(Locale.US, "[%d] %s: %s", Long.valueOf(Thread.currentThread().getId()), str2, str);
    }

    public static void b(String str, Object... objArr) {
        a(str, objArr);
    }

    public static void c(String str, Object... objArr) {
        Log.e(f19255a, a(str, objArr));
    }

    public static void d(Throwable th2, String str, Object... objArr) {
        Log.e(f19255a, a(str, objArr), th2);
    }

    public static void e(String str, Object... objArr) {
        if (f19256b) {
            Log.v(f19255a, a(str, objArr));
        }
    }

    public static void f(String str, Object... objArr) {
        Log.wtf(f19255a, a(str, objArr));
    }
}
