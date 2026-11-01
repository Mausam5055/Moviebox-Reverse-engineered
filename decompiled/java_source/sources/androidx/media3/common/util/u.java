package androidx.media3.common.util;

import android.text.TextUtils;
import android.util.Log;
import java.net.UnknownHostException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class u {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f10461b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f10462c = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f10460a = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static a f10463d = a.f10464a;

    public interface a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f10464a = new C0089a();

        /* JADX INFO: renamed from: androidx.media3.common.util.u$a$a, reason: collision with other inner class name */
        class C0089a implements a {
            C0089a() {
            }

            @Override // androidx.media3.common.util.u.a
            public void a(String str, String str2, Throwable th2) {
                u.a(str2, th2);
            }

            @Override // androidx.media3.common.util.u.a
            public void b(String str, String str2, Throwable th2) {
                u.a(str2, th2);
            }

            @Override // androidx.media3.common.util.u.a
            public void e(String str, String str2, Throwable th2) {
                Log.e(str, u.a(str2, th2));
            }

            @Override // androidx.media3.common.util.u.a
            public void w(String str, String str2, Throwable th2) {
                Log.w(str, u.a(str2, th2));
            }
        }

        void a(String str, String str2, Throwable th2);

        void b(String str, String str2, Throwable th2);

        void e(String str, String str2, Throwable th2);

        void w(String str, String str2, Throwable th2);
    }

    public static String a(String str, Throwable th2) {
        String strE = e(th2);
        if (TextUtils.isEmpty(strE)) {
            return str;
        }
        return str + "\n  " + strE.replace("\n", "\n  ") + '\n';
    }

    public static void b(String str, String str2) {
        synchronized (f10460a) {
            try {
                if (f10461b == 0) {
                    f10463d.a(str, str2, null);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void c(String str, String str2) {
        synchronized (f10460a) {
            try {
                if (f10461b <= 3) {
                    f10463d.e(str, str2, null);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void d(String str, String str2, Throwable th2) {
        synchronized (f10460a) {
            try {
                if (f10461b <= 3) {
                    f10463d.e(str, str2, th2);
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public static String e(Throwable th2) {
        if (th2 == null) {
            return null;
        }
        synchronized (f10460a) {
            try {
                if (g(th2)) {
                    return "UnknownHostException (no network)";
                }
                if (f10462c) {
                    return Log.getStackTraceString(th2).trim().replace("\t", "    ");
                }
                return th2.getMessage();
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public static void f(String str, String str2) {
        synchronized (f10460a) {
            try {
                if (f10461b <= 1) {
                    f10463d.b(str, str2, null);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static boolean g(Throwable th2) {
        while (th2 != null) {
            if (th2 instanceof UnknownHostException) {
                return true;
            }
            th2 = th2.getCause();
        }
        return false;
    }

    public static void h(String str, String str2) {
        synchronized (f10460a) {
            try {
                if (f10461b <= 2) {
                    f10463d.w(str, str2, null);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void i(String str, String str2, Throwable th2) {
        synchronized (f10460a) {
            try {
                if (f10461b <= 2) {
                    f10463d.w(str, str2, th2);
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }
}
