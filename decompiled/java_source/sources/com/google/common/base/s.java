package com.google.common.base;

/* JADX INFO: loaded from: classes4.dex */
public abstract class s {
    public static void a(boolean z10, String str, Object... objArr) {
        if (!z10) {
            throw new VerifyException(p.c(str, objArr));
        }
    }
}
