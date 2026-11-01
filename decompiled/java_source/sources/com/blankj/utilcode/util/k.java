package com.blankj.utilcode.util;

import android.os.Build;

/* JADX INFO: loaded from: classes2.dex */
public abstract class k {
    public static String a() {
        String str = Build.MODEL;
        return str != null ? str.trim().replaceAll("\\s*", "") : "";
    }
}
