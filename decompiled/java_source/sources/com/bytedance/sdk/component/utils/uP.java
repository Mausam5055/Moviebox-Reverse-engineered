package com.bytedance.sdk.component.utils;

import android.os.Build;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes2.dex */
public class uP {
    private static volatile String Sj;

    public static String Sj() {
        if (!TextUtils.isEmpty(Sj)) {
            return Sj;
        }
        String str = Build.MODEL;
        Sj = str;
        return str;
    }
}
