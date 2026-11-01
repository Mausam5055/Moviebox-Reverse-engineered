package com.iab.omid.library.bytedance2.utils;

import android.text.TextUtils;
import android.util.Log;

/* JADX INFO: loaded from: classes4.dex */
public final class d {
    public static void a(String str) {
        if (com.iab.omid.library.bytedance2.a.f33406a.booleanValue()) {
            TextUtils.isEmpty(str);
        }
    }

    public static void a(String str, Exception exc) {
        if ((!com.iab.omid.library.bytedance2.a.f33406a.booleanValue() || TextUtils.isEmpty(str)) && exc == null) {
            return;
        }
        Log.e("OMIDLIB", str, exc);
    }

    public static void b(String str) {
        if (!com.iab.omid.library.bytedance2.a.f33406a.booleanValue() || TextUtils.isEmpty(str)) {
            return;
        }
        Log.w("OMIDLIB", str);
    }
}
