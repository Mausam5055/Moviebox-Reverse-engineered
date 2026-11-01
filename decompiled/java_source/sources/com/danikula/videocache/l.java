package com.danikula.videocache;

/* JADX INFO: loaded from: classes3.dex */
public final class l {
    static void a(boolean z10) {
        if (!z10) {
            throw new IllegalArgumentException();
        }
    }

    static void b(boolean z10, String str) {
        if (!z10) {
            throw new IllegalArgumentException(str);
        }
    }

    public static Object c(Object obj) {
        obj.getClass();
        return obj;
    }

    public static Object d(Object obj, String str) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(str);
    }
}
