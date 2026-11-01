package com.bytedance.sdk.component.utils;

import android.content.Context;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes2.dex */
public class TzV {
    public static boolean Dq(Context context) {
        if (context == null) {
            return false;
        }
        int iTKC = TKC(context);
        return iTKC == 2 || iTKC == 3 || iTKC == 4 || iTKC == 5 || iTKC == 6;
    }

    public static boolean EjP(Context context) {
        return TKC(context) == 4;
    }

    public static boolean HiB(Context context) {
        return TKC(context) == 5;
    }

    public static String Jcg(Context context) {
        int iTKC = TKC(context);
        if (iTKC == 2) {
            return "2g";
        }
        if (iTKC == 3) {
            return "3g";
        }
        if (iTKC == 4) {
            return "wifi";
        }
        if (iTKC != 5) {
            return iTKC != 6 ? "mobile" : "5g";
        }
        return "4g";
    }

    public static boolean Sj(Context context) {
        return TKC(context) != 0;
    }

    public static boolean Sj(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith("http://") || str.startsWith("https://");
    }

    public static int TKC(Context context) {
        return wE.Sj(context, 60000L);
    }

    public static int sP(Context context) {
        int iTKC = TKC(context);
        if (iTKC == 1) {
            return 0;
        }
        if (iTKC == 4) {
            return 1;
        }
        if (iTKC == 5) {
            return 4;
        }
        if (iTKC != 6) {
            return iTKC;
        }
        return 6;
    }

    public static boolean vS(Context context) {
        return TKC(context) == 6;
    }
}
