package com.google.common.base;

/* JADX INFO: loaded from: classes4.dex */
public abstract class m {
    private static String a(int i11, int i12, String str) {
        if (i11 < 0) {
            return p.c("%s (%s) must not be negative", str, Integer.valueOf(i11));
        }
        if (i12 >= 0) {
            return p.c("%s (%s) must be less than size (%s)", str, Integer.valueOf(i11), Integer.valueOf(i12));
        }
        throw new IllegalArgumentException("negative size: " + i12);
    }

    private static String b(int i11, int i12, String str) {
        if (i11 < 0) {
            return p.c("%s (%s) must not be negative", str, Integer.valueOf(i11));
        }
        if (i12 >= 0) {
            return p.c("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i11), Integer.valueOf(i12));
        }
        throw new IllegalArgumentException("negative size: " + i12);
    }

    private static String c(int i11, int i12, int i13) {
        if (i11 < 0 || i11 > i13) {
            return b(i11, i13, "start index");
        }
        return (i12 < 0 || i12 > i13) ? b(i12, i13, "end index") : p.c("end index (%s) must not be less than start index (%s)", Integer.valueOf(i12), Integer.valueOf(i11));
    }

    public static void d(boolean z10) {
        if (!z10) {
            throw new IllegalArgumentException();
        }
    }

    public static void e(boolean z10, Object obj) {
        if (!z10) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static void f(boolean z10, String str, int i11) {
        if (!z10) {
            throw new IllegalArgumentException(p.c(str, Integer.valueOf(i11)));
        }
    }

    public static void g(boolean z10, String str, int i11, int i12) {
        if (!z10) {
            throw new IllegalArgumentException(p.c(str, Integer.valueOf(i11), Integer.valueOf(i12)));
        }
    }

    public static void h(boolean z10, String str, long j11) {
        if (!z10) {
            throw new IllegalArgumentException(p.c(str, Long.valueOf(j11)));
        }
    }

    public static void i(boolean z10, String str, long j11, long j12) {
        if (!z10) {
            throw new IllegalArgumentException(p.c(str, Long.valueOf(j11), Long.valueOf(j12)));
        }
    }

    public static void j(boolean z10, String str, Object obj) {
        if (!z10) {
            throw new IllegalArgumentException(p.c(str, obj));
        }
    }

    public static void k(boolean z10, String str, Object obj, Object obj2) {
        if (!z10) {
            throw new IllegalArgumentException(p.c(str, obj, obj2));
        }
    }

    public static void l(boolean z10, String str, Object obj, Object obj2, Object obj3, Object obj4) {
        if (!z10) {
            throw new IllegalArgumentException(p.c(str, obj, obj2, obj3, obj4));
        }
    }

    public static int m(int i11, int i12) {
        return n(i11, i12, "index");
    }

    public static int n(int i11, int i12, String str) {
        if (i11 < 0 || i11 >= i12) {
            throw new IndexOutOfBoundsException(a(i11, i12, str));
        }
        return i11;
    }

    public static Object o(Object obj) {
        obj.getClass();
        return obj;
    }

    public static Object p(Object obj, Object obj2) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(String.valueOf(obj2));
    }

    public static Object q(Object obj, String str, Object obj2) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(p.c(str, obj2));
    }

    public static int r(int i11, int i12) {
        return s(i11, i12, "index");
    }

    public static int s(int i11, int i12, String str) {
        if (i11 < 0 || i11 > i12) {
            throw new IndexOutOfBoundsException(b(i11, i12, str));
        }
        return i11;
    }

    public static void t(int i11, int i12, int i13) {
        if (i11 < 0 || i12 < i11 || i12 > i13) {
            throw new IndexOutOfBoundsException(c(i11, i12, i13));
        }
    }

    public static void u(boolean z10) {
        if (!z10) {
            throw new IllegalStateException();
        }
    }

    public static void v(boolean z10, Object obj) {
        if (!z10) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    public static void w(boolean z10, String str, int i11) {
        if (!z10) {
            throw new IllegalStateException(p.c(str, Integer.valueOf(i11)));
        }
    }

    public static void x(boolean z10, String str, Object obj) {
        if (!z10) {
            throw new IllegalStateException(p.c(str, obj));
        }
    }
}
