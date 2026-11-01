package com.bytedance.adsdk.ugeno.Jcg;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;

/* JADX INFO: loaded from: classes2.dex */
public final class EjP {
    private static String Sj;

    @SuppressLint({"StaticFieldLeak"})
    private static Context TKC;
    private static Resources sP;

    public static int Sj(Context context, String str) {
        return Sj(context, str, "drawable");
    }

    private static int Sj(Context context, String str, String str2) {
        if (sP == null) {
            sP = context.getResources();
        }
        return sP.getIdentifier(str, str2, Sj(context));
    }

    private static String Sj(Context context) {
        if (Sj == null) {
            Sj = context.getPackageName();
        }
        return Sj;
    }

    public static void Sj(String str) {
        Sj = str;
    }
}
