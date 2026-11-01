package com.bytedance.sdk.component.vS.Sj.sP;

import android.content.Context;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import com.bytedance.sdk.component.vS.Sj.Dq;
import com.bytedance.sdk.component.vS.Sj.Sj.HiB;

/* JADX INFO: loaded from: classes2.dex */
public class Sj {
    public static boolean EjP() {
        HiB hiBEjP = Dq.Jcg().EjP();
        return (hiBEjP == null || TextUtils.isEmpty(hiBEjP.HiB())) ? false : true;
    }

    public static boolean HiB() {
        HiB hiBEjP = Dq.Jcg().EjP();
        return (hiBEjP == null || TextUtils.isEmpty(hiBEjP.TKC())) ? false : true;
    }

    public static long Sj(int i11, Context context) {
        return sP(i11, context);
    }

    public static boolean Sj() {
        HiB hiBEjP = Dq.Jcg().EjP();
        return (hiBEjP == null || TextUtils.isEmpty(hiBEjP.Sj())) ? false : true;
    }

    public static boolean TKC() {
        HiB hiBEjP = Dq.Jcg().EjP();
        return (hiBEjP == null || TextUtils.isEmpty(hiBEjP.EjP())) ? false : true;
    }

    private static long sP(int i11, Context context) {
        if (context == null) {
            return i11;
        }
        Runtime runtime = Runtime.getRuntime();
        long jFreeMemory = runtime.freeMemory() / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
        long jMaxMemory = (runtime.maxMemory() / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) - (runtime.totalMemory() / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED);
        if (jMaxMemory <= 0) {
            if (jFreeMemory <= 2) {
                return 1L;
            }
            return jFreeMemory <= 10 ? Math.min(i11, 10) : Math.min((jFreeMemory / 2) * 10, i11);
        }
        long j11 = ((jFreeMemory + jMaxMemory) - 10) / 2;
        if (j11 <= 2) {
            return 1L;
        }
        return j11 <= 10 ? Math.min(i11, 10) : Math.min(j11 * 10, i11);
    }

    public static boolean sP() {
        HiB hiBEjP = Dq.Jcg().EjP();
        return (hiBEjP == null || TextUtils.isEmpty(hiBEjP.sP())) ? false : true;
    }

    public static boolean vS() {
        HiB hiBEjP = Dq.Jcg().EjP();
        return (hiBEjP == null || TextUtils.isEmpty(hiBEjP.vS())) ? false : true;
    }
}
