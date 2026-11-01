package androidx.core.util;

import android.text.TextUtils;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public abstract class i {
    public static void a(boolean z10) {
        if (!z10) {
            throw new IllegalArgumentException();
        }
    }

    public static void b(boolean z10, Object obj) {
        if (!z10) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static int c(int i11, int i12, int i13, String str) {
        if (i11 < i12) {
            throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%d, %d] (too low)", str, Integer.valueOf(i12), Integer.valueOf(i13)));
        }
        if (i11 <= i13) {
            return i11;
        }
        throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%d, %d] (too high)", str, Integer.valueOf(i12), Integer.valueOf(i13)));
    }

    public static int d(int i11) {
        if (i11 >= 0) {
            return i11;
        }
        throw new IllegalArgumentException();
    }

    public static int e(int i11, String str) {
        if (i11 >= 0) {
            return i11;
        }
        throw new IllegalArgumentException(str);
    }

    public static int f(int i11, int i12) {
        if ((i11 & i12) == i11) {
            return i11;
        }
        throw new IllegalArgumentException("Requested flags 0x" + Integer.toHexString(i11) + ", but only 0x" + Integer.toHexString(i12) + " are allowed");
    }

    public static Object g(Object obj) {
        obj.getClass();
        return obj;
    }

    public static Object h(Object obj, Object obj2) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(String.valueOf(obj2));
    }

    public static void i(boolean z10, String str) {
        if (!z10) {
            throw new IllegalStateException(str);
        }
    }

    public static CharSequence j(CharSequence charSequence, Object obj) {
        if (TextUtils.isEmpty(charSequence)) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
        return charSequence;
    }
}
