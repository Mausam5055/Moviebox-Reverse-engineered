package com.google.android.gms.internal.auth;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.StrictMode;
import androidx.annotation.Nullable;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class zzdd implements zzcl {
    private static final Map zza = new androidx.collection.a();
    private final SharedPreferences zzb;
    private final SharedPreferences.OnSharedPreferenceChangeListener zzc;

    @Nullable
    static zzdd zza(Context context, String str, Runnable runnable) {
        zzdd zzddVar;
        if (zzcc.zzb()) {
            throw null;
        }
        synchronized (zzdd.class) {
            try {
                zzddVar = (zzdd) zza.get(null);
                if (zzddVar == null) {
                    StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
                    try {
                        throw null;
                    } catch (Throwable th2) {
                        StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
        return zzddVar;
    }

    static synchronized void zzc() {
        Map map = zza;
        Iterator it = map.values().iterator();
        if (it.hasNext()) {
            SharedPreferences sharedPreferences = ((zzdd) it.next()).zzb;
            throw null;
        }
        map.clear();
    }

    @Override // com.google.android.gms.internal.auth.zzcl
    @Nullable
    public final Object zzb(String str) {
        throw null;
    }
}
