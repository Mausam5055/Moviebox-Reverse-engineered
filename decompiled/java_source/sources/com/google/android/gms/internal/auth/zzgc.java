package com.google.android.gms.internal.auth;

/* JADX INFO: loaded from: classes4.dex */
final class zzgc {
    private static final zzgb zza;
    private static final zzgb zzb;

    static {
        zzgb zzgbVar = null;
        try {
            zzgbVar = (zzgb) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        zza = zzgbVar;
        zzb = new zzgb();
    }

    static zzgb zza() {
        return zza;
    }

    static zzgb zzb() {
        return zzb;
    }
}
