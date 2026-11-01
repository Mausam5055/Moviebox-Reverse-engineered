package com.bytedance.sdk.component.utils;

import android.text.TextUtils;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public class ley {
    public static Class<?> Sj(String str) {
        try {
            try {
                try {
                    return Class.forName(str, true, Sj());
                } catch (ClassNotFoundException unused) {
                    return Class.forName(str);
                }
            } catch (ClassNotFoundException unused2) {
                return null;
            }
        } catch (ClassNotFoundException unused3) {
            return Class.forName(str, true, ley.class.getClassLoader());
        }
    }

    private static ClassLoader Sj() {
        ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
        return contextClassLoader == null ? ley.class.getClassLoader() : contextClassLoader;
    }

    public static Method Sj(String str, String str2, Class<?>... clsArr) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        try {
            Class<?> clsSj = Sj(str);
            if (clsSj != null) {
                return clsSj.getMethod(str2, clsArr);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }
}
