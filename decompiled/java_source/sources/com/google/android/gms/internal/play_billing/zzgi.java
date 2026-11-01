package com.google.android.gms.internal.play_billing;

/* JADX INFO: loaded from: classes4.dex */
final class zzgi {
    private static final zzgh zza;
    private static final zzgh zzb;

    static {
        zzgh zzghVar = null;
        try {
            zzghVar = (zzgh) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        zza = zzghVar;
        zzb = new zzgh();
    }

    static zzgh zza() {
        return zza;
    }

    static zzgh zzb() {
        return zzb;
    }
}
