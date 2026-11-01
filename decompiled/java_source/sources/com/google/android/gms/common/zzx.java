package com.google.android.gms.common;

import android.util.Log;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes3.dex */
class zzx {
    private static final zzx zze = new zzx(true, 3, 1, null, null);
    final boolean zza;
    final String zzb;
    final Throwable zzc;
    final int zzd;

    private zzx(boolean z10, int i11, int i12, String str, Throwable th2) {
        this.zza = z10;
        this.zzd = i11;
        this.zzb = str;
        this.zzc = th2;
    }

    @Deprecated
    static zzx zzb() {
        return zze;
    }

    static zzx zzc(@NonNull String str) {
        return new zzx(false, 1, 5, str, null);
    }

    static zzx zzd(@NonNull String str, @NonNull Throwable th2) {
        return new zzx(false, 1, 5, str, th2);
    }

    static zzx zzf(int i11) {
        return new zzx(true, i11, 1, null, null);
    }

    static zzx zzg(int i11, int i12, @NonNull String str, Throwable th2) {
        return new zzx(false, i11, i12, str, th2);
    }

    String zza() {
        return this.zzb;
    }

    final void zze() {
        if (this.zza || !Log.isLoggable("GoogleCertificatesRslt", 3)) {
            return;
        }
        if (this.zzc != null) {
            zza();
        } else {
            zza();
        }
    }
}
