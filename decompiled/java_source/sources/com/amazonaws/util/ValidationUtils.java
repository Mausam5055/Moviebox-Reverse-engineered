package com.amazonaws.util;

/* JADX INFO: loaded from: classes2.dex */
public class ValidationUtils {
    public static void a(Object obj, String str) {
        if (obj == null) {
            throw new IllegalArgumentException(str);
        }
    }
}
