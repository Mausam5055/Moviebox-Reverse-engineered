package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.common.base.m;

/* JADX INFO: loaded from: classes4.dex */
public final class zzcu {
    private static final ThreadLocal<Boolean> zza = new zzct();

    public static SharedPreferences zza(Context context, String str, int i11, zzcm zzcmVar) {
        zzcp zzcpVar = zzcf.zza().zza(str, zzcmVar, zzcj.SHARED_PREFS_TYPE).equals("") ? new zzcp() : null;
        if (zzcpVar != null) {
            return zzcpVar;
        }
        ThreadLocal<Boolean> threadLocal = zza;
        m.d(threadLocal.get().booleanValue());
        threadLocal.set(Boolean.FALSE);
        try {
            return context.getSharedPreferences(str, 0);
        } finally {
            zza.set(Boolean.TRUE);
        }
    }
}
