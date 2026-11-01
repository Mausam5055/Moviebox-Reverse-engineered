package com.google.common.base;

import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes4.dex */
abstract class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final k f30244a = c();

    private static final class b implements k {
        private b() {
        }
    }

    static String a(String str) {
        if (e(str)) {
            return null;
        }
        return str;
    }

    static Optional b(Class cls, String str) {
        WeakReference weakReference = (WeakReference) d.a(cls).get(str);
        return weakReference == null ? Optional.absent() : Optional.fromNullable((Enum) cls.cast(weakReference.get()));
    }

    private static k c() {
        return new b();
    }

    static String d(String str) {
        return str == null ? "" : str;
    }

    static boolean e(String str) {
        return str == null || str.isEmpty();
    }
}
