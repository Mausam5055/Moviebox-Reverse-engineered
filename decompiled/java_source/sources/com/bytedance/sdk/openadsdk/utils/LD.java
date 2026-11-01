package com.bytedance.sdk.openadsdk.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class LD {
    private static final Map<String, LD> Sj = new HashMap();
    private SharedPreferences sP;

    private LD(String str, Context context) {
        if (context != null) {
            this.sP = context.getSharedPreferences(str, 0);
        }
    }

    public static LD Sj(String str, Context context) {
        if (TextUtils.isEmpty(str)) {
            str = "tt_ad_sdk_sp";
        }
        Map<String, LD> map = Sj;
        LD ld2 = map.get(str);
        if (ld2 == null) {
            synchronized (LD.class) {
                if (ld2 == null) {
                    try {
                        ld2 = new LD(str, com.bytedance.sdk.openadsdk.core.dNu.Sj());
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                map.put(str, ld2);
            }
        }
        return ld2;
    }

    public String Sj(String str, String str2) {
        try {
            return this.sP.getString(str, str2);
        } catch (Throwable unused) {
            return str2;
        }
    }

    public void Sj(String str) {
        try {
            this.sP.edit().remove(str).apply();
        } catch (Throwable unused) {
        }
    }
}
