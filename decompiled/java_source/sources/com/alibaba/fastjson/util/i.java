package com.alibaba.fastjson.util;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes2.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f18260a;

    static {
        try {
            Class.forName("java.sql.Time");
            f18260a = true;
        } catch (Throwable unused) {
            f18260a = false;
        }
    }

    public static Object a(c cVar, Object obj, Object obj2) {
        if (f18260a) {
            return cVar.apply(obj, obj2);
        }
        return null;
    }

    public static Object b(e eVar, Object obj) {
        if (f18260a) {
            return eVar.apply(obj);
        }
        return null;
    }

    public static Object c(Callable callable) {
        if (!f18260a) {
            return null;
        }
        try {
            return callable.call();
        } catch (Exception e11) {
            throw new RuntimeException(e11);
        }
    }
}
