package com.google.android.gms.internal.measurement;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class zzgl {

    @Nullable
    private static zzgk zza;

    public static synchronized zzgk zza() {
        try {
            if (zza == null) {
                zza(new zzgn());
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return zza;
    }

    private static synchronized void zza(zzgk zzgkVar) {
        if (zza != null) {
            throw new IllegalStateException("init() already called");
        }
        zza = zzgkVar;
    }
}
